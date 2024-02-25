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

<!-- TODO: move to brigid config? -->
<!-- TODO: if moved, how to turn on optionally? -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/5.4.1/papaparse.min.js" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/plotly.js/1.33.1/plotly.min.js" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script type="text/javascript">

var fullData = null;

const redrawPlots = new CustomEvent('redrawPlots', {
  detail: {
    message: "redraw plots",
  }
});

// TODO: do something with the file path
// TODO: move to the bottom of the page?
Papa.parse("/static/posts/making-a-fictional-universe-quantity-survey-processing/2024_02_23_cleaned_data.csv", {
	download: true,
        header: true,
        dynamicTyping: true,
        skipEmptyLines: true,
	complete: function(results) {
            fullData = results.data;
            document.dispatchEvent(redrawPlots);
	}
});

</script>


## Пол

<script type="text/javascript">
function filterAll(row) {
  return true;
}

function mapGender(row) {
  return row['q_gender'];
}

function getPlotData(data, filter, map) {
  var filteredData = data.filter(filter);
  var mappedData = filteredData.map(map);

  var uniqueValues = Array.from(new Set(mappedData));

  counts = uniqueValues.map(function(value) {
    return mappedData.filter(function(x) {
      return x === value;
    }).length;
  });

  return {
      values: uniqueValues,
      counts: counts
          };
}

document.addEventListener('redrawPlots', (e) => {
    const dataToPlot = getPlotData(fullData, filterAll, mapGender);
    data = [{
        'x': dataToPlot.values,
        'y': dataToPlot.counts,
        'type': 'bar'
    }];
    Plotly.newPlot('plot-gender', data);
});

</script>

<div id="plot-gender"></div>
