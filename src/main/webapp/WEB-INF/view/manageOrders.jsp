<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders</title>
<link type="text/css" rel="stylesheet" href="../resources/css/login.css">
</head>
<body>
		<div>
			<jsp:include page="main-menu.jsp" />
			<div align="center"><br>
				<h2>Setting Orders</h2>	<br>
			<div align="center">
				
				<div >
					<table id="order">
					<tr>
						<th>Customer Name</th>
						<th>Product Model</th>
						<th>Price</th>
						<th>  </th>
					</tr>
				<c:forEach var="order" items="${orders}">
						<c:url var="deleteLink" value="/admin/deleteOrder">
						<c:param name="orderId" value="${order.id}" />
						</c:url>
					<tr>
						<td>${order.user.username}</td>
						<td>${order.product.name}</td>
						<td>${order.product.price}$</td>
						<td><a href="${deleteLink}">Delete</a></td>
					</tr>
				</c:forEach>
					<tr id="total">
						<td colspan="4">Total Price = <strong>${totalPrice}$</strong></td>
					</tr>
				</table>
			</div><br>
		</div>
	</div>
</div>
</body>
</html>