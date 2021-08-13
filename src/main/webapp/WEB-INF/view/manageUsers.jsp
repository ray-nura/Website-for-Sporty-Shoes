<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Users</title>
<link type="text/css" rel="stylesheet" href="../resources/css/login.css">

</head>

<body>
	<div>
	<jsp:include page="main-menu.jsp" />
	<div><br>
	<h2 align="center">Setting Customer</h2><<br>
		<div align="center">
			<div>
			<table id="order">
				<tr>
					<th>Customer Name</th>
					<th>Email</th>
					<th>Delete</th>
				</tr>

				<c:forEach var="user" items="${users}">
					<c:if test="${user.type == 0}">
						<c:url var="deleteLink" value="/admin/deleteUser">
						<c:param name="userId" value="${user.id}" />
						</c:url>
						<tr>
							<td>${user.username}</td>
							<td>${user.email}</td>
							<td><a href="${deleteLink}">Delete</a></td>
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</div><br>
	</div>
</div>
</div>
</body>
</html>