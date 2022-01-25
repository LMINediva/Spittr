<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>足迹博客</title>
    <link rel="stylesheet" href="<c:url value="/resources/style.css"/>">
</head>
<body>
<div class="spittleView">
    <div class="spittleMessage">
        <c:out value="${spittle.message}"/>
    </div>
    <div>
        <span class="spittleTime">
            <fmt:formatDate value="${spittle.time}" type="both"
                            dateStyle="full" timeStyle="full"/>
        </span>
    </div>
</div>
</body>
</html>