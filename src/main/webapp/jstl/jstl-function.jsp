<%@ page import="java.util.Date" %>
<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%--init list value--%>
<%! List<String> items = Arrays.asList("Java 8", "Java Database Connectivity", "PostgreSQL", "Java Web", "Java Persistence API"); %>
<% request.setAttribute("technologies", items); %>
<% request.setAttribute("namaLengkap", new String("Dimas Maryanto")); %>
<% request.setAttribute("saldo", new BigDecimal(10000000)); %>
<% request.setAttribute("tanggal", new Date()); %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Belajar JSP - JSTL Function Tags</title>
</head>
<body>

<h3>containsIgnoreCase</h3>
<c:if test='${ fn:containsIgnoreCase(namaLengkap, "dimas maryanto") }'>
    <c:out value="Nama lengkap sama seperti pembandingnya"/>
</c:if>

<h3>Jumlah element array</h3>
<c:if test="${fn:length(technologies) >= 1 }">
    <c:out value="Jumlah element dari array technologies lebih besar dari 1"/>
</c:if>

<h3>Jumlah element string</h3>
<c:if test="${fn:length(namaLengkap) >= 15 }">
    <c:out value="Jumlah element dari namaLengkap lebih besar dari 1"/>
</c:if>

</body>
</html>
