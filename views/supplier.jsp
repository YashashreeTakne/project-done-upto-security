<%@include file="shared/header.jsp" %>
<%@ page session="false" %>

<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="Hello">Home</a><span>|</span></li>
				<li>Supplier Crud</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->

<%@include file="shared/nav.jsp" %>

<h2>Supplier Page</h2>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>

<h1>
	Add a Supplier
</h1>

<c:url var="addAction1" value="admin/supplier/add" ></c:url>

<form:form action="${addAction1}" commandName="supplier" >
<table>
<%-- 	<c:if test="${!empty supplier.name}"> --%>
	<tr>
		<td>
			<form:label path="id">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="id" />
		</td> 
	</tr>
<%-- 	</c:if> --%>
	<tr>
		<td>
			<form:label path="name">
				<spring:message text="Supplier Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="name" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="address">
				<spring:message text="Address"/>
			</form:label>
		</td>
		<td>
			<form:input path="address" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="phoneNo">
				<spring:message text="Phone No"/>
			</form:label>
		</td>
		<td>
			<form:input path="phoneNo" />
		</td> 
	</tr>
	
	<tr>
		<td>
			<form:label path="email">
				<spring:message text="E-mail"/>
			</form:label>
		</td>
		<td>
			<form:input path="email" />
		</td> 
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty supplier.name}">
				<input type="submit"
					value="<spring:message text="Edit Supplier"/>" />
			</c:if>
			<c:if test="${empty supplier.name}">
				<input type="submit"
					value="<spring:message text="Add Supplier"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>

<h3>suppliers List</h3>
<c:if test="${!empty getAllSupplier}">
	<table class="tg">
	<tr>
		<th width="80">Supplier ID</th>
		<th width="120">Supplier Name</th>
		<th width="120">Address</th>
		<th width="120">Phone No.</th>
		<th width="120">E-mail</th>
				
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	
	<c:forEach items="${getAllSupplier}" var="supplier">
		<tr>
			<td>${supplier.id}</td>
			<td>${supplier.name}</td>
			<td>${supplier.address}</td>
			<td>${supplier.phoneNo}</td>
			<td>${supplier.email}</td>
			
			<%-- <td><a href="getBookByIsbn/${b.isbn}"><span class="glyphicon glyphicon-info-sign"></span></a> --%>
		
	 		<td><a href="<c:url value='admin/edit/${supplier.id}' />" ><span class="glyphicon glyphicon-edit"></span></a></td>
			<td><a href="<c:url value='admin/remove/${supplier.id}' />" ><span class="glyphicon glyphicon-trash"></span></a></td>			
		</tr>
	</c:forEach>
	</table>
</c:if>
<%@include file="shared/footer.jsp" %>