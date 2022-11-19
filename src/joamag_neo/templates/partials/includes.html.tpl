<!-- css inclusion -->
<link rel="stylesheet" type="text/css" href="{{ touch('//libs.bemisc.com/uxf/css/ux-min.css') }}" />
<link rel="stylesheet" type="text/css" href="{{ touch('//libs.bemisc.com/layout/css/layout.typo.css') }}" />
<link rel="stylesheet" type="text/css" href="{{ url_for('static', filename = 'css/domain.css') }}" />

<!-- favicon inclusion -->
<link rel="shortcut icon" href="{{ url_for('static', filename = 'images/favicon.ico') }}" />

<!-- javascript inclusion -->
<script type="text/javascript" src="{{ touch('//ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js') }}"></script>
<script type="text/javascript" src="{{ touch('//libs.bemisc.com/uxf/js/ux-min.js') }}"></script>
<script type="text/javascript" src="{{ url_for('static', filename = 'js/main.js', compress = 'js') }}"></script>
