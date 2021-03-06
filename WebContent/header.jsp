<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">	
				<div class="header-top-in">			
					<div class="logo">
						<a href="index.jsp"><img src="images/logo.png" alt=" " ></a>
					</div>
					<div class="header-in">
						<ul class="icon1 sub-icon1">
						
							<li><c:if test="${sessionScope.user==null}"><a href="login.jsp">登录</a></c:if></li>
							<li ><a href="#" > 购物车</a></li>
			                <li ><a href="#"><c:if test="${sessionScope.user!=null}">欢迎： ${sessionScope.user.username}</c:if></a>
			                	<ul class="drop_down2_content2">
				                	<li><a href="UserServlet?action=searchInformation">个人信息</a></li>
				                    <li><a href="UserServlet?action=toEditPassword">密码修改</a></li>
				                    <li><a href="UserServlet?action=exit">退出</a></li>
			                    </ul>
			           	 	</li>
							<li><c:if test="${sessionScope.user!=null}"><a href="addgoods.jsp">上架商品</a></c:if></li>
							<li><a href="#" > </a></li>
							<li><div class="cart">
									<a href="#" class="cart-in"> </a>
									<span> 0</span>
								</div>
							<ul class="sub-icon1 list">
						  	<h3>最近增加的商品(2)</h3>
						  	<div class="shopping_cart">
							  <div class="cart_box">
							   	 <div class="message">
							   	     <div class="alert-close"> </div> 
					                	<div class="list_img"><img src="images/14.jpg" class="img-responsive" alt=""></div>
								    	<div class="list_desc"><h4><a href="#">照相机</a></h4>1 x<span class="actual">
		                             	$12.00</span></div>
		                              <div class="clearfix"></div>
	                              </div>
	                            </div>
	                            <div class="cart_box1">
								  <div class="message1">
							   	     <div class="alert-close1"> </div> 
					                <div class="list_img"><img src="images/15.jpg" class="img-responsive" alt=""></div>
								    <div class="list_desc"><h4><a href="#">手机</a></h4>1 x<span class="actual">
		                             $12.00</span></div>
		                              <div class="clearfix"></div>
	                              </div>
	                            </div>
	                        </div>
	                        <div class="total">
	                        	<div class="total_left">总价 : </div>
	                        	<div class="total_right">$250.00</div>
	                        	<div class="clearfix"> </div>
	                        </div>
                            <div class="login_buttons">
							  <div class="check_button"><a href="checkout.html">退出</a></div>
							  <div class="clearfix"></div>
						    </div>
					      <div class="clearfix"></div>
						</ul>
							</li>
						</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			</div>
		</div>
		<div class="header-bottom">
		<div class="container">
			<div class="h_menu4">
				<a class="toggleMenu" href="#">菜单</a>
				<ul class="nav">
					<li class="active"><a href="index.jsp"><i> </i>首页</a></li>
					
					<li><a href="GoodsServlet?action=query" >  所有产品</a></li>
					<li ><a href="GoodsServlet?action=query" >数码产品</a></li> 						
					<li><a href="GoodsServlet?action=query" >  办公产品</a></li>            
					<li><a href="GoodsServlet?action=query" >生活用品</a></li>						  				 
					<li><a href="GoodsServlet?action=query" >图书</a></li>
					<li><a href="#" >其他</a></li>
					<li><a href="#" >  其他 </a></li>
					<li><a href="contact.html" >联系我们 </a></li>
					
				</ul>
				<script type="text/javascript" src="js/nav.js"></script>
			</div>
		</div>
		</div>
		<div class="header-bottom-in">
			<div class="container">
			<div class="header-bottom-on">
			<p class="wel"><a href="register.jsp">注册</a></p>
			
			<div class="header-can">
				<ul class="social-in">
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i class="facebook"> </i></a></li>
						<li><a href="#"><i class="twitter"> </i></a></li>					
						<li><a href="#"><i class="skype"> </i></a></li>
					</ul>						
					<div class="search">
						<form action="GoodsServlet" method="post">
							
							<input type="text" name="gname" value="查找商品 " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >
							<input type="hidden" name="action" value="query">
							<input type="submit" value="">
						</form>
					</div>
					
					<div class="clearfix"> </div>
			</div>
			<div class="clearfix"></div>
		</div>
		</div>
		</div>
	</div>