{% set type = "business.business" %}
{% set title = "Hive Solutions" %}
{% set author = "Hive Solutions" %}
{% set description = "A Hive Solutions representa uma nova geração de desenvolvimento de software. Focámo-nos na simplicidade, e interessamo-nos profundamente com o que construímos." %}
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
