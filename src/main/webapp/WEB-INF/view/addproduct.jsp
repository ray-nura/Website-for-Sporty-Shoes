<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddNewProduct</title>
<link type="text/css" rel="stylesheet" href="../resources/css/login.css">
</head>
<body>
	<div>
	<jsp:include page="main-menu.jsp" />
			<div align="center"><br><h3>Add a New Product</h3><br>
				<form action="addProductProcess" method="POST">
					<div>
						<label>Product Name : </label> <br /> <input type="text"
							placeholder="Enter name" name="name" required> 
						<br>
						
						<label>Company : </label> <br /> <input type="text"
							placeholder="Enter company" name="company" required> 
						<br>	
						
						<label>Size : </label> <br /> <input type="text"
							placeholder="Enter size" name="size" required> 
						<br>
						
						
						<label>Price : </label> <br /> <input type="text"
							placeholder="Enter price" name="price" required> 
						<br>
						
						<label>Image Link : </label> <br /> <input type="text"
							placeholder="Enter image" name="image" required> 
						<br>
						<br>
						<button class=button type="submit">Add</button>
						<br>


					</div>
				</form>
<br><br>
			</div>
		</div>
</body>
</html>