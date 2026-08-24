{% set same_as = [
    "https://github.com/" + github,
    "https://gitlab.com/" + gitlab,
    "https://linkedin.com/in/" + linkedin,
    "https://x.com/" + twitter,
    "https://bsky.app/profile/" + bluesky,
    "https://keybase.io/" + keybase
] %}
<script type="application/ld+json">
{
    "@context": "https://schema.org",
    "@type": "Person",
    "name": {{ name|tojson }},
    "alternateName": "Neo",
    "url": {{ url_for('base.index', absolute = True)|tojson }},
    "image": {{ url_for('static', filename = 'images/avatar_neo.png', absolute = True, touch = False)|tojson }},
    "email": {{ ("mailto:%s" % email)|tojson }},
    "description": {{ description|tojson }},
    "jobTitle": {{ job_title|tojson }},
    "worksFor": {
        "@type": "Organization",
        "name": {{ company|tojson }},
        "url": {{ company_url|tojson }}
    },
    "address": {
        "@type": "PostalAddress",
        "streetAddress": {{ street_address|tojson }},
        "addressLocality": {{ locality|tojson }},
        "postalCode": {{ postal_code|tojson }},
        "addressCountry": {{ country_code|tojson }}
    },
    "knowsAbout": {{ knows_about|tojson }},
    "sameAs": {{ same_as|tojson }}
}
</script>
