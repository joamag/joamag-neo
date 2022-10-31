{% set type = type|default("website", True) %}
{% set title = title|default("João Magalhães", True) %}
{% set author = author|default("João Magalhães", True) %}
{% set description = description|default("Entrepreneur, software developer and technology enthusiast. Co-founder of Hive Solutions and VP of Engineering at Platforme. Creator of Appier, Netius and Colony framework.", True) %}
{% set keywords = keywords|default("software development,ios development,full stack development,developers", True) %}
{% set twitter = twitter|default("joamag", True) %}
{% set street_address = street_address|default("Rua 31 de Janeiro, 190A 3º Dto.", True) %}
{% set locality = locality|default("Porto", True) %}
{% set postal_code = postal_code|default("4000-542", True) %}
{% set country = country|default("Portugal", True) %}
{% set latitude = latitude|default("41.146117", True) %}
{% set longitude = longitude|default("-8.607893", True) %}
{% set copyright = owner.copyright|default(copyright, True)|default("João Magalhães", True) %}
{% set copyright_year = owner.copyright_year|default(copyright_year, True)|default("2008-2022", True) %}
{% if htitle %}{% set title = htitle + " - " + title %}{% endif %}
{% if hdescription %}{% set description = hdescription %}{% endif %}
{% block html scoped %}{% endblock %}
