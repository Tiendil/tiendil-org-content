---
title = "Делаем вымышленную вселенную: результаты опроса"
tags = [ "practice", "development", "gamedev", "game-designe", "open-source", "world-builders"]
published_at = "2024-02-24T12:00:00+00:00"
description = "ТУДУ"
seo_image = ""  # туду
---

<!-- TODO: image -->

<!-- TODO: intro -->

Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro

<!-- more -->

---8<--- "./initial_js.html"

## Пол

<script type="text/javascript">
function mapGender(row) {
  return row['q_gender'];
}

barPlot('plot-gender', mapGender);
</script>

---8<--- "./filter_selectors.html"

<div id="plot-gender"></div>

## Возраст

<script type="text/javascript">
function mapAge(row) {
    //  return row['q_age'];

    if (row['q_age'] == null) {
        return 'N/A';
    }

    let lowerBound = Math.floor(row['q_age'] / 5) * 5;
    let upperBound = lowerBound + 4;

    let lowerBoundStr = String(lowerBound).padStart(2, '0');
    let upperBoundStr = String(upperBound).padStart(2, '0');

    let group = `${lowerBoundStr}-${upperBoundStr}`;

    if (group == '0-4') {
        console.log(row);
    }

    return group;
}

barPlot('plot-age', mapAge);
</script>

---8<--- "./filter_selectors.html"

<div id="plot-age"></div>

---8<--- "./filters_initialization.html"
