<%--
  Created by IntelliJ IDEA.
  User: Пользователь
  Date: 11.04.2023
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contacts</title>
    <style><%@include file="/index.css"%></style>
</head>
<body>
    <h2>Введите данные для заказа</h2>
    <form action = "ServletAddress" method = "POST">
        <input type = "text" name ="name" /> Имя </br>
        <input type = "text" name ="phone" /> Телефон </br>
        <input type = "email" name ="email" /> Email </br>
        <input type = "text" name ="address" /> Адрес доставки </br></br>
        <input type = "submit" value = "Заказать" />
    </form>
</body>
</html>
