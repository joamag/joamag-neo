<meta property="og:type" content="{{ type }}" />
<meta property="og:site_name" content="{{ title }}" />
<meta property="og:title" content="{{ title }}" />
<meta property="og:description" content="{{ description }}" />
<meta property="og:url" content="{{ url_for('location', absolute = True) }}" />
<meta property="og:image" content="{{ url_for('static', filename = 'images/logo-og.jpg', absolute = True, touch = False) }}" />
<meta property="business:contact_data:street_address" content="{{ street_address }}" />
<meta property="business:contact_data:locality" content="{{ locality }}" />
<meta property="business:contact_data:postal_code" content="{{ postal_code }}" />
<meta property="business:contact_data:country_name" content="{{ country }}" />
<meta property="place:location:latitude" content="{{ latitude }}" />
<meta property="place:location:longitude" content="{{ longitude }}" />
