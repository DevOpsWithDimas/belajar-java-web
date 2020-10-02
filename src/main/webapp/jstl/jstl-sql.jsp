<%@ page language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Belajar JSP - JSTL Formater il8n</title>
</head>
<body>

<sql:setDataSource driver="org.postgresql.Driver" password="bootcamp" user="bootcamp" url="jdbc:postgresql://localhost:5432/bootcamp" var="db"/>
<sql:query var="result" sql="select * from example_data" dataSource="${db}"/>
<table>
    <thead>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Action</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${result.rows}" var="data">
        <tr>
            <td><c:out value="${data.id}"/></td>
            <td><c:out value="${data.nama}"/></td>
            <td></td>
        </tr>
    </c:forEach>
    </tbody>
</table>


</body>
</html>
