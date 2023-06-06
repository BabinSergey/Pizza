<%--
  Created by IntelliJ IDEA.
  User: Пользователь
  Date: 11.04.2023
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Topping</title>
    <style><%@include file="/index.css"%></style>
</head>
<body>
<h2>Выберите дополнительные ингредиенты</h2>
<form action = "ServletTopping" method = "POST">
    <input type = "checkbox" name ="ingredient" value="Оливки" /> Оливки </br>
    <input type = "checkbox" name ="ingredient" value="Каперсы" /> Каперсы </br>
    <input type = "checkbox" name ="ingredient" value="Дополнительный сыр" /> Дополнительный сыр </br>
    <input type = "checkbox" name ="ingredient" value="Бекон" /> Бекон </br>
    <input type = "checkbox" name ="ingredient" value="Шампиньоны" /> Шампиньоны </br>
    <input type = "checkbox" name ="ingredient" value="Сервелат" /> Сервелат </br></br>
    <input type = "submit" value = "Продолжить" />
</form>
</body>
</html>
