{% extends "partials/layout.html.tpl" %}
{% block content %}
    {{ menu("blog") }}
    <section class="title">
        <h1>Supercharging my Telegram group with the help of ChatGPT</h1>
    </section>
    <section class="blog">
        <p>
            While most people in Europe use WhatsApp, my group of friends and I use Telegram. For years now we've used things like <a class="simple" target="_blank" href="https://combot.org/">Combot</a> to see who's more silent than usual, and MissRose to give our monthly elected group admins moderation rights. Yeah, we take friendship that seriously.
            But now we have access to LLMs right? So I decided to build two new features for our group chat. One is pretty useful, and the other.. Well, you be the judge.
        </p>
        <h2>Summarize the conversation with /resume</h2>
        <p>
            Our group chat can get pretty active sometimes. We call those the golden hours. If you're distracted and miss one of those, you'll quickly lose track of what's going on. But let's be honest, sometimes, we just don't have time to catch up.
        </p>
        <p>
            Enter the /resume command. Now, when someone misses a specially hectic part of the conversation, they can just use the /resume command to get a short summary of what happened.
        </p>
        <h2>Closing thoughts</h2>
        <p>
            Both of these two bots were pretty fun to build, and python-telegram-bot makes building the whole thing so easy. It's basically a python script running on my server.
        </p>
        <p>
            The summarization feature was an instant success. It's simple, straightforward, and my friends loved it. The feedback to the impersonation feature was.. a bit of a mixed bag. Even though the model can accurately respond to a question with some relevant items to the person its impersonating, it's not really credible. It's missing the juice.
        </p>
        <p>
            What is the juice, you ask, my dear reader? The juice is the voice of the person it's trying to impersonate. The juice is the reason why when you ask ChatGPT to design something it looks pretty ugly. The juice is the creativity, the originality!
        </p>
        <p>
            (and of course, privacy concerns, here's my mention of them)
        </p>
    </section>
{% endblock %}
