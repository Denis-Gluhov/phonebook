<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.thymeleaf.org ">
<head>
    <title>Getting Started: Handing Form Submission</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<h1>Form</h1>
<form:form name="inserted" method="get" action="/add">
    <p><input type="text" name="surname" placeholder="Введите фамилию"/></p>
    <p><input type="text" name="firstname" placeholder="Введите имя"/></p>
    <p><input type="text" name="phone" placeholder="Введите номер телефона"/></p>
    <p><input type="submit" value="Submit"/></p>
</form:form>
</body>
</html>
