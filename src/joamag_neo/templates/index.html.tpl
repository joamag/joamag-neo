{% extends "partials/layout.en_us.html.tpl" %}
{% block content %}
    <div id="head" class="panel resizable grey head">
        <div class="panel-container center">
            <h4>Unique software solutions for your business</h4>
            <h1>
                Beautiful<br/>
                Software<br/>
                Design
            </h1>
            <h3>
                <span class="orange">Hive Solutions</span> is a next-generation software boutique, built by perfectionists.<br/>
                We keep things simple, and care deeply about what we build, to the core.
            </h3>
        </div>
        <div class="keyboard-container">
            <div class="keyboard">
                Use your keyboard
            </div>
        </div>
    </div>
    <div id="about" class="panel texture red about">
        <div class="header-container">
            <h1>About</h1>
        </div>
        <div class="panel-wrapper">
            <div class="panel-container center">
                <p class="block-text block-left">
                    We are software perfectionists, we care about what we build, and how we build it.
                    We are pragmatic, we care about what works, not about the hype. Our code is as clean
                    as our UX, we build for the long run.
                </p>
                <p class="block-text block-right">
                    Have a problem and need help finding or implementing a solution?
                    Have an idea but your organization lacks the resources?
                    <a href="#contacts" class="link" data-duration="500">Talk with us</a>, we can help!
                </p>
                <div class="block-clear"></div>
            </div>
        </div>
    </div>
    <div id="services" class="panel texture blue services">
        <div class="panel-container wide center">
            <h1>Services</h1>
            <ul class="services">
                <li>
                    <img class="icon" src="{{ url_for('static', filename = 'images/icons/icon-1.png') }}" />
                    <div class="service-contents">
                        <h2>Mobile</h2>
                        <p>
                            Have an idea for an App? Need someone to turn it into reality?
                            Want it to run on an iPhone, iPad, Apple Watch or Android device?
                            <a href="#contacts" class="link" data-duration="500">Get in touch!</a>
                        </p>
                    </div>
                </li>
                <li>
                    <img class="icon" src="{{ url_for('static', filename = 'images/icons/icon-2.png') }}" />
                    <div class="service-contents">
                        <h2>Web</h2>
                        <p>
                            Want a shiny Web App that reliably serves your crowds of raving fans,
                            day in and day out? Want it to easily scale to serve increasing traffic?
                            <a href="#contacts" class="link" data-duration="500">Get in touch!</a>
                        </p>
                    </div>
                </li>
                <li>
                    <img class="icon" src="{{ url_for('static', filename = 'images/icons/icon-3.png') }}" />
                    <div class="service-contents">
                        <h2>Enterprise</h2>
                        <p>
                            Want to take your organization to the next level? Want to make your
                            business processes leaner and more efficient? We can build the next-generation
                            App that will make it happen.
                            <a href="#contacts" class="link" data-duration="500">Get in touch!</a>
                        </p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    {% if own.config.show_work %}
        <div id="work" class="panel texture work" data-fast="1">
            <div class="work-container">
                {% for name, project in projects.items() %}
                    <div class="project texture {{ project.color|default('blue', True) }}">
                        <div class="image-container"
                             style="background-image:url({{ url_for('base.resource', project = name, resource = 'images/background.jpg') }});
                             background-position:{{ project.background_position|default('center center', True) }};"></div>
                        <div class="header-container"></div>
                        <div class="item-container">
                            <img class="item" src="{{ url_for('base.resource', project = name, resource = 'images/screen.png') }}" />
                        </div>
                        <div class="panel-wrapper">
                            <div class="panel-container center" data-position="top">
                                <h2>{{ project.title }}</h2>
                                <p class="block-text">
                                    {{ project.description.en_us }}
                                </p>
                                <p class="block-text">
                                    {% for device in project.devices|default([], True) %}
                                        <span class="device {{ device }}"></span>
                                    {% endfor %}
                                    {% if project.link %}
                                        <a href="{{ project.link }}">Visit Website</a>
                                    {% endif %}
                                </p>
                            </div>
                        </div>
                    </div>
                {% endfor %}
                <div class="clear"></div>
            </div>
            <div class="arrow-container">
                <div class="arrow arrow-left"></div>
                <div class="arrow arrow-right"></div>
            </div>
        </div>
    {% endif %}
    <div id="contacts" class="panel texture green contacts">
        <div class="panel-container wide center">
            <h1>Contacts</h1>
            <p class="label-text label-left">
                Rua 31 de Janeiro, 190A 3 Dto.<br/>
                4000-542 Porto<br/>
                PORTUGAL
            </p>
            <p class="label-text label-right">
                +351 223 325 802<br/>
                <a href="mailto:hello@hive.pt">hello@hive.pt</a><br/>
                <a href="mailto:development@hive.pt">development@hive.pt</a>
            </p>
            <div class="label-clear"></div>
            <p class="label-text label-small label-left label-copyright">
                &copy; 2008-2015 Hive Solutions Lda.
            </p>
            <p class="label-text label-small label-right label-social">
                <a class="image-link" href="http://github.com/hivesolutions" target="_blank">
                    <img class="social" src="{{ url_for('static', filename = 'images/social/github.png') }}"
                         srcset="{{ url_for('static', filename = 'images/social/github-2x.png') }} 2x" />
                </a>
                <a class="image-link" href="https://www.linkedin.com/company/hive-solutions" target="_blank">
                    <img class="social" src="{{ url_for('static', filename = 'images/social/linkedin.png') }}"
                         srcset="{{ url_for('static', filename = 'images/social/linkedin-2x.png') }} 2x" />
                </a>
            </p>
            <div class="label-clear"></div>
           </div>
    </div>
{% endblock %}
