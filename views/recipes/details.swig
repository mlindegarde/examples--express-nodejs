<!-- Extend the layout -->
{% extends '../layout.swig' %}

<!-- Populate the title HTML tag -->
{% block title %}
    {{ title }}
{% endblock %}

<!-- Populate the body HTML tag -->
{% block body %}
    <form method="post" action="/recipes/{{ model.id }}">
        <div class="row">
            <div class="columns large-12">
                <input type="text" name="name" id="name" value="{{ model.name }}" />
            </div>
        </div>

        <div class="row">
            <div class="columns large-6">
                <div name="preview" id="preview" >{% autoescape false %}{{ model.descriptionAsHTML }}{%  endautoescape %}</div>
            </div>
            <div class="columns large-6">
                <textarea class="editor" name="description" id="description" value="{{ model.description }}" >{{ model.description }}</textarea>
            </div>
        </div>

        <div class="row">
            <div class="column large-12 text-right">
                <input type="submit" value="update" class="button radius" />
            </div>
        </div>
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