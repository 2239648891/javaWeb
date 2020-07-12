<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.useso.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>
<!--slider-script-->
		<script src="js/responsiveslides.min.js"></script>
			<script>
				$(function () {
				  $("#slider1").responsiveSlides({
					auto: true,
					speed: 500,
					namespace: "callbacks",
					pager: true,
				  });
				});
			</script>
<!--//slider-script-->
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.message1').fadeOut('slow', function(c){
	  		$('.message1').remove();
		});
	});	  
});
</script>
</head>
<body>
  	<%@ include file="header.jsp" %>
	<div class="banner-mat">
		<div class="container">
			<div class="banner">
	
				<!-- Slideshow 4 -->
			   <div class="slider">
					<ul class="rslides" id="slider1">
					  <li><img src="images/banner.jpg" alt="">
					  </li>
					  <li><img src="images/banner1.jpg" alt="">
					  </li>
					  <li><img src="images/banner.jpg" alt="">
					  </li>
					  <li><img src="images/banner2.jpg" alt="">
					  </li>
					</ul>
				</div>

				<div class="banner-bottom">
					<div class="banner-matter">
						<p>特价商品$9.99</p> 
						<a href="single.html" class="hvr-shutter-in-vertical ">抢购</a>
					</div>
					<div class="purchase">
						<a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">购买</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>				
			<!-- //slider-->
		</div>
	</div>
		<!---->
		<div class="container">
			<div class="content">
				<div class="content-top">
					<h3 class="future">精选</h3>
					<div class="content-top-in">
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a href="single.html"><img  src="images/pi.jpg" alt="" /></a>	
								<div class="top-content">
									<h5><a href="single.html">T恤</a></h5>
									<div class="white">
										<a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">加入购物车</a>
										<p class="dollar"><span class="in-dollar">$</span><span>2</span><span>0</span></p>
										<div class="clearfix"></div>
									</div>

								</div>							
							</div>
						</div>
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a href="single.html"><img  src="images/pi1.jpg" alt="" />	</a>
								<div class="top-content">
									<h5><a href="single.html">Bite Me</a></h5>
									<div class="white">
										<a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">加入购物车</a>
										<p class="dollar"><span class="in-dollar">$</span><span>3</span><span>0</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div>
						</div>
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a href="single.html"><img  src="images/pi2.jpg" alt="" /></a>	
								<div class="top-content">
									<h5><a href="single.html">Little Fella</a></h5>
									<div class="white">
										<a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">加入购物车</a>
										<p class="dollar"><span class="in-dollar">$</span><span>5</span><span>0</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div>
						</div>
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a href="single.html"><img  src="images/pi3.jpg" alt="" /></a>	
								<div class="top-content">
									<h5><a href="single.html">Astral Cruise</a></h5>
									<div class="white">
										<a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">加入购物车</a>
										<p class="dollar"><span class="in-dollar">$</span><span>4</span><span>5</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div>
						</div>
					<div class="clearfix"></div>
					</div>
				</div>
				<!---->
				<div class="content-middle">
					<h3 class="future">知名品牌</h3>
					<div class="content-middle-in">
					<ul id="flexiselDemo1">			
						<li><img src="images/ap.png"/></li>
						<li><img src="images/ap1.png"/></li>
						<li><img src="images/ap2.png"/></li>
						<li><img src="images/ap3.png"/></li>
					
					</ul>
            		<script type="text/javascript">
						$(window).load(function() {
							$("#flexiselDemo1").flexisel({
								visibleItems: 4,
								animationSpeed: 1000,
								autoPlay: true,
								autoPlaySpeed: 3000,    		
								pauseOnHover: true,
								enableResponsiveBreakpoints: true,
						    	responsiveBreakpoints: { 
						    		portrait: { 
						    			changePoint:480,
						    			visibleItems: 1
						    		}, 
						    		landscape: { 
						    			changePoint:640,
						    			visibleItems: 2
						    		},
						    		tablet: { 
						    			changePoint:768,
						    			visibleItems: 3
						    		}
						    	}
						    });
						    
						});
					</script>
					<script type="text/javascript" src="js/jquery.flexisel.js"></script>

					</div>
				</div>
				<!---->
			
				
			</div>
		</div>
	<%@ include file="footer.jsp" %>
</body>
</html>