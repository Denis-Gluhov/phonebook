<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <style type="text/css">
        table thead td {
            font-size: 20px;
            font-weight: bold;
        }
    </style>
    <title>Телефонная книга</title>
</head>
<body>
<div>
    <h3 align="center">Телефонная книга</h3>
</div>
<div align="center">
            <td><a href="/save"><button>Добавить</button></a></td>
            <td><button>Редактировать</button></td>
            <td><button>Экспорт</button></td>
</div>

<table align="center" width="50%" bordercolor="black" border="2">
    <thead>
    <tr bgcolor="silver">
        <td>ID</td>
        <td>Фамилия</td>
        <td>Имя</td>
        <td>Телефон</td>
    </tr>
    </thead>
    <c:forEach items="${contacts}" var="contact">
        <tr>
            <td>${contact.id}</td>
            <td>${contact.surname}</td>
            <td>${contact.firstname}</td>
            <td>${contact.phone}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>


