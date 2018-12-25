<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*, com.Execution.*"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="90%" align="center">
<tr>
	<td>Userid:</td>
	<td>Name:</td>
	<td>Email:</td>
	<td>Password</td>
	<td>MObileno:</td>
</tr>
<% 
	List<adduser>  users  = (List<adduser>)request.getAttribute("List");
	for(adduser user:users){%>
		
		<tr>
	<td><%=user.getUserid() %></td>
	<td><%=user.getName() %></td>
	<td><%=user.getEmail()%></td>
	<td><%=user.getPassword()%></td>
	<td><%=user.getMob()%></td>
</tr>
	<%}

%>
<a href="design">Design</a>
</table>
</body>
</html>