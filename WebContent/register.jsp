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
			<h2 class="account-in">账户</h2>
				<form  role="form" method="post" action="RegisterServlet">
					<div class="form-group">
						 <label for="sid">手机号*</label><input type="text" class="form-control" id="sid" name="sid" />
					</div>
					<div class="form-group">
						 <label for="sname">用户名*</label><input type="tel" class="form-control" id="sname" name="sname" />
					</div>
					<div class="form-group">
						 <label for="age">密码*</label><input type="password" class="form-control" id="age" name="age"/>
					</div>
					<div class="form-group">
						 <label for="sex">性别*</label>
						 
						 <select class="form-control" id="sex" name="sex" >
							<option>男</option>
							<option>女</option>
						 </select>
					</div>
					
					
					<div class="form-group">
						 <label for="major">身份证号*</label><input type="text" class="form-control" id="major" name="major" />
					</div>
					<input type="hidden" name="action" value="register">	
							
					<input type="submit" value="注册"> 
				</form>
				
		</div>
	</div>
	<%@ include file="footer.jsp" %>		
</body>
</html>