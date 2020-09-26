<%@ page isELIgnored="false" contentType="text/html; ISO-8859-1" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.math.BigDecimal" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Belajar JSP - Directive Page</title>
</head>
<body>
<form action="#">
    <div>
        <label for="namaLengkap">Nama Lengkap</label>
        <input type="text" name="namaLengkap" id="namaLengkap" value="<%= "Dimas Maryanto" %>" readonly>
    </div>
    <div>
        <label for="tanggalLahir">Tanggal Lahir</label>
        <input type="text" name="tanggalLahir" id="tanggalLahir" value="<%= new Date(725821200000L) %>" readonly>
    </div>
    <div>
        <label for="saldo">Saldo</label>
        <input type="text" name="saldo" id="saldo" value="<%= new BigDecimal(1000000) %>" readonly>
    </div>
</form>

</body>
</html>
