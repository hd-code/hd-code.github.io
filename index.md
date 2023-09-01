---
layout: default
title: Willkommen
image_sizes: [2000, 1000, 500, 250]
---

<main class="home-hero main-content">
    <img class="home-hero__background" src="/assets/hero.svg" alt="Hintergrund">
    <img class="home-hero__image" src="/assets/hd-500.png" alt="Bild von Hannes Dröse mit transparentem Hintergrund"
        srcset="{% for size in page.image_sizes %}/assets/hd-{{size}}.png {{size}}w, {% endfor %}">
    <div class="home-hero__text">
        <h1>Hannes Dröse</h1>
        <hr>
        <p>Software Entwickler und Researcher</p>
    </div>
</main>
