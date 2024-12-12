---
title: Els paisatges de Benín
description: Els paisatges són bonics i molt verds. Alguns tenen molts arbres de tek o de baobab. Alguns són molt grans. 
category: Print Design
date: 2022-01-05 08:01:35 +0300
role: Graphic Designer
image: '/images/06-Paisatges/paisatge.jpg'
image_caption: "Foto de pare"
---

Els paisatges de Benín són molt bonics.

{% assign subfolder_images = site.data.images["06-Paisatges"]["paisatge"] %}

<div class="gallery-box">
  <div class="gallery">
    {% for image in subfolder_images %}
      <img src="{{ image | relative_url }}" loading="lazy" alt="Project Image">
    {% endfor %}
  </div>
  <em>Les fotos les ha fet pare</em>
</div>