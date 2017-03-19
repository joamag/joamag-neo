{% extends "partials/layout.html.tpl" %}
{% block content %}
    <div class="above">
        <img class="avatar" src="{{ url_for('static', filename = 'images/avatar_neo.png') }}" />
    </div>
    <section class="header">
        <h1>João Magalhães</h1>
        <p>
            Entrepreneur, <span class="strong">software developer</span> and technology enthusiast.<br/>
            Co-founder of <a class="strong" href="http://hive.pt">Hive Solutions</a> and creator of
            <a class="strong" href="http://colony.hive.pt">Colony framework</a>.
        </p>
    </section>
    <section class="links">
        <dl>
            <dt>Company</dt>
            <dd>
                <a href="http://hive.pt" target="_blank">Hive Solutions</a>
            </dd>
            <dt>Email</dt>
            <dd>
                <a href="mailto:joamag@gmail.com">joamag@gmail.com</a>
            </dd>
            <dt>GitHub</dt>
            <dd>
                <a href="http://github.com/joamag" target="_blank">
                    <span class="weak">github.com/</span>joamag
                </a>
            </dd>
            <dt>Twitter</dt>
            <dd>
                <a href="http://twitter.com/joamag" target="_blank">
                    <span class="weak">twitter.com/</span>joamag
                </a>
            </dd>
            <dt>LinkedIn</dt>
            <dd>
                <a href="http://linkedin.com/in/joamag" target="_blank">
                    <span class="weak">linkedin.com/in/</span>joamag
                </a>
            </dd>
        </dl>
    </section>
{% endblock %}
