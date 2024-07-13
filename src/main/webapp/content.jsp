<%--
  Created by IntelliJ IDEA.
  User: shakt
  Date: 31-03-2024
  Time: 09:26 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>Thanks for visiting ${param.user == null ? sessionScope.user : param.user}! your session id is ${cookie.JSESSIONID.value}</h3>
</body>
</html>
