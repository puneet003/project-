<%@page import="connection.Database"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<H1> Enter Blood Bank Name</H1>
<form action="bloodavail.jsp">
select your branch :<input type="text" name="branch">
<button type="submit"> Click</button>
</form><% 
String branch = (String)request.getParameter("branch");
Connection con =Database.get_connection();
PreparedStatement ps=con.prepareStatement(  
	    "select * from cloudblood.bloodbank where BranchName= ? ");
ps.setString(1,branch);
ResultSet rs=ps.executeQuery();
session.setAttribute("branch",branch);
 %>
 <% 
while(rs.next()){%>
	
	<table >
	<tr>
	<td><h3><%=rs.getString(2) %> </h3></td>
	<td><h3><%=rs.getString(3) %></h3></td>
	<td><h3><%=rs.getString(4) %></h3></td>
	<td><h3><%=rs.getString(5) %></h3></td>
	<td><h3><%=rs.getString(6) %></h3></td>
	<td><h3><%=rs.getString(7) %></h3></td>
	<td><h3><%=rs.getString(8) %></h3></td>
	<td><h3><%=rs.getString(9) %></h3></td>
	<td><h3><%=rs.getString(10)%></h3></td>
    <td><h3><%=rs.getString(11)%></h3></td>

	</tr>
	</table>
	<% 
	
}
%>


 
</body>
</html>