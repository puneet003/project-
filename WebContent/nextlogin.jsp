<%@page import="java.util.*"%>
<%@page import="controller.Validate_login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
Validate_login obj=new Validate_login();
String s1=request.getParameter("email");
String s2=request.getParameter("password");


 boolean result=obj.validate(s1,s2);
 if(result==true){
	 %>
	<h1> Successful</h1>
	 <% 
 }
 else{
	 %>
		<h1> Unsuccessul</h1>
		 <% 
 }



%>
<body>

</body>
</html>