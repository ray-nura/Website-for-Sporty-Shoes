<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<link type="text/css" rel="stylesheet" href="../resources/css/login.css">


</head>
<body>
	<div>
			<jsp:include page="main-menu.jsp" />
			<div>
				<form action="../homepage/searchProducts" method="POST">
					<div>
						<input name="keySearch" type="text" placeholder="Search..">
						<button class=button type="submit">Search</button>
					</div>
				</form><br><br>
				<div>
				<c:forEach var="product" items="${products}">

							<c:url var="updateLink" value="/admin/updateProduct">
								<c:param name="productId" value="${product.id}" />
							</c:url>

							<c:url var="deleteLink" value="/admin/deleteProduct">
								<c:param name="productId" value="${product.id}" />
							</c:url>
							
				<div class="responsive">
					<div class="gallery">
						<img src=${product.image_link}>
						<div class="desc">
							<h5>${product.name}</h5>
							<p >${product.company}<br>${product.size} size<br>
							${product.price}$</p>
							<div>
							<a href="${updateLink}"> Update</a>
							</div>
							<div>
							<a href="${deleteLink}">Remove</a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			</div>
		</div>
</div>
</body>
</html>