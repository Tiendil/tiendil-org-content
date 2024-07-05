---
title = "Pydicates: предикаты для Python"
tags = [ "open-source", "python", "practice", "development",]
published_at = "2021-04-28T12:00:00+00:00"
seo_description = "Опубликовал библиотеку для работы с логическими предикатами в Python."
seo_image = ""
---

Опубликовал небольшую библиотеку для работы с предикатами в Python: [github](https://github.com/Tiendil/pydicates), [pypi](https://pypi.org/project/pydicates/). Как всегда, под [BSD-3](https://opensource.org/licenses/BSD-3-Clause).

Позволяет конструировать функции для отложенных вычислений. Например, описывать такие условия: `(OwnedBy('alex') | OwnedBy('alice')) & HasTag('game-design')`.

Делал для себя, так как уже несколько раз в пет-проектах писал костыли для этого дела. Решил сделать один раз правильно и больше не тратить на это время.

Минимальный пример:

```
from pydicates import Predicate, common


def HasTag(tag):
    return Predicate('has_tag', tag)


def has_tag(context, tag, document):
    return tag in document['tags']


common.register('has_tag', has_tag)

document = {'tags': ('a', 'b', 'c', 'd')}

assert common(HasTag('a') & HasTag('c'), document)
assert not common(HasTag('a') & HasTag('e'), document)
assert common(HasTag('a') & ~HasTag('e'), document)
assert common(HasTag('a') & (HasTag('e') | HasTag('d')), document)
```

Больше примеров можно найти в репозитории [./examples](https://github.com/Tiendil/pydicates/tree/develop/examples)

API описано чуть подробнее в [./examples/documents\_check.py](https://github.com/Tiendil/pydicates/blob/develop/examples/documents_check.py)

Больше примеров можно найти в [тестах](https://github.com/Tiendil/pydicates/tree/develop/tests).
