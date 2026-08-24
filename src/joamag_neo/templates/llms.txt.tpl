{%- set name = config.conf("NAME")|default("João Magalhães", True) -%}
{%- set email = config.conf("EMAIL")|default("joao@joao.me", True) -%}
{%- set github = config.conf("GITHUB")|default("joamag", True) -%}
{%- set resume = config.conf("RESUME")|default("resume.joao.me", True) -%}
# {{ name }}

> Old school software engineer and technology enthusiast. Co-founder and Chief Executive Officer at Hive Solutions, previously Co-founder and Chief Technology Officer at Platforme. Creator of Appier, Netius and Colony framework.

## Pages

- [About]({{ url_for('base.index', absolute = True) }}): Profile, contacts and links.
- [Blog]({{ url_for('base.blog', absolute = True) }}): Posts about software, open source and side projects.
- [Résumé](https://{{ resume }}): Detailed professional experience.

## Projects

- [Appier](https://github.com/hivesolutions/appier): WSGI and ASGI Python web framework, with batteries included.
- [Netius](https://github.com/hivesolutions/netius): Asynchronous networking library with everything imaginable.
- [Colony](https://github.com/hivesolutions/colony): A Python plugin based component framework.
- [Boytacean](https://github.com/joamag/boytacean): Fast and safe Game Boy emulator written in Rust.

## Contact

- Email: {{ email }}
- GitHub: https://github.com/{{ github }}
