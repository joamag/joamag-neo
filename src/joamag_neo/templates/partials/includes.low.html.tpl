<!-- css inclusion -->
<link rel="stylesheet" type="text/css" href="{{ touch('//libs.bemisc.com/uxf/css/ux-min.css') }}" />
<link rel="stylesheet" type="text/css" href="{{ touch('//libs.bemisc.com/layout/css/layout.typo.css') }}" />
<link rel="stylesheet" type="text/css" href="{{ url_for('static', filename = 'css/domain.css') }}" />

<!-- javascript inclusion -->
<script type="text/javascript" async="1" defer="1" src="{{ touch('//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js') }}"></script>
<script type="text/javascript" async="1" defer="1" src="{{ touch('//libs.bemisc.com/uxf/js/ux-min.js') }}"></script>
<script type="text/javascript" async="1" defer="1" src="{{ url_for('static', filename = 'js/main.js', compress = 'js') }}"></script>
