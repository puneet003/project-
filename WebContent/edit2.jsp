<%@page import="controller.Edit_Values"%>
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
String bloodgroup=request.getParameter("bloodgroup");
String country=request.getParameter("country");
String state=request.getParameter("state");
String remail=request.getParameter("remail");
String gender=request.getParameter("gender");
String dob=request.getParameter("dob");
String timestamp=request.getParameter("timestamp");
String email=request.getParameter("email");
Edit_Values edit=new Edit_Values();
edit.editvalues(bloodgroup, country, state, remail, gender, dob, timestamp, email);
%>
<h1>Successful</h1>
<a href="home2.jsp"> see here </a>
</body>
</html>