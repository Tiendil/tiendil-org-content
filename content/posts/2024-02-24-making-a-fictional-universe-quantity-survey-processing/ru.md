---
title = "Делаем вымышленную вселенную: результаты опроса"
tags = [ "practice", "development", "gamedev", "game-designe", "open-source", "world-builders"]
published_at = "2024-02-24T12:00:00+00:00"
description = "ТУДУ"
seo_image = ""  # туду
---

<!-- TODO: image -->

<!-- TODO: intro -->

Bla-bla-bla some intro

<!-- more -->

<!-- TODO: move to brigid config? -->
<!-- TODO: if moved, how to turn on optionally? -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/5.4.1/papaparse.min.js" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script type="module">

// TODO: do something with the file path

Papa.parse("/static/posts/making-a-fictional-universe-quantity-survey-processing/2024_02_23_cleaned_data.csv", {
	download: true,
	complete: function(results) {
		console.log(results);
	}
});

</script>
