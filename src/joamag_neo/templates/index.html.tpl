{% extends "partials/layout.html.tpl" %}
{% block content %}
    <div class="above">
        <img class="avatar" src="{{ url_for('static', filename = 'images/avatar_neo.png') }}" />
    </div>
    <h1>João Magalhães</h1>
    <p>
        Entrepreneur, <span class="strong">software developer</span> and technology enthusiast.<br/>
        Co-founder of <span class="strong">Hive Solutions</span> and creator of <span class="strong">Colony framework</span>.
    </p>
{% endblock %}
