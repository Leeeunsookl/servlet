<%--
  Created by IntelliJ IDEA.
  User: dmstn
  Date: 2024-04-03
  Time: 오후 3:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String menuName = (String)request.getAttribute("menu");
int amount = (Integer)request.getAttribute("amount");
int orderPrice = (Integer)request.getAttribute("orderPrice");
%>

<h3> order menu : <%= menuName%></h3>
<h3> order amount : <%= amount%></h3>
<h3> order price : <%= orderPrice%></h3>
</body>
</html>
