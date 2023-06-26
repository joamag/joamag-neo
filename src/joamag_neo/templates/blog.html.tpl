{% extends "partials/layout.html.tpl" %}
{% block content %}
    <div class="menu">
        <ul>
            <li><a class="simple" href="/">About</a></li>
            <li><a class="simple active" href="/post">Blog</a></li>
            <li><a class="simple" href="#">Resumé</a></li>
        </ul>
    </div>
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
