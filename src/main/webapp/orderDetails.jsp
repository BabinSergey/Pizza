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
    <title>Order Details</title>
    <style><%@include file="/index.css"%></style>
</head>
<body>
    <h2>Детали заказа</h2>
    <p>Имя:   ${param.name} </p>
    <p>Телефон:   ${param.phone} </p>
    <p>Email:   ${param.email} </p>
    <p>Адрес доставки:   ${param.address} </p></br></br>

<c:choose>
    <c:when test="${further == true}">
        <p>Пицца: </p>
        <ul>
            <c:forEach var="pizza" items="${pizza}">
                <li>
                    <c:out value="${pizza}" />
                </li>
            </c:forEach>
        </ul>

        <p>Дополнительные ингредиенты: </p>

        <ul>
            <c:forEach var="topping" items="${topping}">
                <li>
                    <c:out value="${topping}" />
                </li>
            </c:forEach>
        </ul>
    </c:when>
    <c:when test="${collect == true}">
        <p>Своя пицца из ингредиентов: </p></br></br>
        <p>Размер пиццы: ${sizePizza}</p></br></br>

        <p>Ингредиенты</p>
        <ul>
            <c:forEach var="cheese" items="${cheese}">
                <li>
                    <c:out value="${cheese}" />
                </li>
            </c:forEach>
        </ul>
    </c:when>

</c:choose>

</body>
</html>
