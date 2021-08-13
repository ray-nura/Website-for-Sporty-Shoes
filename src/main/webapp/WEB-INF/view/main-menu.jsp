<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
body {  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: #D9EEE1;
  justify-content: center;
}  
div.main{
  border-radius: 5px;
  background-color: #D9EEE1;
  padding: 20px;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  border: 1px solid #e7e7e7;
  background-color: #f3f3f3;
}

li {
  float: left;
}

li a {
  display: block;
  color: #666;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #ddd;
}

li a.active {
  color: white;
  background-color: #4CAF50;
}

</style>


<div class="main">
 <h1 align="center"> Sporty Shoes Store </h1> 

	<c:choose>
		<c:when test="${currentUser.type == 0 }">
		
			<ul>
				<li><a class="active" href="${pageContext.request.contextPath}/homepage/products">Home</a></li>
				<li><a href="${pageContext.request.contextPath}/homepage/mycart"> Shopping Cart</a></li>
				<li><a href="${pageContext.request.contextPath}/user/myaccount"> Edit profile</a></li>
				<li><a href="${pageContext.request.contextPath}/login"> Log Out</a></li>
				<li></li>
			</ul>
		</c:when>

		<c:otherwise>
			<ul>
				<li><a class="active" href="${pageContext.request.contextPath}/admin/products">Update Product</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/manageUsers">Settings Users</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/manageOrders">Settings Orders</a> </li>
				<li><a href="${pageContext.request.contextPath}/admin/addProduct">Add a New Product</a></li>
				<li><a href="${pageContext.request.contextPath}/login">Log Out</a></li>
			</ul>
		</c:otherwise>

	</c:choose>


</div>


