<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>{% block title %}{% endblock %}</title>

    <link rel="stylesheet" href="/public/css/style.css">

    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js" ></script>
</head>
<body>
    <div class="wrapper">
        <header>
            <h1>Recipes</h1>
        </header>

        <nav>
        {% include 'partials/nav.swig' %}
        </nav>

        <div>
        {% block body %}{% endblock %}
        </div>
    </div>

    {% block scripts %}{% endblock %}
</body>
</html>