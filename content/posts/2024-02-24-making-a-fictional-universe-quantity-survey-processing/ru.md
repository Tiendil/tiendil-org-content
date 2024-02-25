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

const redrawPlots = new CustomEvent('redrawPlots', {
  detail: {
    message: "redraw plots",
  }
});

function filterAll(row) {
  return true;
}

function filterGameDevelopers(row) {
  return row['q_is_game_developer'] === 'yes';
}

function filterPlayers(row) {
  return row['q_is_game_developer'] === 'no';
}

const filters = {'all': {name: 'All', filter: filterAll},
                 'gameDevelopers': {name: 'Game developers', filter: filterGameDevelopers},
                 'players': {name: 'Players', filter: filterPlayers}};

var fullData = null;

var filterA = 'gameDevelopers';
var filterB = 'players';

</script>

<div class="plot-filters-group">
    <select class="plot-filter plot-filter-a" onchange="selectFilterA(this.value)">
    </select>

    <select class="plot-filter plot-filter-b" onchange="selectFilterB(this.value)">
    </select>
</div>

<script type="text/javascript">
function fillFilters() {
    var selects = document.querySelectorAll('.plot-filter');

    for (var select of selects) {

        for (var key in filters) {
            var option = document.createElement('option');
            option.value = key;
            option.text = filters[key].name;
            select.appendChild(option);
        }
    }
}

fillFilters();

function selectFilterA(value) {
    filterA = value;
    var selects = document.querySelectorAll('.plot-filter-a');

    for (var select of selects) {
        select.value = filterA;
    }

    document.dispatchEvent(redrawPlots);
}

function selectFilterB(value) {
    filterB = value;
    var selects = document.querySelectorAll('.plot-filter-b');

    for (var select of selects) {
        select.value = filterB;
    }

    document.dispatchEvent(redrawPlots);
}

selectFilterA(filterA);
selectFilterB(filterB);

</script>

<script type="text/javascript">

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
    // TODO: remove unnecessary buttons from plotly plot
// TODO: display percents near the counts, where it makes sense

function mapGender(row) {
  return row['q_gender'];
}

function getPlotData(data, filter, map) {
  var filteredData = data.filter(filter);
  var mappedData = filteredData.map(map);

  var uniqueValues = Array.from(new Set(mappedData));

  const counts = uniqueValues.map(function(value) {
    return mappedData.filter(function(x) {
      return x === value;
    }).length;
  });


  const percents = counts.map(function(count) {
      return (count / filteredData.length * 100).toFixed(2);
  });

  return {
      values: uniqueValues,
      counts: counts,
      percents: percents
  };
}

// TODO: log for gender
document.addEventListener('redrawPlots', (e) => {

    if (fullData === null) {
        return;
    }

    const dataA = getPlotData(fullData, filters[filterA].filter, mapGender);
    const dataB = getPlotData(fullData, filters[filterB].filter, mapGender);

    data = [{
        'x': dataA.values,
        'y': dataA.percents,
        'name': filters[filterA].name,
        'type': 'bar'
    },{
        'x': dataB.values,
        'y': dataB.percents,
        'name': filters[filterB].name,
        'type': 'bar'
    }];

    Plotly.newPlot('plot-gender', data, {barmode: 'group'});
});

</script>

<div id="plot-gender"></div>
