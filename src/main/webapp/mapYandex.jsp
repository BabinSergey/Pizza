<%--
  Created by IntelliJ IDEA.
  User: Пользователь
  Date: 13.04.2023
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style><%@include file="/index.css"%></style>
</head>
<body>
    <p> Выберите адрес доставки</p>
    <div id="yandexmap" ></div>
    <input type="text" name="address" id="address">
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
    <script type="text/javascript" >
        let myMap,
            myInput,
            address,
            myPlacemark;

        // ymaps.ready(init);
        //
        // function init () {
        //     myMap = new ymaps.Map("yandexmap", {
        //         center: [53.195876, 50.100186],
        //         zoom: 12
        //     }, {
        //         searchControlProvider: 'yandex#search'
        //     });
        //     myMap.events.add('click', function (e) {
        //         let coords = e.get('coords');
        //
        //         if (myPlacemark) {
        //             myPlacemark.geometry.setCoordinates(coords);
        //         }   else {
        //             myPlacemark = createPlacemark(coords);
        //             myMap.geoObjects.add(myPlacemark);
        //             myPlacemark.events.add('dragend', function () {
        //                 getAddress(myPlacemark.geometry.getCoordinates());
        //             });
        //         }
        //         getAddress(coords);
        //     });
        //     function createPlacemark(coords) {
        //         return new ymaps.Placemark(coords, {
        //             iconCaption: ''
        //         }, {
        //             preset: 'islands#violetDotIconWithCaption',
        //             draggable: true
        //         });
        //     }
        //     function getAddress(coords) {
        //         myPlacemark.properties.set('iconCaption', '');
        //         ymaps.geocode(coords).then(function (res) {
        //             let firstGeoObject = res.geoObjects.get(0);
        //                 address = firstGeoObject.getAddressLine();
        //
        //             myPlacemark.properties
        //                 .set({
        //                     iconCaption: [
        //                         firstGeoObject.getLocalities().length ? firstGeoObject.getLocalities() : firstGeoObject.getAdministrativeAreas(),
        //                         firstGeoObject.getThoroughfare() || firstGeoObject.getPremise()
        //                     ].filter(Boolean).join(', '),
        //                     balloonContent: address
        //                 });
        //             myInput.value = address;
        //             document.getElementById("address").value = address;
        //         });
        //     }
        // }

        // Создаем карту
    ymaps.ready(init);

    function init () {
        var myMap = new ymaps.Map('yandexmap', {
            center: [55.76, 37.64],
            zoom: 10
        });

        // Добавляем обработчик клика на карту
        myMap.events.add('click', function (e) {
            // Получаем координаты места клика
            var coords = e.get('coords');

            // Запрашиваем обратное геокодирование по координатам
            ymaps.geocode(coords).then(function (res) {
                // Получаем первый результат геокодирования
                var firstGeoObject = res.geoObjects.get(0);

                // Получаем адрес из первого результата геокодирования
                var address = firstGeoObject.getAddressLine();

                // Выводим адрес в отдельное поле
                document.getElementById('address').value = address;
            });
        });
    }
    </script>
<%--<form>--%>
<%--    <input type="text" name="address" id="address"></br>--%>
<%--    <input type="submit" value="Подтвердить">--%>
<%--</form>--%>
</body>
</html>
