<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link type="text/css" rel="stylesheet" href="../resources/css/login.css"> 

</head>
<body>
	
<div>
	<jsp:include page="main-menu.jsp" />
	<div>
			<form action="searchProducts" method="POST">
			<div>
				<input name="keySearch" type="text" placeholder="Search..">
				<button class=button type="submit">Search</button>
			</div>
			</form> <br><br>
			<div>
				<c:forEach var="product" items="${products}">
						<c:url var="orderLink" value="/homepage/orderProcess">
						<c:param name="productId" value="${product.id}" />
						</c:url>
						
			<div class="responsive">
				<div class="gallery">
				<img src=${product.image_link}>
				<div class="desc">
					<h3 >${product.name}</h3>
					<p >${product.company}<br>${product.size} size<br>
					<h4>${product.price}$</h4></p>
					<a href="${orderLink}"> Add to Cart</a>
				</div>
			</div>
		</div>

	</c:forEach>
	</div>
	<div class="clearfix"></div>
	</div>
</div>
</body>
</html>