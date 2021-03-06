<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>register</title>
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
		<div class="account">
			<h2 class="account-in">添加商品</h2>
				<form role="form" enctype="multipart/form-data" method="post" action="GoodsServlet">
					<div class="form-group">
							 <label for="gname">商品名</label><input type="text" required class="form-control" id="gname" name="gname" />
						</div>
						<div class="form-group">
							 <label for="number">商品数量</label><input type="text" required class="form-control" id="number" name="number" />
						</div>
						<div class="form-group">
							 <label for="price">单价</label><input type="text" required class="form-control" id="price" name="price"/>
						</div>
						<div class="form-group">
							 <label for="type">商品类别</label>
							 
							 <select class="form-control" id="type" name="type" >
								<option>图书</option>
								<option>数码产品</option>
								<option>办公用品</option>
								<option>生活用品</option>
								<option>其他</option>
							 </select>
						</div>
						<div class="form-group">
							 <label for="picture">商品照片</label><input type="file" required class="form-control" id="picture" name="picture" />
						</div>						
						<div class="form-group">
							 <label for="presentation">商品描述</label><input type="text" required class="form-control" id="presentation" name="presentation" />
						</div>
												
						<input type="hidden" name="action" value="addGoods">
							
						<input type="submit" value="添加"> 
					</form>
				
		</div>
	</div>
	<%@ include file="footer.jsp" %>		
</body>
</html>