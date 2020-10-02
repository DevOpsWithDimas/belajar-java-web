<%@ page language="java" isELIgnored="false" %>
<%@taglib prefix="formatter" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:if test="${param.get('language') != null}">
    <formatter:setLocale value="${param.get('language')}"/>
</c:if>

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

<formatter:bundle basename="languages/lang_pack">
    <form action="<c:url value="/jstl/jstl-formatter-il8n.jsp"/>">
        <select name="language" id="language">
            <option value="in_ID">Indonesia</option>
            <option value="en_US">United State</option>
            <option value="ja_JP">Jepang</option>
        </select>
        <button type="submit"><formatter:message key="button_submit"/></button>
    </form>
</formatter:bundle>

</body>
</html>
