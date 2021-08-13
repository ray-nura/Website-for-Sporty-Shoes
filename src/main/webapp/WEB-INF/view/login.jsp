<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
 <style type="text/css">
 body {  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: #D9EEE1;
  justify-content: center;
}  
label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=text], input[type=password],  select {
  width: 40%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit], .button {
font-size: 16px;
  width: 40%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit], .button :hover {
  background-color: #45a049;
}

div{
  border-radius: 5px;
  background-color: #D9EEE1;
  padding: 20px;
}
 
 </style> 
</head>
<body>

  <h1 align="center"> Login </h1> 
    <div align="center"> 
	    <form action="loginProcess" method="POST"> 
        	<input type="hidden" name="command" value="LOGIN" />
            <label>User name : </label>   
            <br/>  <br/>
            <input type="text" placeholder="Enter Username" name="username" required>  
            <br/>  <br/>
            <label>Password : </label>   
            <br/>  <br/>
            <input type="password" placeholder="Enter Password" name="password" required>  
            <br/>  <br/></br>
            <input type="submit" value="Log in"> 
            <br/>  <br/>  <br/>
    	</form>     
      <a href="${pageContext.request.contextPath}/register">
      <button class=button>Sign up</button></a>
     </div>   
</body>
</html>