<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.model.User" %>
<!DOCTYPE html>
<html>
<head>
<title>Account</title>
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
			<%
				User user = (User)session.getAttribute("user");
			%>
			<h2 class="account-in">
				个人信息&nbsp; &nbsp; &nbsp;
			</h2>
				<form action="UserServlet" method="post" >
					<div> 	
						<span class="text">手机号</span>
						<input type="text" name="phone" readonly="readonly" autocomplete="off" value="<%=user.getPhone() %>"> 
					</div>
					
					<div> 	
						<span class="text">用户名*</span>
						<input type="text" name="username" required autocomplete="off" value="<%=user.getUsername() %>"> 
					</div>			
					
					<div> 
						<span class="text">性别*</span>
						<select id="sex" name="sex" >
								<option <% if(user.getSex().equals("男")){%> selected <% } %>>男</option>
								<option <% if(user.getSex().equals("女")){%> selected <% } %>>女</option>
						</select>
					</div>	
					
					<div> 
						<span class="word">身份证*</span>
						<input type="password" name="idcard" required value="<%=user.getIdcard() %>">
					</div>	
						<input type="hidden" name="action" value="editInformation" >			
						<input type="submit" value="确认"> 
				</form>
		</div>
	</div>
	<%@ include file="footer.jsp" %>	
</body>
</html>