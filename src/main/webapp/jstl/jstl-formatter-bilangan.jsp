<%@ page import="java.util.Date" %>
<%@ page import="java.math.BigDecimal" %>
<%@ page language="java" isELIgnored="false" %>
<%@taglib prefix="formatter" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%--init value--%>
<% request.setAttribute("saldo", new BigDecimal(10000000)); %>
<% request.setAttribute("tanggal", new Date()); %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Belajar JSP - JSTL Formatter Bilangan</title>
</head>
<body>

<ul>
    <li>Format Uang: <formatter:formatNumber value="${saldo}" groupingUsed="true" type="CURRENCY"/></li>
    <li>Format Tanggal: <formatter:formatDate value="${tanggal}" pattern="dd/MMMM/yyyy"/></li>
</ul>

</body>
</html>
