<!-- Extend the layout -->
{% extends '../layout.swig' %}

<!-- Populate the title HTML tag -->
{% block title %}
{{ title }}
{% endblock %}

<!-- Populate the body HTML tag -->
{% block body %}
    <h1>{{ title }}</h1>
{% endblock %}