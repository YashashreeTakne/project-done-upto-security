<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags" %>
<%@ page isELIgnored="false"%>

<spring:url value="/resources/css" var="css"/>
<spring:url value="/resources/js" var="js"/>
<spring:url value="/resources/images" var="img"/>
<spring:url value="/resources/fonts" var="fonts"/>

<%-- alternative to use c:url --%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<title>Stationary Needs</title>

<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- //for-mobile-apps -->
<link rel="stylesheet" href="${css}/bootstrap.min.css">
 
<link href="${css}/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${css}/style.css" rel="stylesheet" type="text/css" media="all" />

<!-- font-awesome icons -->
<link href="${css}/font-awesome.css" rel="stylesheet" type="text/css" media="all" /> 
<!-- //font-awesome icons -->
<link rel="stylesheet" type="text/css" href="http://cdn.webrupee.com/fonts">
<!-- js -->
<script src="${js}/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//${fonts}.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='//${fonts}.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${js}/move-top.js"></script>
<script type="text/javascript" src="${js}/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- header -->
	<div class="agileits_header">
		<div class="w3l_offers">
			<a href="products.html">Today's special Offers !</a>
		</div>
		
<!-- search -->
		<div class="w3l_search">
			<form action="#" method="post">
				<input type="text" name="Product" value="Search a product..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search a product...';}" required/>
				<input type="submit" value=" ">
			</form>
		</div>

<!-- cart -->
<c:if test="${pageContext.request.userPrincipal.name != null}">
 <security:authorize ifAnyGranted="ROLE_ADMIN">
		<div class="product_list_header">    
			<span class="glyphicon glyphicon-shopping-cart my-cart-icon"><span class="badge badge-notify my-cart-badge"></span></span>
		</div>
</security:authorize>
</c:if>

                            <c:if test="${pageContext.request.userPrincipal.name != null}">
 								<security:authorize ifAnyGranted="ROLE_ADMIN">
                                 <li><a href="<c:url value="/admin" />">Admin</a></li>
                            </security:authorize>
                            </c:if>
<!-- login + sign up-->
	
<div class="w3l_header_right">
			<ul>
				<li class="dropdown profile_details_drop">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i><span class="caret"></span></a>
					<div class="mega-dropdown-menu">
						<div class="w3ls_vegetables">
							<ul class="dropdown-menu drp-mnu">
														
								<!--  User has logged in  -->
					<c:if test="${pageContext.request.userPrincipal.name != null}">
	                            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
	                            <li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>
					</c:if>
					
					
											<!--  when the user not logged in -->
					<c:if test="${pageContext.request.userPrincipal.name == null}">
								<li><a href="<c:url value="/login" />">Login</a></li> 
								<li><a href="<c:url value="/register" />">Sign Up</a></li>
					</c:if>
							</ul>			
						</div>                  
					</div>	
				</li>
			</ul>
		</div>	
	                    
	        <div class="w3l_header_right1">
			<h2><a href="contact">Contact Us</a></h2>
		</div>
		<div class="clearfix"> </div>
	</div>
<!-- script-for sticky-nav -->
	<script>
	$(document).ready(function() {
		 var navoffeset=$(".agileits_header").offset().top;
		 $(window).scroll(function(){
			var scrollpos=$(window).scrollTop(); 
			if(scrollpos >=navoffeset){
				$(".agileits_header").addClass("fixed");
			}else{
				$(".agileits_header").removeClass("fixed");
			}
		 });
		 
	});
	</script>
<!-- //script-for sticky-nav -->
	<div class="logo_products">
		<div class="container">
			<div class="w3ls_logo_products_left">
				<h1><a href="Hello"><span>Stationary</span> Needs</a></h1>
			</div>
			<div class="w3ls_logo_products_left1">
				<ul class="special_items">
			
					<li><a href="<c:url value="categorys"></c:url>">Events</a><i>|</i></li>
					<li><a href="about">About Us</a><i>|</i></li>
					<li><a href="/product/productList">Best Deals</a><i>|</i></li>
					<li><a href="suppliers">Suppliers</a><i>|</i></li>
					
<!-- 					 User has logged in  -->
		<c:if test="${pageContext.request.userPrincipal.name!=null}">
				<c:if test="${pageContext.request.userPrincipal.name != null}">
 						<security:authorize ifAnyGranted="ROLE_ADMIN">
					<li><a href="<c:url value="/Hello"></c:url>">Home</a><i>|</i></li>			
<!-- 					<li><a href="/admin/product/add">Add Products</a><i>|</i></li> -->
<!-- 					<br><br> -->
					<li><a href="/admin/addCategory">Add Categories</a><i>|</i></li>
					<li><a href="/admin/addSupplier">Add Suppliers</a><i>|</i></li>
					<li><a href="/product/productList">Get All Products</a><i>|</i></li>
		            </security:authorize>
				</c:if>
					<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
	                
	    </c:if>
				</ul>
			</div>
			<div class="w3ls_logo_products_left1">
				<ul class="phone_email">
					<li><i class="fa fa-phone" aria-hidden="true"></i>(+0123) 234 567</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="mailto:stationeryneed@gmail.com">stationeryneed@gmail.com</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->