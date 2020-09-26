<%@ page language="java" contentType="text/html; ISO-8859-1" isELIgnored="false" %>

<%@ page import="java.util.Date" %>
<%@ page import="java.math.BigDecimal" %>
<jsp:useBean id="mhs" class="com.maryanto.dimas.bootcamp.Mahasiswa">
    <jsp:setProperty name="mhs" property="namaLengkap" value="Dimas Maryanto"/>
    <jsp:setProperty name="mhs" property="tanggalLahir" value="<%= new Date(725821200000L) %>"/>
    <jsp:setProperty name="mhs" property="saldo" value="<%= new BigDecimal(1000000) %>"/>
</jsp:useBean>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Belajar JSP - Action Element</title>
</head>
<body>

<div>
    <form action="#">
        <div>
            <label for="nim">NIM</label>
            <input type="text" id="nim" name="nim" readonly value="${mhs.saldo}"/>
        </div>
        <div>
            <label for="nama">Nama Lengkap</label>
            <input type="text" name="namaLengkap" id="nama" readonly value="<%= mhs.getNamaLengkap() %>">
        </div>
        <div>
            <label for="tanggal">Tanggal Lahir</label>
            <input type="text" name="tanggal" id="tanggal" readonly value="<jsp:getProperty name="mhs" property="tanggalLahir"/>">
        </div>
    </form>
</div>
</body>
</html>
