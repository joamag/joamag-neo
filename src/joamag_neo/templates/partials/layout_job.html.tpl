{% extends "partials/layout.en_us.html.tpl" %}
{% block body_extras %}{{ super() }} fixed white{% endblock %}
{% block content scoped %}
    <div class="flow-header {{ color }}">
        <div class="flow-header-container">
            <h1>{{ position }}</h1>
            <h2>{{ location }}</h2>
            {% if not closed %}
                <p class="link">
                    <a href="{{ url_for('job._print', id = job_id) }}" target="_blank">Print Description</a>
                </p>
            {% endif %}
        </div>
    </div>
    <div class="flow {% if closed %}double{% endif %}">
        {% if not closed %}
            {% block description %}
                <h2>Who we are</h2>
                <div class="description">
                    <p>
                        We're different! We've been around for a long time, seven years and counting, long before the
                        startup entrepreneurship trend started popping up in Porto, and from the very beginning, we've
                        relentlessly pursued the dream of coding for perfection as opposed to focusing only on shipping
                        regardless of quality. If you're in the industry, you know that's a tough act to follow. We
                        have one of the biggest open-source technology portfolios in Portugal, and at the same time,
                        we're thriving and growing as a business!
                    </p>
                </div>
            {% endblock %}
        {% else %}
            {% block closed %}
                <h2>Close, but no cigar! </h2>
                <div class="description">
                    <p>
                        Sorry, but this offer is now closed. You can still try out for other open positions available
                        <a href="{{ url_for('job.list') }}">here</a>.
                    </p>
                    <p>
                        If you really wanted this position and are confident that you were the best match, then improvise
                        and impress us! We're always looking for exceptional talent, so we may be able to open up a new
                        position just for you.
                    </p>
                </div>
            {% endblock %}
        {% endif %}
        {% if not closed %}
            <div class="finale">
                <p>
                    to apply send us an email to <a href="mailto:joinus@hive.pt?subject={{ position }}">joinus@hive.pt</a>
                </p>
            </div>
        {% endif %}
    </div>
{% endblock %}
