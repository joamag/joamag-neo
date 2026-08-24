{% if analytics_id %}
    <script async src="https://www.googletagmanager.com/gtag/js?id={{ analytics_id }}"></script>
    <script type="text/javascript">
      window.dataLayer = window.dataLayer || [];
      function gtag() { window.dataLayer.push(arguments); }
      gtag("js", new Date());
      gtag("config", "{{ analytics_id }}");
    </script>
{% endif %}
