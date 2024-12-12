---
title: Cotxes i motos i camions de Benín
description: Els camions, els cotxes i les motos són molt beninesos. Són casi sempre vells. Alguns bolquen durant el viatge, i alguns van molt carregats fins a dalt.
category: Book Cover
date: 2022-01-09 08:01:35 +0300
client: Jazz International
role: Designer
image: '/images/02-Cotxes/camio-bolcat.jpg'
image_caption: 'Photo by [Freepik](https://www.freepik.com/)'
---

Mireu les fotos dels cotxes i motos i camions de Benín. Són molt boniques.


Aquí hi han els cotxes. Alguns van molt carregats.

{% assign subfolder_images = site.data.images["02-Cotxes"]["cotxes"] %}

<div class="gallery-box">
  <div class="gallery">
    {% for image in subfolder_images %}
      <img src="{{ image | relative_url }}" loading="lazy" alt="Project Image">
    {% endfor %}
  </div>
  <em>Les fotos les ha fet pare</em>
</div>


I aquestes són les fotos de les motos:

{% assign subfolder_images = site.data.images["02-Cotxes"]["motos"] %}

<div class="gallery-box">
  <div class="gallery">
    {% for image in subfolder_images %}
      <img src="{{ image | relative_url }}" loading="lazy" alt="Project Image">
    {% endfor %}
  </div>
  <em>Les fotos les ha fet pare</em>
</div>


Aquests són alguns dels camions de Benín, que també van molt carregats.

{% assign subfolder_images = site.data.images["02-Cotxes"]["camions"] %}

<div class="gallery-box">
  <div class="gallery">
    {% for image in subfolder_images %}
      <img src="{{ image | relative_url }}" loading="lazy" alt="Project Image">
    {% endfor %}
  </div>
  <em>Les fotos les ha fet pare</em>
</div>