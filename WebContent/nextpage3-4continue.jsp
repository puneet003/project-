<%@page import="controller.InsertNewUser"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String password=request.getParameter("password");
//int phone=Integer.parseInt(request.getParameter("phone"));
InsertNewUser user=new InsertNewUser();
user.insertvalues(firstname,lastname,mobile,email,password);

%>
you have successfully submit the information now please for continue login  by using your email and password<br>
<button type="submit"><a href="index.html"> click here</a></button>
<body>

</body>
</html>