<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: shakt
  Date: 31-03-2024
  Time: 07:53 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" errorPage="error.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Welcome, this is a demonstration of different things you can do.</h1>
<a href="page3.jsp">Click here to goto page3</a>
<br><br><br><br>

<h1>via Implicit Object: <%=session.getAttribute("s1")%></h1>
<h1>via EL: ${sessionScope.s1}</h1>
<h1>via PageContext Implicit Object: <%=pageContext.getAttribute("s1", PageContext.SESSION_SCOPE)%></h1>
<h1>via JSTL: <jstl:out value="${s1}"/></h1>
<br><br><br><br>

Directive: <%@ include file="content.jsp"%>
PageContext Implicit Object: <%pageContext.include("content.jsp");%>
Jsp Action (include): <jsp:include page="content.jsp"> <jsp:param name="user" value="User1"/> </jsp:include>
JSTL: <jstl:import url="content.jsp"/>
</body>
</html>
