{% extends "partials/layout.html.tpl" %}
{% block content %}
    <h1>Unexpected Error</h1>
    <p>
        Please make sure you’ve got the spelling, capitalization, etc. right.<br/>
        This may be also a problem on our side, if so, please try again later.
    </p>
    {% if error and error.uid %}
        <p>{{ error.uid }}</p>
    {% endif %}
{% endblock %}
