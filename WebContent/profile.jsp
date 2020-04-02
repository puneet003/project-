


<%@page import="connection.Database"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if((boolean)session.getAttribute("flag")==true){
String email = (String)session.getAttribute("email");
Connection con=Database.get_connection();
PreparedStatement ps=con.prepareStatement(  
	    "select * from cloudblood.details where Email= ? ");
ps.setString(1,email);
ResultSet rs=ps.executeQuery();
session.setAttribute("email",email);
 %>
<h1>User Profile</h1>

<% 
while(rs.next()){%>
	
	<table >
	<tr>
	<td><h3><%=rs.getString(2) %> </h3><td><% session.setAttribute("firstname",rs.getString(2));%>
	<td><h3><%=rs.getString(3) %></h3></td><% session.setAttribute("lastname",rs.getString(3));%>
	<td><h3><%=rs.getString(4) %></h3></td><% session.setAttribute("mobile",rs.getString(4));%>
	<td><h3><%=rs.getString(5) %></h3></td><% session.setAttribute("email",rs.getString(5));%>
	<td><h3><%=rs.getString(6) %></h3></td><% session.setAttribute("password",rs.getString(6));%>
	<td><h3><%=rs.getString(7) %></h3></td><% session.setAttribute("bloodgroup",rs.getString(7));%>
	<td><h3><%=rs.getString(8) %></h3></td><% session.setAttribute("country",rs.getString(8));%>
	<td><h3><%=rs.getString(9) %></h3></td><% session.setAttribute("state",rs.getString(9));%>
	<td><h3><%=rs.getString(10)%></h3></td><% session.setAttribute("remail",rs.getString(10));%>
    <td><h3><%=rs.getString(11)%></h3></td><% session.setAttribute("gender",rs.getString(11));%>
	<td><h3><%=rs.getString(12)%></h3></td><% session.setAttribute("dob",rs.getString(12));%>
	<td><h3><%=rs.getString(13)%></h3></td><% session.setAttribute("timestamp",rs.getString(13));%>
	<td><h3><a href="edit.jsp">edit</a></h3></td>
	</tr>
	</table>
	<% 
	
}
%>
<%
}

%>


</body>
</html>