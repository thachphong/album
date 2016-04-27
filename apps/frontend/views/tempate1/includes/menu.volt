	<header id="header" class="container">
		<div id="mast-head">
			<div id="logo">
			<a href="index.html" title="Magazine" rel="home"><img src="public/template1/images/logo.png" alt="Magazine" /></a>
			</div>
		</div>

				
        <nav class="navbar navbar-inverse clearfix nobot">
						
			<a id="responsive-menu-button" href="#swipe-menu">
			  <span class="icon-bar"></span>
			  <span class="icon-bar"></span>
			  <span class="icon-bar"></span>		
			</a>	

            <!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
            <div class="nav-collapse" id="swipe-menu-responsive">

			<ul class="nav">
				
				<li>
				<span id="close-menu">
					<a href="#" class="close-this-menu">Close</a>
						<script type="text/javascript">
							jQuery('a.sidr-class-close-this-menu').click(function(){
								jQuery('div.sidr').css({
									'right': '-476px'
								});
								jQuery('body').css({
								'right': '0'
								});							
							});
						</script>
					
				</span>
				</li>
								
				<li><a href="index.html"><img src="public/template1/images/home.png" alt="Magazine"></a></li>
				<?php AlbumOrama\Models\Menus::getMenu() ?>
			</ul>
            </div><!--/.nav-collapse -->
			
        </nav><!-- /.navbar -->
			
	</header><!-- #masthead -->