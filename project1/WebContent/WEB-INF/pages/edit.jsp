<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit User Information</title>
</head>
<body>
<center>
<h3>EDIT USER</h3>
<form action="edituserrecord">
<table>
<tr>
<td>UserId:</td>
<td>
<input type="text"value=""name="userid">
</td>
</tr>
<tr>
<td>Name:</td>
<td>
<input type="text"value=""name="ename">
</td>
</tr>
<tr>
<td>EmailId:</td>
<td>
<input type="text"value=""name="email">
</td>
</tr>
<tr>
<td>Password:</td>
<td>
<input type="password"value=""name="epass">
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
<input type="submit"value="Edit">
</td>
<td>
<input type="reset" value="cancel">
</td>
</tr>
</table>
</form>
</center>
</body>
</html>