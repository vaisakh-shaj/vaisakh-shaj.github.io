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
{% if project.authors[0].name contains "Andreas Boltres" or project.authors[0].name contains "Martin Herault" or project.authors[0].name contains "Moritz Benno Reuss" or project.authors[0].name contains "Markus Baumann" or project.authors[0].name contains "Yinglin Yuan" or project.authors[0].name contains "Stefan Geyer" or project.authors[0].name contains "Emiliyan Gospodinov" or project.authors[0].name contains "Ruben Jacob" or project.authors[0].name contains "Shuheng Zhang" %}
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
{% endif %}
{% endfor %}

## Bachelor Thesis Supervision

{% for project in site.data.student-thesis %}
{% if project.authors[0].name contains "Nicolas Braun" or project.authors[0].name contains "Severin Mahler" or project.authors[0].name contains "Thorben Colmes" or project.authors[0].name contains "Jannic Bach" %}
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
{% endif %}
{% endfor %}
