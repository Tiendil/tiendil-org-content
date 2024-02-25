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

barPlot('plot-gender', mapGender, ['male', 'female', 'non_binary_other', 'prefer_not_to_say']);
</script>

---8<--- "./filter_selectors.html"

<div id="plot-gender"></div>

## Возраст

<script type="text/javascript">
function mapAge(row) {

    if (row['q_age'] == null) {
        return 'N/A';
    }

    for (let ageId in ageGroups) {
        let ageGroup = ageGroups[ageId];

        if (ageGroup.min <= row['q_age'] && row['q_age'] <= ageGroup.max) {
            return ageGroup.id;
        }
    }

    console.log('Unknown age:', row['q_age']);
}

barPlot('plot-age', mapAge, ageGroupIds);

</script>

---8<--- "./filter_selectors.html"

<div id="plot-age"></div>

---8<--- "./filters_initialization.html"
