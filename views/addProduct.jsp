<%@ include file="shared/header.jsp" %>

<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="Hello">Home</a><span>|</span></li>
				<li>Add product</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->

<%@ include file="shared/nav.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>


            <p class="lead">Fill the below information to add a product:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct"
                   method="post" commandName="product" enctype="multipart/form-data">
           	<c:if test="${!empty product.productname}">
        
	 		<div class="form-group">
                <label for="productId">Product Id</label>
                <form:errors path="productId" cssStyle="color:#ff0000;" />
                <form:input path="productId" id="productId" class="form-Control" />
            </div>
	
	</c:if>
            <div class="form-group">
                <label for="productname">Name</label>
                <form:errors path="productname" cssStyle="color:#ff0000;" />
                <form:input path="productname" id="productname" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="category">Category</label>
                <label class="checkbox-inline"><form:radiobutton path="category" id="category" value="collegeneeds" />College Needs</label>
                <label class="checkbox-inline"><form:radiobutton path="category" id="category" value="schoolneeds" />School Needs</label>
                <label class="checkbox-inline"><form:radiobutton path="category" id="category" value="officeneeds" />Office Needs</label>
            </div>

            <div class="form-group">
                <label for="productdescription">Description</label>
                <form:textarea path="productdescription" id="productdescription" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="prize">Price</label>
                <form:errors path="prize" cssStyle="color:#ff0000;" />
                <form:input path="prize" id="prize" class="form-Control" />
            </div>

			<div class="form-group">
                <label for="discount">Discount</label>
                <form:errors path="discount" cssStyle="color:#ff0000;" />
                <form:input path="discount" id="discount" class="form-Control" />
            </div>
				
            <div class="form-group">
                <label for="selling_price">Selling Price</label>
                <form:errors path="selling_price" cssStyle="color:#ff0000;" />
                <form:input path="selling_price" id="selling_price" class="form-Control" />
            </div>
           
<!--             <div class="form-group"> -->
<!--                 <label for="unitInStock">Unit In Stock</label> -->
<%--                 <form:errors path="unitInStock" cssStyle="color:#ff0000;" /> --%>
<%--                 <form:input path="unitInStock" id="unitInStock" class="form-Control" /> --%>
<!--             </div> -->

            <div class="form-group">
                <label for="supplier">Supplier</label>
                <form:input path="supplier" id="supplier" class="form-Control" />
            </div>

            <div class="form-group">
                <label class="control-label" for="productImage">Upload Picture</label>
                <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
            </div>

        <br/><br/>

        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>

    </form:form>



<%@ include file="shared/footer.jsp" %>