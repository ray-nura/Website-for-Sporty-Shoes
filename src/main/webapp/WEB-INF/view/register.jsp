<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
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

 <h1 align="center"> Register </h1> 
    <form action="registerProcess" method="POST">  
        <div align="center">   
        	<input type="hidden" name="command" value="LOGIN" />
            <label>User name : </label>   
            <br/>
            <input type="text" placeholder="Enter Username" name="username" required>  
            <br/>
            <label>Email : </label>   
            <br/>
            <input type="text" placeholder="Enter Email" name="email" required>  
            <br/>
            <label>Password : </label>   
            <br/>
            <input type="password" placeholder="Enter Password" name="password" required>  
            <br/>
            <input type="submit" value="Sign up">   
            <br/>
          
             
        </div>   
    </form>     


</body>
</html>