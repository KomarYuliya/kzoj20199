<%--
  Created by IntelliJ IDEA.
  User: Юля
  Date: 21.03.2019
  Time: 0:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Главная страница</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        /* Demo Background */
        body{background-color: #bdff93;)}
        .active{color: #bdff93;)}
    </style>
</head>
<body>
<div class="container">
    <nav class="navbar navbar-default">
        <ul class="nav navbar-nav">
            <li class="active"><a href="/diaryf">Главная</a></li>
            <li><a href="/administration">Управление пользователями</a></li>
            <li><a href="/redact">Редактирование меню</a></li>
            <li><a href="/">Выйти</a></li>
        </ul>
    </nav>
</div>
<table>
    <tr>
        <th>Логин</th>
        <th>Пароль</th>
        <th>Имя</th>
        <th>Электр. адрес</th>
        <th>Уровень доступа</th>
        <th>Удалить</th>
    </tr>
    <form action="/administration" method="post">
    ${requestScope.tableUsers}
        <tr><input type="submit" value="Удалить"></tr>
    </form>
</table>
${requestScope.errorWrongRights}
</body>
</html>
