<%@include file="shared/header.jsp" %>

<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="Hello">Home</a><span>|</span></li>
				<li>Product List</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->

<%@include file="shared/nav.jsp" %>
<H1> All Products</H1>
	<!--  use JSTL tags -->
	<!--  iterate list of objects -->
	<!--  For each book b in books -->
	<p class="lead">Checkout all the awesome products available now!</p>
<c:if test="${!empty listProducts}">
	<table class="tg">
	<thead>
		     <tr>
		<th width="120">Product Image</th>
		<th width="80">Product ID</th>
		<th width="120">Product Name</th>
		<th width="120">Category</th>
		<th width="120">Product Description</th>
		<th width="120">Prize</th>
		<th width="120">Discount</th>
		<th width="120">Selling Price</th>
<!-- 		<th width="120">Units in Stock</th> -->
		<th width="120">Supplier</th>
		</tr>	
		</thead>				
<%-- 		<security:authorize ifAnyGranted="ROLE_ADMIN"> --%>
<!-- 		<th width="60">Edit</th> -->
<!-- 		<th width="60">Delete</th> -->
<%-- 		</security:authorize> --%>

		<!--  for Each product product in products -->
		
            <c:forEach items="${products}" var="product">
                <tr>
             <td><img src="<c:url value="/resources/IMGS/${product.productId}.png" />" alt="image" style="width:100%"/></td>
            <td>${product.productId}</td>
			<td>${product.productname}</td>
			<td>${product.category}</td>
			<td>${product.brand}</td>
			<td>${product.productdescription}</td>
			<td>${product.prize}</td>
			<td>${product.discount}</td>
			<td>${product.selling_price}</td>
<%-- 			<td>${product.unitInStock}</td> --%>
			<td>${product.supplier}</td>
             <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span></a>
                    </tr>    
<%-- 		<security:authorize access="ROLE_ADMIN"> --%>
<%-- 			<td><a href="admin/edit/${b.productId} >" ><span class="glyphicon glyphicon-edit"></span></a></td> --%>
<%-- 			<td><a href="admin/remove/${b.productId} >" ><span class="glyphicon glyphicon-trash"></span></a></td>			 --%>
<%-- 		</security:authorize> --%>
		
	</c:forEach>
	</table>
</c:if>
<%@include file="shared/footer.jsp" %>	