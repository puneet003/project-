


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
 %>
<h1>User Profile</h1>

<% 
while(rs.next()){%>
	
	
	<h3><%=rs.getString(2) %><a href="edit.jsp" name="FirstName">edit</a></h3><br>
	<h3><%=rs.getString(3) %><a href="edit.jsp" name="LastName">edit</a></h3><br>
	<h3><%=rs.getString(4)%><a href="edit.jsp" name="Mobile">edit</a></h3><br>
	<h3><%=rs.getString(5) %><a href="edit.jsp" name="Email">edit</a></h3><br>
	<h3><%=rs.getString(6) %><a href="edit.jsp" name="Password">edit</a></h3><br>
	<h3><%=rs.getString(7)%><a href="edit.jsp" name="BloodGroup">edit</a></h3><br>
	<h3><%=rs.getString(8) %><a href="edit.jsp" name="Country">edit</a></h3><br>
	<h3><%=rs.getString(9) %><a href="edit.jsp" name="State">edit</a></h3><br>
	<h3><%=rs.getString(10)%><a href="edit.jsp" name="RecoveryEmail">edit</a></h3><br>
    <h3><%=rs.getString(11) %><a href="edit.jsp" name="Gender">edit</a></h3><br>
	<h3><%=rs.getString(12) %><a href="edit.jsp" name="DOB">edit</a></h3><br>
	<h3><%=rs.getString(13) %><a href="edit.jsp" name="Timestamp">edit</a></h3><br>
	<% 
	
}
%>
<%
}

%>


</body>
</html>