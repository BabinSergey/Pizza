<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: Пользователь
  Date: 11.04.2023
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Constructor Error</title>
    <style><%@include file="/index.css"%></style>
</head>
<body>
<form action = "constructor.jsp" method = "POST">
    <h2>Не выбрана ингредиенты или размер Пиццы</h2>
    <input type = "submit" value = "Выбрать">
</form>
</body>
</html>
