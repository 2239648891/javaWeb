<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Products</title>
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
	
		<div class="container">
			<div class="products">
					<h2 class=" products-in">商品展示</h2>
					
					<div class=" top-products">
						<c:forEach items="${goods}" var="good">
							<div class="col-md-3 md-col" style="margin-bottom:20px">
								<div class="col-md">
									<a href="single.jsp" class="compare-in"><img width="300px" height="240px" src="images/${good.picture }" alt="赶紧买" />	
									
									</a>
									<div class="top-content">
										<h5><a href="single.jsp"> ${good.gname }</a>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;商品数量: ${good.number }
										</h5>
										<div class="white">
											<a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">添加到购物车</a>
											<p class="dollar"><span class="in-dollar">$</span><span> ${good.price }</span>
											<div class="clearfix"></div>
										</div>
									</div>							
								</div>
							</div>
							
						
						</c:forEach>
						<div class="clearfix"></div>
						
						
						<%=request.getAttribute("pageutil") %>
					</div>
			</div>
		</div>
		<%@ include file="footer.jsp" %>
</body>
</html>