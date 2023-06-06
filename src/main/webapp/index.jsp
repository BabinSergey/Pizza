<%--
  Created by IntelliJ IDEA.
  User: Пользователь
  Date: 04.04.2023
  Time: 17:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <style><%@include file="/index.css"%></style>
</head>
<body>
<h2>Выберите пиццу для заказа</h2>
<form action = "ServletChoice" method = "POST">
    <input type = "checkbox" name ="pizza" value="Маргарита" /> Маргарита </br>
    <input type = "checkbox" name ="pizza" value="Четыре сыра" /> Четыре сыра </br>
    <input type = "checkbox" name ="pizza" value="Капричоза" /> Капричоза </br>
    <input type = "checkbox" name ="pizza" value="Гавайская" /> Гавайская </br></br>
    <input type = "submit" name="further" value = "Продолжить" />
    <input type = "submit" name="collect" value = "Собрать свою пиццу" />
</form>
</body>
</html>
