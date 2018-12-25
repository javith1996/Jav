<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style></style>
<title>Welcome to our Login Page</title>
</head>
<body>
<center>
<h3>Login Here</h3>
<form action="login" >
<table>
    <tr>
         <td>Username:</td>
      <td>
         <input type="text" value="" name="uname">
      </td>
    </tr>
   <tr>
          <td>Password:</td>
       <td>
           <input type="password" value="" name="upass">
        </td>
    </tr>
   <tr>
     <td>
         <input type="Submit" value="Login" 
            name="submit">
      </td>
   <td>
      <input type="reset" value="cancel">
    </td>
    </tr>
 Not yet an User?<a href="register">Register</a>
   
   </table>
   </form>
   </center>

</body>
</html>