<%--
  Created by IntelliJ IDEA.
  User: shakt
  Date: 02-04-2024
  Time: 12:08 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="myTag"  uri="/WEB-INF/my-tags.tld" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Welcome to page3</h1>
<h2>Random number generator using custom tags</h2>
<form action="page3.jsp" method="post">
    <label for="nid">Enter no. of digits</label>
    <input type="text" id="nid" name="n">
    <input type="submit">
</form>
<jstl:choose>
<%--    <jstl:when test="${param.n ne null && param.n ne ''}">--%>
<%--     OR        --%>
    <jstl:when test='${param.n ne null && param.n ne ""}'>
        <myTag:myTagName digits='<%=request.getParameter("n")%>'>Generated Number: </myTag:myTagName>
    </jstl:when>
    <jstl:otherwise>
        Enter a value to see result <myTag:myLoop iteration="6">!</myTag:myLoop>
    </jstl:otherwise>
</jstl:choose>

</body>
</html>
