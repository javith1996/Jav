<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="style.css"/>
</head>
<body>
 <center>
     <h3>Register Here</h3>
<form action="saveuserrecord">
<table>
<tr>
              <td>Name:</td>
          <td>
            <input type="text" value="" name="ename"> 
          </td>
</tr>
<tr>
              <td>EmailId:</td>
         <td>
             <input type="text"value=""name="uname">
         </td>
</tr>
<tr> 
              <td>Password:</td>
            <td>
               <input type="password"value=""name="upass">
            </td>
</tr>
       <tr>
           <td>Mobile No:</td>
       <td>
          <input type="text"value=""name="emob">
       </td>
</tr>
<tr>
             <td>
              <input type="submit" value="Register">
            </td>
             <td> 
                <input type="reset" value="Cancel">
             </td>
</tr>
 Already a member? <a href="gotologin">click to login</a>

 </table>
</form>
</center>
</body>
</html>