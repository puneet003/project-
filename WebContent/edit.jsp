<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String firstname=(String)session.getAttribute("firstname");
String lastname=(String)session.getAttribute("lastname");
String mobile=(String)session.getAttribute("mobile");
String email=(String)session.getAttribute("email");
String password=(String)session.getAttribute("password");
String bloodgroup=(String)session.getAttribute("bloodgroup");
String country=(String)session.getAttribute("country");
String state=(String)session.getAttribute("state");
String remail=(String)session.getAttribute("remail");
String gender=(String)session.getAttribute("gender");
String dob=(String)session.getAttribute("dob");
String timestamp=(String)session.getAttribute("timestamp");
/*session.setAttribute("bloodgroup", bloodgroup);
session.setAttribute("country", country);
session.setAttribute("state", state);
session.setAttribute("remail", remail);
session.setAttribute("gender", gender);
session.setAttribute("dob", dob);
session.setAttribute("timestamp", timestamp);
session.setAttribute("email1", email);*/
%>
<h1>EDIT FORM</h1>
<form action="edit2.jsp">
FirstName     :<input type="text" name="firstname" value="<%=firstname %>"><br><br>
LastName      :<input type="text" name="lastname" value="<%=lastname%>"><br><br>
Mobile        :<input type="text" name="mobile" value="<%=mobile%>"><br><br>
Email         :<input type="text" name="email" value="<%=email%>"><br><br>
Password      :<input type="text" name="password" value="<%=password %>"><br><br>
BloodGroup    :<input type="text" name="bloodgroup" value="<%=bloodgroup %>"><br><br>
Country       :<input type="text" name="country" value="<%=country %>"><br><br>
State         :<input type="text" name="state" value="<%=state %>"><br><br>
Recovery Email:<input type="text" name="remail" value="<%=remail %>"><br><br>
Gender        :<input type="text" name="gender" value="<%=gender %>"><br><br> 
DOB           :<input type="text" name="dob" value="<%=dob %>"><br><br>
TimeStamp     :<input type="text" name="timestamp" value="<%=timestamp %>"><br><br>
<button type="submit">edit</button>
</form>
<body>

</body>
</html>