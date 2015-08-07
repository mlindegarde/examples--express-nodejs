<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>{% block title %}{% endblock %}</title>

    {# Foundation CSS #}
    <link rel="stylesheet" href="/public/css/vendor/normalize.css" />
    <link rel="stylesheet" href="/public/css/vendor/foundation.min.css" />

    <link rel="stylesheet" href="/public/css/style.css" />

    {# Foundation JS #}
    <script type="text/javascript" src="/public/js/vendor/modernizr.js" ></script>
    <script type="text/javascript" src="/public/js/vendor/jquery.js" ></script>
    <script type="text/javascript" src="/public/js/vendor/foundation.min.js" ></script>
</head>
<body>
    {% include 'partials/nav.swig' %}

    {% include 'partials/header.swig' %}

    <div class="body row">
        <div class="columns">
            {% block body %}{% endblock %}
        </div>
    </div>

    <script type="text/javascript">
        $(document).foundation();
    </script>

    {% block scripts %}{% endblock %}
</body>
</html>