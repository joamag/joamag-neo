{% extends "partials/layout.html.tpl" %}
{% block content %}
    {% set socials = [
        {"label": "GitHub", "prefix": "github.com/", "handle": github},
        {"label": "GitLab", "prefix": "gitlab.com/", "handle": gitlab},
        {"label": "LinkedIn", "prefix": "linkedin.com/in/", "handle": linkedin},
        {"label": "X", "prefix": "x.com/", "handle": twitter},
        {"label": "Bluesky", "prefix": "bsky.app/profile/", "handle": bluesky},
        {"label": "Keybase", "prefix": "keybase.io/", "handle": keybase},
        {"label": "Résumé", "prefix": "", "handle": resume}
    ] %}
    {% set projects = [
        {"label": "Appier", "prefix": "github.com/hivesolutions/", "handle": "appier"},
        {"label": "Netius", "prefix": "github.com/hivesolutions/", "handle": "netius"},
        {"label": "Colony", "prefix": "github.com/hivesolutions/", "handle": "colony"},
        {"label": "Boytacean", "prefix": "github.com/joamag/", "handle": "boytacean"}
    ] %}
    {{ menu("about") }}
    <div class="above">
        <img class="avatar" alt="{{ name }}" width="256" height="256" fetchpriority="high"
             src="{{ url_for('static', filename = 'images/avatar_neo.png') }}" />
    </div>
    <section class="header">
        <h1>{{ name }}</h1>
        <p>
            Old school software engineer and technology enthusiast.<br/>
            Co-founder and Chief Executive Officer at <a class="simple" href="https://www.hive.pt" target="_blank" rel="noopener">Hive Solutions</a>.<br/>
            Previously Co-founder and Chief Technology Officer at <a class="simple" href="https://www.platforme.com" target="_blank" rel="noopener">Platforme</a>.<br/>
            Creator of <a class="simple" href="https://github.com/hivesolutions/appier" target="_blank" rel="noopener">Appier</a>,
            <a class="simple" href="https://github.com/hivesolutions/netius" target="_blank" rel="noopener">Netius</a> and
            <a class="simple" href="https://github.com/hivesolutions/colony" target="_blank" rel="noopener">Colony framework</a>.
        </p>
        <p class="highlight">
            Always up for a conversation about software, open source or new ideas.<br/>
            Want to get in touch? Ping me at <a class="simple" href="mailto:{{ email }}?subject={{ ("Hey %s, let's have a chat" % name)|urlencode }}">{{ email }}</a>.
        </p>
    </section>
    <section class="links">
        <dl>
            <dt>Company</dt>
            <dd>
                <a href="https://hive.pt" target="_blank" rel="noopener">Hive Solutions</a>
            </dd>
            {% if email %}
                <dt>Email</dt>
                <dd>
                    <a href="mailto:{{ email }}">{{ email }}</a>
                </dd>
            {% endif %}
            {% for social in socials %}
                {% if social.handle %}
                    <dt>{{ social.label }}</dt>
                    <dd>
                        <a href="https://{{ social.prefix }}{{ social.handle }}" target="_blank" rel="noopener">
                            {% if social.prefix %}<span class="weak">{{ social.prefix }}</span>{% endif %}{{ social.handle }}
                        </a>
                    </dd>
                {% endif %}
            {% endfor %}
        </dl>
    </section>
    <section class="links">
        <dl>
            {% for project in projects %}
                <dt>{{ project.label }}</dt>
                <dd>
                    <a href="https://{{ project.prefix }}{{ project.handle }}" target="_blank" rel="noopener">
                        <span class="weak">{{ project.prefix }}</span>{{ project.handle }}
                    </a>
                </dd>
            {% endfor %}
        </dl>
    </section>
{% endblock %}
