<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>足迹博客</title>
    <link rel="sytlesheet" href="<c:url value="/resources/style.css"/>">
</head>
<body>
<div class="spittleForm">
    <h1>说点儿什么吧...</h1>
    <form method="POST" name="spittleForm">
        <input type="hidden" name="latitude">
        <input type="hidden" name="longitude">
        <textarea name="message" cols="80" rows="5"></textarea><br/>
        <input type="submit" value="发布"/>
    </form>
</div>
<div class="listTitle">
    <h1>最近的动态</h1>
    <ul class="spittleList">
        <c:forEach items="${spittleList}" var="spittle">
            <li id="spittle_<c:out value="spittle.id"/>">
                <div class="spittleMessage"><c:out value="${spittle.message}"/></div>
                <div>
                    <span class="spittleTime">
                        <fmt:formatDate value="${spittle.time}" type="both"
                                        dateStyle="full" timeStyle="full"/>
                    </span>
                    <span class="spittleLocation">
                        (<c:out value="${spittle.latitude}" default="0"/>, <c:out value="${spittle.longitude}"
                                                                                  default="0"/>)
                    </span>
                </div>
            </li>
        </c:forEach>
    </ul>
    <c:if test="${fn:length(spittleList) gt 20}">
        <hr/>
        <s:url value="/spittles?count=${nextCount}" var="more_url"/>
        <a href="${more_url}">显示更多</a>
    </c:if>
</div>
</body>
</html>