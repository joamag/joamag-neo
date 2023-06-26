{% extends "partials/layout.html.tpl" %}
{% block content %}
    {{ menu("blog") }}
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
