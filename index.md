---
layout: page
---

## The Atlas of Dipoles Interaction

{% for animation in site.data.animations %}
{% include pausable-gif.html basename=animation.basename %}
{% endfor %}
