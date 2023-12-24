{% extends "partials/layout.html.tpl" %}
{% block content %}
    {% set name = config.conf("NAME")|default("João Magalhães", True) %}
    {% set email = config.conf("EMAIL")|default("joao@joao.me", True) %}
    {% set github = config.conf("GITHUB")|default("joamag", True) %}
    {% set gitlab = config.conf("GITLAB")|default("joamag", True) %}
    {% set linkedin = config.conf("LINKEDIN")|default("joamag", True) %}
    {% set twitter = config.conf("TWITTER")|default("joamag", True) %}
    {{ menu("about") }}
    <div class="above">
        <img class="avatar" alt="avatar" src="{{ url_for('static', filename = 'images/avatar_neo.png') }}" />
    </div>
    <section class="header">
        <h1>{{ name }}</h1>
        <p>
            Old school software engineer and technology enthusiast.<br/>
            Co-founder and Chief Executive Officer at <a class="simple" href="http://www.hive.pt" target="_blank">Hive Solutions</a>.<br/>
            Previously Co-founder and Chief Technology Officer at <a class="simple" href="http://www.platforme.com" target="_blank">Platforme</a>.<br/>
            Creator of <a class="simple" href="https://github.com/hivesolutions/appier" target="_blank">Appier</a>,
            <a class="simple" href="https://github.com/hivesolutions/netius" target="_blank">Netius</a> and
            <a class="simple" href="https://github.com/hivesolutions/colony" target="_blank">Colony framework</a>.
        </p>
        <p class="highlight">
            I'm always looking for new challenges and opportunities.<br/>
            Want to get in touch? Ping me at <a class="simple" href="mailto:{{ email }}?subject=Hey {{ name }}, let's have a chat">{{ email }}</a>.
        </p>
    </section>
    <section class="links">
        <dl>
            <dt>Company</dt>
            <dd>
                <a href="http://hive.pt" target="_blank">Hive Solutions</a>
            </dd>
            {% if email %}
                <dt>Email</dt>
                <dd>
                    <a href="mailto:{{ email }}">{{ email }}</a>
                </dd>
            {% endif %}
            {% if github %}
                <dt>GitHub</dt>
                <dd>
                    <a href="http://github.com/{{ github }}" target="_blank">
                        <span class="weak">github.com/</span>{{ github }}
                    </a>
                </dd>
            {% endif %}
            {% if gitlab %}
                <dt>GitLab</dt>
                <dd>
                    <a href="http://gitlab.com/{{ gitlab }}" target="_blank">
                        <span class="weak">gitlab.com/</span>{{ gitlab }}
                    </a>
                </dd>
            {% endif %}
            {% if linkedin %}
                <dt>LinkedIn</dt>
                <dd>
                    <a href="http://linkedin.com/in/{{ linkedin }}" target="_blank">
                        <span class="weak">linkedin.com/in/</span>{{ linkedin }}
                    </a>
                </dd>
            {% endif %}
            {% if twitter %}
                <dt>Twitter</dt>
                <dd>
                    <a href="http://twitter.com/{{ twitter }}" target="_blank">
                        <span class="weak">twitter.com/</span>{{ twitter }}
                    </a>
                </dd>
            {% endif %}
        </dl>
    </section>
{% endblock %}
