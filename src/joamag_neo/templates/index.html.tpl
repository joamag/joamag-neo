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
    <dl>
        <dt>Company</dt>
        <dd>
            <a href="http://hive.pt">Hive Solutions</a>
        </dd>
        <dt>Email</dt>
        <dd>
            <a href="mailto:joamag@gmail.com">joamag@gmail.com</a>
        </dd>
        <dt>GitHub</dt>
        <dd>
            <a href="http://github.com/joamag">@joamag</a>
        </dd>
        <dt>Twitter</dt>
        <dd>
            <a href="http://twitter.com/joamag">@joamag</a>
        </dd>
    </dl>
{% endblock %}
