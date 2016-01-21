{% extends "partials/base.en_us.html.tpl" %}
{% block html %}
    {% include "partials/doctype.html.tpl" %}
    <head>
        {% block head scoped %}
            {% include "partials/content_type.html.tpl" %}
            {% include "partials/includes.html.tpl" %}
            {% include "partials/analytics.html.tpl" %}
            {% include "partials/meta.html.tpl" %}
            {% include "partials/og.html.tpl" %}
            <title>{{ title }}{% block title %}{% endblock %}</title>
        {% endblock %}
    </head>
    <body class="ux wait-load {{ mode }} {% if own.config.colors %}dark{% endif %} {% block body_extras %}{% endblock %}" data-locale="en-us">
        <div id="header" class="header replace">
            {% block header %}
                {% include "partials/header.en_us.html.tpl" %}
            {% endblock %}
        </div>
        <div id="content" class="content {{ mode }}">{% block content %}{% endblock %}</div>
        <div id="footer" class="footer">
            {% block footer %}
                {% include "partials/footer.en_us.html.tpl" %}
            {% endblock %}
        </div>
    </body>
    {% include "partials/end_doctype.html.tpl" %}
{% endblock %}
