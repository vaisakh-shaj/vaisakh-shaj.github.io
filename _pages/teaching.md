---
layout: page
permalink: /teaching/
title: teaching
description: Teaching / Student Supervision
nav: true
nav_order: 5
---


## Master Thesis Supervision

{% for project in site.data.student-thesis %}

{{ forloop.index }}.
<strong>{{ project.title }}</strong> ({{ project.year }})
{% for author in project.authors %}
    {% if author.url %}
        <a href="{{author.url}}">{{author.name}}</a>{% unless forloop.last %},{% endunless %}
    {% else %}
        {{author.name}}{% unless forloop.last %},{% endunless %}
    {% endif %}
{% endfor %}
{% if project.cosupervisors %}
Cosupervisor(s): {% assign cosupervisor_names = project.cosupervisors | map: 'name' | join: ', ' %}
{{ cosupervisor_names }}
{% endif %}

{% endfor %}
