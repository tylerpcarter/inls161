---
layout: page
title: Acknowledgements
nav_exclude: true
---

{% if site.acknowledgements %}
{{ site.acknowledgements }} Please address all comments and questions about this iteration of the course to <a href="mailto:{{ site.data.info.instructor.email }}">{{ site.data.info.instructor.var }}</a>.'
{% endif %}

{% if site.credits %}
# Credits

{{ site.credits }}
{% endif %}

{% if site.license %}
# License

All content is copyright {{ site.author }}.

{{ site.license }}

{{ site.license-img-lrg }}

{{ site.license-summary }}

## Theme license

{{ site.theme-license }}

{% endif %}