<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add payment</title>
</head>
<body>
<h1>New payment</h1>
<f:form method="POST" commandName="phonebook" action="save">
    <table>
        <tr>
            <td>
                <i>Фамилия : </i>
            </td>
            <td>
                <f:input path="surname"/>
            </td>
        </tr>
        <tr>
            <td>
                <i>Имя : </i>
            </td>
            <td>
                <f:input path="firstname"/>
            </td>
        </tr>
        <tr>
            <td>
                <i>Номер телефона : </i>
            </td>
            <td>
                <f:input path="phone"/>
            </td>
        </tr>
        <tr>
            <td><input type="submit"/></td>
        </tr>
    </table>
</f:form>
</body>
</html>