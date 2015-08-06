<!-- Extend the layout -->
{% extends '../layout.swig' %}

<!-- Populate the title HTML tag -->
{% block title %}
    {{ title }}
{% endblock %}

<!-- Populate the body HTML tag -->
{% block body %}
    <form method="post" action="/recipes/{{ model.id }}">
        <input type="text" name="name" id="name" value="{{ model.name }}" />
        <input type="submit" value="update" />
    </form>
{% endblock %}