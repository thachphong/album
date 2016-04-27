{{ get_doctype() }}
<html lang="en" id="site" dir="ltr">
	<head>
        <meta charset="utf-8">
        {{ get_title() }}      
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Your invoices">
        <meta name="author" content="Phalcon Team">
        <link rel='stylesheet' id='Roboto-css'  href='http://fonts.googleapis.com/css?family=Roboto' type='text/css' media='all' />
        {{ stylesheet_link('template1/css/style.css') }}
        {{ stylesheet_link('template1/css/swipemenu.css') }}
        {{ stylesheet_link('template1/css/flexslider.css') }}
        {{ stylesheet_link('template1/css/bootstrap.css') }}
        {{ stylesheet_link('template1/css/bootstrap-responsive.css') }}
        {{ stylesheet_link('template1/css/jquery.simplyscroll.css') }}
        {{ stylesheet_link('template1/css/jPages.css') }}
        {{ stylesheet_link('template1/css/jquery.rating.css') }}
        {{ stylesheet_link('template1/css/ie.css') }}
        {{ stylesheet_link('template1/css/style.css') }}
        {{ stylesheet_link('template1/css/style.css') }}

        {{ javascript_include('template1/js/jquery-1.10.2.min.js') }}
        {{ javascript_include('template1/js/html5.js') }}
        {{ javascript_include('template1/js/bootstrap.min.js') }}
        {{ javascript_include('template1/js/jquery.flexslider.js') }}
        {{ javascript_include('template1/js/jquery.flexslider.init.js') }}
        {{ javascript_include('template1/js/jquery.bxslider.js') }}
        {{ javascript_include('template1/js/jquery.bxslider.init.js') }}
        {{ javascript_include('template1/js/jquery.rating.js') }}
        {{ javascript_include('template1/js/jquery.idTabs.min.js') }}
        {{ javascript_include('template1/js/jquery.simplyscroll.js') }}
        {{ javascript_include('template1/js/fluidvids.min.js') }}
        {{ javascript_include('template1/js/jPages.js') }}
        {{ javascript_include('template1/js/jquery.sidr.min.js') }}
        {{ javascript_include('template1/js/jquery.touchSwipe.min.js') }}
        {{ javascript_include('template1/js/custom.js') }}

    </head>
	<body>		
        <div id="page">
        {% include "includes/menu.volt" %}
        {{ content() }}   
        </div>
	</body>
</html>
