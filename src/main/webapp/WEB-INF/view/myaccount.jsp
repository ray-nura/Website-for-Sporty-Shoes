<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyAccoumt</title>
<link type="text/css" rel="stylesheet" href="../resources/css/login.css">

</head>
<body>
	<div >
		<div>

			<jsp:include page="main-menu.jsp" />



			<div align="center">
				
				<br>
					<h2>Profile</h2>
				
				<form action="updateAcount"  method="POST">
					<div align="center">
						<label>User name : </label>
						<input value="${currentUser.username}" type="text" placeholder="Enter Username"
							name="username" required> <br> 
						
						<label> Email : </label> 
						<input value="${currentUser.email}" 
						type="text" placeholder="Enter Email" name="email" required><br> 
						
						<label>Password : </label>
						 <input value="${currentUser.password}" 
						type="text"	placeholder="Enter Password" name="password" required> <br>
						<br>
						<button class=button type="submit">Update</button>
						<br> <br />


					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>