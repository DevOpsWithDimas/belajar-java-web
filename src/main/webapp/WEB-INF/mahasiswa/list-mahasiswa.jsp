<%@ page isELIgnored="false" language="java" contentType="text/html; ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Daftar Mahasiswa</title>
</head>
<body>

<table border="1">
    <thead>
    <tr>
        <td>No</td>
        <td>Nama</td>
        <td>Tanggal Lahir</td>
        <td>Saldo</td>
        <td>Status</td>
    </tr>
    </thead>
    <tbody>
    <%--@elvariable id="lists" type="com.maryanto.dimas.bootcamp.model.Mahasiswa"--%>
    <c:forEach var="mhs" items="${lists}">
        <tr>
            <td></td>
            <td><c:out value="${mhs.namaLengkap}"/></td>
            <td><c:out value="${mhs.tanggalLahir}"/></td>
            <td><c:out value="${mhs.saldo}"/></td>
            <td><c:out value="${mhs.aktif}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
