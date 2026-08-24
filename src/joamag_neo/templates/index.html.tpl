{% extends "partials/layout.html.tpl" %}
{% block content %}
    {% set socials = [
        {"label": "GitHub", "prefix": "github.com/", "handle": github},
        {"label": "GitLab", "prefix": "gitlab.com/", "handle": gitlab},
        {"label": "LinkedIn", "prefix": "linkedin.com/in/", "handle": linkedin},
        {"label": "X (Twitter)", "prefix": "x.com/", "handle": twitter},
        {"label": "Bluesky", "prefix": "", "handle": bluesky}
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
        </dl>
    </section>
    <section class="links">
        <dl>
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
{% endblock %}
