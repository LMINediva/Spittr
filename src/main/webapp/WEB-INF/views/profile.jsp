<%@page session="false" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>足迹博客</title>
    <link rel="stylesheet" href="<c:url value="/resources/style.css"/>">
</head>
<body>
<h1>你的基本信息</h1>
<c:out value="${spitter.id}"/><br/>
<c:out value="${spitter.username}"/><br/>
<c:out value="${spitter.firstName}"/> <c:out value="${spitter.lastName}"/><br/>
<c:out value="${spitter.email}"/>
</body>
</html>