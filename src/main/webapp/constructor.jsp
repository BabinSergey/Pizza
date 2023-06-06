<%--
  Created by IntelliJ IDEA.
  User: Пользователь
  Date: 12.04.2023
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Constructor</title>
    <style><%@include file="/index.css"%></style>
</head>
<br>
<h2>Создай свою пиццу</h2></br></br>
<h2>У пиццы может быть до 10 любых ингредиентов, иначе она просто не пропечется</h2>
<form id="form" action = "ServletConstructor" method = "POST">
    <div id="constructor">
        <div>
            <h2>Сыр</h2>
            <input type = "checkbox" name ="PizzaCon" value="Сыр с голубой плесенью" /> Сыр с голубой плесенью </br>
            <input type = "checkbox" name ="PizzaCon" value="Смесь итальянских сыров" /> Смесь итальянских сыров </br>
            <input type = "checkbox" name ="PizzaCon" value="Мягкий молодой сыр" /> Мягкий молодой сыр </br>
            <input type = "checkbox" name ="PizzaCon" value="Сыр чеддер" /> Сыр чеддер </br>
            <input type = "checkbox" name ="PizzaCon" value="Сыр моцарелла мини" /> Сыр моцарелла мини </br>
            <input type = "checkbox" name ="PizzaCon" value="Сыр моцарелла" /> Сыр моцарелла </br></br>
        </div>
        <div>
            <h2>Мясо</h2>
            <input type = "checkbox" name ="PizzaCon" value="Пепперони" /> Пепперони </br>
            <input type = "checkbox" name ="PizzaCon" value="Ароматная свинина" /> Ароматная свинина </br>
            <input type = "checkbox" name ="PizzaCon" value="Ветчина" /> Ветчина </br>
            <input type = "checkbox" name ="PizzaCon" value="Бекон" /> Бекон </br>
            <input type = "checkbox" name ="PizzaCon" value="Говядина" /> Говядина </br>
            <input type = "checkbox" name ="PizzaCon" value="Куриная грудка" /> Куриная грудка </br>
            <input type = "checkbox" name ="PizzaCon" value="Альпийские колбаски" /> Альпийские колбаски </br></br>
        </div>
        <div>
            <h2>Мясо</h2>
            <input type = "checkbox" name ="PizzaCon" value="Шампиньоны" /> Шампиньоны </br>
            <input type = "checkbox" name ="PizzaCon" value="Лук" /> Лук </br>
            <input type = "checkbox" name ="PizzaCon" value="Перец халапеньо" /> Перец халапеньо </br>
            <input type = "checkbox" name ="PizzaCon" value="Орегано" /> Орегано </br>
            <input type = "checkbox" name ="PizzaCon" value="Сладкий перец" /> Сладкий перец </br>
            <input type = "checkbox" name ="PizzaCon" value="Ананасы" /> Ананасы </br>
            <input type = "checkbox" name ="PizzaCon" value="Томаты" /> Томаты </br>
            <input type = "checkbox" name ="PizzaCon" value="Маринованные огурцы" /> Маринованные огурцы </br>
            <input type = "checkbox" name ="PizzaCon" value="Чеснок" /> Чеснок </br>
            <input type = "checkbox" name ="PizzaCon" value="Оливки черные" /> Оливки черные </br>
            <input type = "checkbox" name ="PizzaCon" value="Шпинат" /> Шпинат </br>
            <input type = "checkbox" name ="PizzaCon" value="Груша" /> Груша </br></br>
        </div>
        <div>
            <h2>Размер</h2>
            <input type = "radio" name ="SizeCon" value="30 см. " /> 30 см. </br>
            <input type = "radio" name ="SizeCon" value="35 см. " /> 35 см. </br>
            <input type = "radio" name ="SizeCon" value="40 см. " /> 40 см. </br></br>
        </div>
    </div>
    <div>
        <input type = "submit" name="further" value = "Продолжить" />
    </div>
</form>
</body>
</html>
