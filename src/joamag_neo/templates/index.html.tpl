{% extends "partials/layout.html.tpl" %}
{% block content %}
    <div class="above">
        <img class="avatar" src="{{ url_for('static', filename = 'images/avatar_neo.png') }}" />
    </div>
    <section class="header">
        <h1>João Magalhães</h1>
        <p>
            Entrepreneur, software developer and technology enthusiast.<br/>
            Co-founder of <a class="strong" href="http://www.hive.pt" target="_blank">Hive Solutions</a> and
            Chief Technical Officer at <a class="strong" href="http://www.platforme.com" target="_blank">Platforme</a>.<br/>
            Creator of <a class="strong" href="http://appier.hive.pt" target="_blank">Appier</a>,
            <a class="strong" href="http://netius.hive.pt" target="_blank">Netius</a> and
            <a class="strong" href="http://colony.hive.pt" target="_blank">Colony framework</a>.
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
