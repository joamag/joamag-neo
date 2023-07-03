{% extends "partials/base.html.tpl" %}
{% set features = config.conf("FEATURES", ["about", "blog", "resume"], cast = list) %}
{% macro menu(section) -%}
    <div class="menu">
        <ul>
            {% if "about" in features %}
                <li><a class="simple {% if section == 'about' %}active{% endif %}" href="/">About</a></li>
            {% endif %}
            {% if "blog" in features %}
                <li><a class="simple {% if section == 'blog' %}active{% endif %}" href="/blog">Blog</a></li>
            {% endif %}
            {% if "resume" in features %}
                <li><a class="simple {% if section == 'resume' %}active{% endif %}" target="_blank" href="https://resume.joao.me">Résumé</a></li>
            {% endif %}
        </ul>
    </div>
{%- endmacro %}
{% block html %}
    {% include "partials/doctype.html.tpl" %}
    <head>
        {% block head scoped %}
            {% include "partials/content_type.html.tpl" %}
            {% include "partials/includes.html.tpl" %}
            {% include "partials/analytics.html.tpl" %}
            {% include "partials/meta.html.tpl" %}
            {% include "partials/og.html.tpl" %}
            {% include "partials/twitter.html.tpl" %}
            <title>{{ title }}{% block title %}{% endblock %}</title>
        {% endblock %}
    </head>
    <body class="ux wait-load {{ mode }} {% block body_extras %}{% endblock %}" data-locale="en-us">
        <div id="header" class="header replace">
            {% block header %}
                {% include "partials/header.html.tpl" with context %}
            {% endblock %}
        </div>
        <div id="content" class="content {{ mode }}">{% block content %}{% endblock %}</div>
        <div id="footer" class="footer">
            {% block footer %}
                {% include "partials/footer.html.tpl" with context %}
            {% endblock %}
        </div>
    </body>
    <footer>
        {% include "partials/includes.footer.html.tpl" %}
    </footer>
    {% include "partials/end_doctype.html.tpl" %}
{% endblock %}
