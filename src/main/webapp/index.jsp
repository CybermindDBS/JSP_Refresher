<%@ page import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<%pageContext.setAttribute("user", "user1", PageContext.SESSION_SCOPE);%>
<jsp:useBean id="obj1" class="com.example.demo.UserDefinedData" scope="application"/>
<jsp:setProperty name="obj1" property="val" value="10"/>
<body>
<h1>Hello World!</h1>
<h2><%="The created jsp bean value is: "%> <jsp:getProperty name="obj1" property="val"/></h2>
<br/>
<a href="page1">Next page>>></a>
</body>
</html>