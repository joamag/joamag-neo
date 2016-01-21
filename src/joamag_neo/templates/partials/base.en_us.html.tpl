{% set type = "business.business" %}
{% set title = "Hive Solutions" %}
{% set author = "Hive Solutions" %}
{% set description = "Hive Solutions is a next-generation software boutique, built by perfectionists. We keep things simple, and care deeply about what we build, to the core." %}
{% set keywords = "software development,ios development,full stack development,developers" %}
{% set street_address = "Rua 31 de Janeiro, 190A 3º Dto." %}
{% set locality = "Porto" %}
{% set postal_code = "4000-542" %}
{% set country = "Portugal" %}
{% set latitude = "41.146117" %}
{% set longitude = "-8.607893" %}
{% if htitle %}{% set title = htitle + " - " + title %}{% endif %}
{% if hdescription %}{% set description = hdescription %}{% endif %}
{% block html scoped %}{% endblock %}
