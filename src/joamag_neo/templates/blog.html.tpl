{% extends "partials/layout.html.tpl" %}
{% block title %} - Blog{% endblock %}
{% block content %}
    {{ menu("blog") }}
    <section class="header">
        <h1>Blog</h1>
        <p class="condensed">
            Occasional writing about software, side projects and the odd experiment
            that got out of hand.<br/>
            Nothing on a schedule, just whatever turned out interesting enough
            to be worth writing down.
        </p>
    </section>
    <section class="blog">
        <p class="highlight">
            <a class="simple" href="/post">Supercharging my Telegram group with the help of ChatGPT</a><br/>
            <time>25-04-2023</time>
        </p>
        <p class="highlight">
            <a class="simple" href="/post">Fine-tuning FLAN-T5 to replace my friends</a><br/>
            <time>10-04-2023</time>
        </p>
    </section>
{% endblock %}
