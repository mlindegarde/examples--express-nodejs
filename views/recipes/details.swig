<!-- Extend the layout -->
{% extends '../layout.swig' %}

<!-- Populate the title HTML tag -->
{% block title %}
    {{ title }}
{% endblock %}

<!-- Populate the body HTML tag -->
{% block body %}
    <div>
        {% autoescape false %}{{ model.descriptionAsHTML }}{% endautoescape %}
    </div>
    <form method="post" action="/recipes/{{ model.id }}">
        <div>
            <input type="text" name="name" id="name" value="{{ model.name }}" />
        </div>
        <div>
            <textarea name="description" id="description" value="{{ model.description }}" >{{ model.description }}</textarea>
            <div style="display: inline-block; width: 200px; height: 200px;" name="preview" id="preview" >{% autoescape false %}{{ model.descriptionAsHTML }}{%  endautoescape %}</div>
        </div>
        <input type="submit" value="update" />
    </form>
{% endblock %}

{% block scripts %}
    <!--
    To generate the client-side script from the NPM module:
    $ browserify -r ./node_modules/markdown/lib/index:MarkdownEditor | uglifyjs > public/js/vendor/markdown.js

    To use in browser:
    var Markdown = require('MarkdownEditor').markdown;
    Markdown.toHTML('*hi*);
    -->
    <script src="../public/js/vendor/markdown.js" ></script>

    <script>
        $(function() {
            var markdown = require('MarkdownEditor').markdown;

            $('#description').keyup(function(event){
                $('#preview').html(markdown.toHTML($('#description').val(), 'Maruku'));
            })
        })
    </script>
{% endblock %}