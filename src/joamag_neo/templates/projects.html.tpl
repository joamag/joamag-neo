{% extends "partials/layout.html.tpl" %}
{% block title %} - Projects{% endblock %}
{% block content %}
    {{ menu("projects") }}
    <section class="header">
        <h1>Projects</h1>
        <p class="condensed">
            Open source I build and maintain, mostly Python with a detour into Rust.
            Some of these have been around for well over a decade and still get commits
            most weeks, quietly running in production somewhere.<br/>
            Everything lives on GitHub, so feel free to dig through the code,
            open an issue or send a pull request.
        </p>
    </section>
    <section class="links">
        <dl>
            {% for project in projects %}
                <dt>{{ project.label }}</dt>
                <dd>
                    <a href="https://{{ project.prefix }}{{ project.handle }}" target="_blank" rel="noopener">
                        {{ project.description }}
                    </a><br/>
                    <span class="weak">{{ project.prefix }}{{ project.handle }}, since {{ project.year }}</span>
                </dd>
            {% endfor %}
        </dl>
    </section>
{% endblock %}
