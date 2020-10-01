<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.io.IOException" %>
<%@ page language="java" isELIgnored="false" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<%--init list value--%>
<%! List<String> items = Arrays.asList("Java 8", "Java Database Connectivity", "PostgreSQL", "Java Web", "Java Persistence API"); %>
<% request.setAttribute("technologies", items); %>

<core:set value="${1000}" var="salary"/>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Belajar JSP - JSTL Core</title>
</head>
<body>
<h3>If Statement</h3>
<core:if test="${salary < 1000}">
    <core:out value="Salary lower than $1.000"/>
</core:if>

<h3>Switch Case Statement</h3>
<core:choose>
    <core:when test="${salary > 1000}">
        <core:out value="Salary higher than $1.0000"/>
    </core:when>
    <core:when test="${salary == 1000}">
        <core:out value="Salary equal $1.000"/>
    </core:when>
    <core:otherwise>
        <core:out value="Something else"/>
    </core:otherwise>
</core:choose>

<h3>Foreach Element</h3>
<ul>
    <core:forEach items="${technologies}" var="tech">
        <li>
            <a href="<core:url value='/selamat-siang?name=${tech}'/>">
                <core:out value="${tech}"/>
            </a>
        </li>
    </core:forEach>
</ul>

<ul>
    <% for (String value : items) { %>
    <li><%= value %>
    </li>
    <% } %>
</ul>

</body>
</html>
