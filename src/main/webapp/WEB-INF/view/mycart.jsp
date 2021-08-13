<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyCart</title>
<link type="text/css" rel="stylesheet" href="../resources/css/login.css">
</head>
<body>
	<div>
		<jsp:include page="main-menu.jsp" />
		<div>
			<br>
			<h2 align="center">Shopping Cart</h2><br>
			<div align="center">
					<div>
						<table id="order">
							<tr>
								<th>Model</th>
								<th>Company</th>
								<th>Size</th>
								<th>Price</th>
								<th>  </th>
								<th>  </th>
							</tr>

							<c:forEach var="userProducts" items="${userProducts}">
								<tr>
									<td>${userProducts.name}</td>
									<td>${userProducts.company}</td>
									<td>${userProducts.size}inches</td>
									<td>${userProducts.price}$</td>
									<td><a href="${deleteLink}">Delete</a></td>
									<td><a href="${orderLink}"> Add to Cart</a></td>
								</tr>
							</c:forEach>

							<tr id="total">
								<td  colspan="6">Total Price = <strong>${total_price}$</strong></td>
							</tr>

						</table>
					</div>
					<br>
					<button class="button" type="button">Checkout</button>
			</div>

		</div>
	</div>
</body>
</html>