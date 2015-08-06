<!-- Extend the layout -->
{% extends '../layout.swig' %}

<!-- Populate the title HTML tag -->
{% block title %}
{{ title }}
{% endblock %}

<!-- Populate the body HTML tag -->
{% block body %}
    <h1>{{ title }}</h1>

    {% for recipe in model %}
        {% if loop.first %}<ul>{% endif %}
            <li><a href="/recipes/{{recipe.id}}">{{recipe.id}} - {{recipe.name}}</a></li>
        {% if loop.last %}</ul>{% endif %}
    {% endfor %}
{% endblock %}