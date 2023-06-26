{% extends "partials/layout.html.tpl" %}
{% block content %}
    {{ menu("blog") }}
    <section class="title">
        <h1>Supercharging my Telegram group with the help of ChatGPT</h1>
        <h4>25-04-2023</h4>
    </section>
    <section class="blog">
        <p>
            While most people in Europe use WhatsApp, my group of friends and I use Telegram. For years now we've used things like <a class="simple" target="_blank" href="https://combot.org/">Combot</a> to see who's more silent than usual, and MissRose to give our monthly elected group admins moderation rights. Yeah, we take friendship that seriously.
            But now we have access to LLMs right? So I decided to build two new features for our group chat. One is pretty useful, and the other.. Well, you be the judge.
        </p>
        <h2>Summarize the conversation with <code>/resume</code></h2>
        <p>
            Our group chat can get pretty active sometimes. We call those the golden hours. If you're distracted and miss one of those, you'll quickly lose track of what's going on. But let's be honest, sometimes, we just don't have time to catch up.
        </p>
        <p>
            Enter the <code>/resume</code> command. Now, when someone misses a specially hectic part of the conversation, they can just use the <code>/resume</code> command to get a short summary of what happened.
        </p>
        <div class="image-container">
            <img src="{{ url_for('static', filename = 'blog/001/resume_command.png') }}" style="max-width: 50%; border-radius: 2px;"/>
            <figcaption>In Portuguese "resume" means "summarize"</figcaption>
        </div>
        <p>
            To build it I used LangChain and the cheaper gpt-3.5-turbo API (e.g., ChatGPT). I keep a rotating list of the last 50 messages that happened in our group. When the command is called, I send those to OpenAI to get a summary back.
        </p>
        <p>
            Here's the core part of that code:
        </p>
        <pre># src/bot/summarizer/main.py

LLM_CHAT = ChatOpenAI()

def get_summary(
    list_of_messages: list[Message],
) -> str:
    """
    Fetches the summary for the last 50 messages
    """

    formatted_list_of_message = "\n".join([str(m) for m in list_of_messages])
    formatted_list_of_message = truncate_text(formatted_list_of_message)

    system_template = """
You are an assistant helping friends catch up in a busy chat group. Your goal is to help friends in this group stay up to date without having to read all the messages.

You will receive a recent conversation that happened in the group. Respond immediately with a short and concise summary of the conversation.
The summary should have the following characteristics:
- Should be in Portuguese
- Should have a tone that is similar to the conversation, act like you are part of the group
- Use 3 sentences or less
- Don't be too general, mention who said what
"""

    human_template = """
CONVERSATION BLOCK START
{list_of_messages}
CONVERSATION BLOCK END
"""

    system_message_prompt = SystemMessagePromptTemplate.from_template(
        system_template
    )
    human_message_prompt = HumanMessagePromptTemplate.from_template(
        human_template
    )

    chat_prompt = ChatPromptTemplate.from_messages(
        [system_message_prompt, human_message_prompt]
    )

    chat_chain = LLMChain(llm=LLM_CHAT, prompt=chat_prompt, verbose=True)

    response = chat_chain.run(
        {
            "list_of_messages": formatted_list_of_message,
        },
    )

    logger.info("\nResponse:\n {}", response)

    return response</pre>
        <p>
            Most of my friends really liked the /resume command. Some however, showed concerns regarding AI and how these things are super scary. After those comments, one thing was obvious: I needed to build something even funnier.
        </p>
        <h2>Impersonate a user with <code>/fake @username</code></h2>
        <p>
            What if the bot could impersonate any of my friends in the group chat? What if I could ask the bot to answer a question just like the person X would?
        </p>
        <p>
            Enter the <code>/fake @username &lt;insert question&gt;</code> command. With it, you can impersonate anyone on the group chat (cough, my friends), and ask it to answer just like that person would! Here's the command in action:
        </p>
        <p>
            Although not as useful as the summarization command, it's actually a bit more complex to build.
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
