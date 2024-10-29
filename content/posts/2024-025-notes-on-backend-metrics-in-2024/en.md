---
title = "Notes on backend metrics in 2024"
tags = ["practice", "development", "backend", "feeds-fun"]
published_at = "2024-10-28T12:00:00+00:00"
seo_description = "Some notes on collecting metrics on the backend in 2024."
seo_image = "./feeds-fun-metrics-schema.png"
---

/// brigid-images
src = "./feeds-fun-metrics-schema.png"
caption = "How metrics are collected in Feeds Fun. Loki is added to demonstrate the possible next step in infrastructure development."
///

Once in 2-3 years I start a new project and have to relearn agaon how metrics should be collected and visualized this time. Not that it is the only technology thing that changes over time, but it is guaranteed to change.

I [sent metrics via UDP](post:@choose-nearest-language:collect-metrics-in-linux) to [Graphite](https://graphiteapp.org/) (in 2024, a post from 2015 looks funny), used SaaS solutions like [Datadog](https://www.datadoghq.com/) and [New Relic](https://newrelic.com/), aggregated metrics in the application for [Prometheus](https://prometheus.io/), wrote metrics as logs for [AWS CloudWatch](https://aws.amazon.com/cloudwatch/).

And there were always nuances:

- The features of the project's technologies and architecture impose sudden restrictions.
- Technical requirements for the completeness, correctness, and accuracy of metrics collide with business constraints on the cost of maintaining infrastructure.
- Specialized databases for storing [time series](https://en.wikipedia.org/wiki/Time_series) emerge, with which backend developers rarely deal directly.
- Not to mention the ideology and personal preferences of colleagues.

Therefore, there is no single ideal way to collect metrics. Moreover, the variety of approaches, together with the rapid evolution of the entire field, have produced a huge number of open-source bricks that can be used to build any kind of Frankenstein.

So, when time came to implement metrics in [Feeds Fun](https://feeds.fun/), I spend a few days to update my knowledge and put my thoughts in order.

In this essay, I will share some of my thoughts on the metrics in whole and the solution I have chosen for myself. But not in the form of a tutorial, but in the form of theses on topics that I am passionate about.

<!-- more -->

## Metrics are the basic tool for managing the technical state of a project at the operational, tactical, and strategic levels

Metrics are literally the eyes of a developer. Without them, it is impossible to see both the current technical situation on the project and its long-term trends.

If we take the classic loop from systems engineering (and other [memeplexes](post:@choose-nearest-language:genes-memes-memeplexes)):

1. data collection;
2. data analysis;
3. synthesis / decision-making;
4. implementation of the solution;

then metrics are the first step in the loop (and part of the second). Without them, it is impossible to close the feedback loop for effective project management.

Speaking of planning levels, metrics help:

- At the operational level, to deal with force majeure situations faster.
- At the tactical level, to eliminate negative trends (like degradation of performance due to data growth) before they hit.
- At the strategic level, to plan expensive changes in architecture and infrastructure. For example, by justifying the need for database sharding or the introduction of queues.

However, that does not mean that the first commit should be the implementation of metrics — everything is good in moderation.

When developing a prototype and even when delivering first versions to production, you can rely on your experience, intuition, periodic manual checks of the system state, the discipline and competence of the team. After all, poorly working business logic without metrics is usually better than non-implemented business logic with cool metrics :-D

The general idea is roughly as follows: the greater the impact of risks, the more metrics you need.

## You need to monitor metrics visually / manually

Metrics are needed not only to look at them during incidents or long-term planning; or to provide data for triggers.

Metrics show us the dynamics of the project, its internal life.

The habit of periodically looking at metrics with your own eyes initiates a feedback loop for [refining your mental model](post:@choose-nearest-language:life-and-work-with-models) of the project. An accurate mental model is the key to your effective work, the speed and the quality of decisions you make.

## You don't know what metrics you will need

There are basic metrics that everyone or almost everyone needs. For example, [percentiles](https://en.wikipedia.org/wiki/Percentile) of response times for requests, requests per second, number of errors, number of requests for each of the API endpoints, sizes of databases, tables, indexes, and so on.

However, basic metrics, as expected, only allow you to react to basic/common issues. This is already a lot, but each project is unique, as is its development path. Therefore, in addition to common issues, you will definitely have ones unique to your specific situation.

For example, at my last job, we implemented [distributed transactions](https://en.wikipedia.org/wiki/Distributed_transaction) for processing payments using [Orchestration-based saga](https://microservices.io/patterns/data/saga.html) in the form of [FSM](https://en.wikipedia.org/wiki/Finite-state_machine). At some point, we needed to see the dynamics of the FSM distribution by their states, which showed itself very helpful.

Unfortunately, in most cases, newly added metrics will not have a history. And the history of changes is what makes metrics really useful. If you encounter an issue and see it in the metrics, you will want to know not only their current values, but also their dynamics: the direction of changes, cyclicity, seasonality, and so on.

Therefore, it is reasonable to follow the following heuristics:

- More metrics are better than fewer.
- If you have come up with a metric and it is easy to add — add it.
- If you have a critical component in the system, turn on the paranoia mode and cover it with metrics from top to bottom.

This is why I really dislike SaaS solutions that charge for the number of unique metrics. Especially with the difinition of uniqueness as a combination of the metric name with all possible combinations of its tags/labels. Such restrictions force developers to spend too much time on designing metrics instead of developing the application.

## История метрик должна быть долгой

В моей практике я часто сталкивался с утвержденями в духе «2 недели истории метрик достаточно». Аргументация заключается в том, что за две недели всплывут любые существенные проблемы. А если проблем не было, то и долгая история не нужна — сэкономим деньги.

Это в корне неверно по следующим причинам.

**[Люди совершают ошибки]{post:life-and-work-with-mistakes}**: лажают, забывают, отвлекаются, пилят бизнес-фичи в кранче, уходят в отпуск. Из того, что никто за две недели не заметил проблему, не значит, что её нет или что она несущественная.

**Наши системы не идеальны**, особенно вспомогательные вроде мониторинга. Часто мониторинг обсуждают с позиции «идеальной системы когда мы её построим» — в которой уже есть все возможные метрики и все возможные детекторы аномалий. Но ни у кого никогда не было идеальной системы мониторинга. В большинстве случае она вообще делается по остаточному принципу, так как не несёт прямой пользу никому кроме технарей.

**Многие процессы в жизни нелинейны.** Проблема легко может нарастать [экспоненциально](https://ru.wikipedia.org/wiki/Экспоненциальный_рост). Например, полгода незаметно для всех прибавлять по проценту в день к длительности запроса, после чего за неделю увеличить её в 20 раз. С короткой историей мы не сможем заметить тренд вовремя (наклон графика на коротком интервале будет слабо незаметен), но и не сможем быстро найти точку начала тренда.

## Код приложения не должен знать о вашем Service Level Agreement

Задача вашего приложения — работать и отдавать чёткие честные измерения своего состояния — быть источником правды. Что делать с этими измерениями — это отдельный вопрос, который должен решаться внешними средствами.

В задачи вашего приложения не должны входить расчёты перцентилей, уменьшение точности метрик, их агрегирование и так далее.

Во-первых, это не относится к бизнес-логике, а значит не несёт пользы пользователям.

Во-вторых, это усложняет приложение, что усложняет его модификацию и поддержку. Не то, чтобы критически, но всё-таки усложняет.

В-третьих, это усложняет и замедляет внесения изменений в метрики. Для примера, если вы используете Prometheus и отдаёте ему гистограммы:

- Для любого изменения гистограмм вам надо будет, в лучшем случае, обновить конфиги приложения на проде. В худшем — обновить его код, а значит сделать полноценный релиз. И будем честными, вы будете релизить, потому что поленились вынести параметры метрик в конфиги.
- Если вам внезапно понадобится разделить метрики по типам гистограмм (например, одна для времени быстрых операций, другая — для медленных), то вам придётся менять код приложения и это могут быть не совсем тривиальные изменения.

В-четвёртых, если у вас может быть несколько версий на проде (a/b тесты, замедленная раскатка релиза, демо-сервера, etc), то у вас образуется каша из несовместимых метрик, что усложнит их анализ.

В-пятых, приложение не может самостоятельно действовать на основе метрик, поэтому не должно пытаться их как-то обрабатывать. Утрируя, оно не сможет сказать надо ли отмасштабировать горизонтально сервера с ним или вертикально отмасштабировать сервер базы. Не говоря уже о самой инициации масштабирования. Это делается системами над приложением.

Поэтому мне не нравится подход Prometheus к сбору предагрегированных метрик, я просто не понимаю как с ним можно нормально жить.

## Приложение должно только пушить (push) метрики

Не пытаться их хранить, чтобы потом кто-то их собрал.

Во-первых, могут и не собрать по огромному количеству причин. Например, из-за того, что приложение упало за секунду до того, как до него добрался Prometheus.

Во-вторых, до всего ваш коллектор всё равно не доберётся, как бы вы не старались. Всегда есть автономные скрипты, которые тоже нужно мерить. Иногда могут возникнуть и проблемы с границами систем, периметрами безопасности. Поэтому всё равно придётся делать push логику для частных случаев, а значит делать работу дважды, усложнять инфраструктуру.

Это ещё одна причина, почему мне не нравится pull подход Prometheus к сбору метрик.

## Метрики и логи — одно целое

И то и другое — [телеметрия](https://ru.wikipedia.org/wiki/Телеметрия).

Сообщение о метрике может быть записью в логах и запись в логах можно интерпретировать как метрику.

Поэтому, для нужд приложения, нет смысла их разделять. Пытаясь работать с метриками и логами по-разному вы усложняете архитектуру, инфраструктуру и свою жизнь в целом.

Учитывая текущую (сугубо позитивную) моду на структурированные логи (это когда каждая запись в логах имеет строгий формат, обычно JSON), имеет смысл просто писать всё как логи на stdout.

В таком случае от метрик на стороне приложения остаётся немного.

Во-первых, какая-нибудь функция-обёртка над логирования в духе

```
def measure(event: str, value: int | float):
    logger.info(event, m_kind="measure", m_value=value)
```

Во-вторых, какой-нибудь механизм задания меток/тегов **для всех записей в лог**, если вы планируете использовать метки.

## Реализация меток на бэкенде Feeds Fun

Для примера, к чему пришёл я:

1. Добавил метод `measure` прямо в класс логгера, благодаря чему могу регистрировать измерения везде, где есть логгер.
2. Для меток использую контекст процессор устанавливающий [contextvars](https://docs.python.org/3/library/contextvars.html) в сочетании с [отдельным процессором логов](https://www.structlog.org/en/stable/api.html#structlog.contextvars.merge_contextvars) из [structlog](https://www.structlog.org/en/stable/), который мержит метки в каждую запись логов.
3. Все логи пишутся на stdout.

Выглядит это примерно так ([полный исходник](https://github.com/Tiendil/feeds.fun/blob/main/ffun/ffun/core/logging.py)):

```
LabelValue = int | str | None

class MeasuringBoundLoggerMixin:

    def measure(self,
                event: str,
                value: float | int,
                **labels: LabelValue) -> Any:

        if not labels:
            return self.info(event, m_kind="measure", m_value=value)

        with bound_measure_labels(**labels):
            return self.info(event, m_kind="measure", m_value=value)

    @contextlib.contextmanager
    def measure_block_time(self,
                           event: str,
                           **labels: LabelValue) -> Iterator[dict[str, LabelValue]]:
        started_at = time.monotonic()

        extra_labels: dict[str, LabelValue] = {}

        with bound_measure_labels(**labels):
            try:
                yield extra_labels
            finally:
                self.measure(event,
                             time.monotonic() - started_at,
                             **extra_labels)


@contextlib.contextmanager
def bound_measure_labels(**labels: LabelValue) -> Iterator[None]:
    if not labels:
        yield
        return

    bound_vars = structlog_contextvars.get_contextvars()

    if "m_labels" in bound_vars:
        if labels.keys() & bound_vars["m_labels"].keys():
            raise errors.DuplicatedMeasureLabels()

        new_labels = copy.copy(bound_vars["m_labels"])

    else:
        new_labels = {}

    new_labels.update(labels)

    with structlog_contextvars.bound_contextvars(m_labels=new_labels):
        yield
```

## Обработка метрик на бэкенде Feeds Fun

Что происходит с метриками после их записи в лог вы могли видеть на заглавной картинке. На всякий случай продублирую её тут.

/// brigid-images
src = "./feeds-fun-metrics-schema.png"
caption = "Примерно так сейчас выглядит сбор метрик в Feeds Fun. Loki добавлен как возможный следующий шаг развития инфраструктуры."
///

1. Приложение и все утилиты запускаются в [Docker](https://www.docker.com/) контейнерах. Конкретнее, в [Docker Swarm](https://docs.docker.com/engine/swarm/), но это не важно.
2. [Vector](https://vector.dev/) настроен собирать логи из докера и делать с ними разные штуки:
    - Часть логов преобразует в метрики и агрегирует по правилам Prometheus.
    - Все логи будет посылать в какой-нибудь [Loki](https://grafana.com/oss/loki/), но чуть позже, пока не тратил время на эту часть.
3. [Prometheus](https://prometheus.io/) ходит в одну точку за всеми метриками.
4. [Grafana](https://grafana.com/) рисует дашборды по метрикам из Prometheus.

Большинство манипуляций с метриками: изменение структуры bucket в гистограммах, создание новых метрик, редактирование меток, игнорирование метрик, etc. я могу делать меняя конфиг Vector и никак не затрагивая работу бизнес-логики.

Удобно и то, что определение источников логов в Vector можно настраивать достаточно гибко. Например, в моём случае контейнеры приложения определяются по префиксу имени image контейнера. Соответственно, что бы новое я не запустил на бэке (сервисы, cron задачи, etc), пока у них будет тот же базовый image, их логи и метрики будут распознаваться автоматически.

Удобно и то, что при разворачивании новых серверов и сервисов мне надо будет только настроить потоки данных в Vector (или между экземплярами Vector), а не менять конфигурацию Prometheus или учить его находить сервисы.
