<%@page session="false" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>足迹微博</title>
    <link rel="stylesheet" href="<c:url value="/resources/style.css"/>">
</head>
<body>
<h1><s:message code="spittr.welcome"/></h1>
<s:url value="/spitter/register" var="registerUrl"/>
<a href="<c:url value="/"/>">足迹微博</a> |
<a href="${registerUrl}">注册</a>
</body>
</html>