<%@page session="false" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>足迹博客</title>
    <link rel="stylesheet" href="<c:url value="/resources/style.css"/>">
</head>
<body>
<h1>注册</h1>
<sf:form method="POST" action="register" modelAttribute="spitter">
    <sf:errors path="*" element="div" cssClass="errors"/>
    <sf:label path="firstName"
              cssErrorClass="error">姓</sf:label>：
    <sf:input path="firstName" cssErrorClass="error"/><br/>
    <sf:label path="lastName"
              cssErrorClass="error">名</sf:label>：
    <sf:input path="lastName" cssErrorClass="error"/><br/>
    <sf:label path="email"
              cssErrorClass="error">邮箱</sf:label>：
    <sf:input path="email"
              cssErrorClass="error"/><br/>
    <sf:label path="username"
              cssErrorClass="error">用户名</sf:label>：
    <sf:input path="username" cssErrorClass="error"/><br/>
    <sf:label path="password"
              cssErrorClass="error">密码</sf:label>：
    <sf:password path="password" cssErrorClass="error"/><br/>
    <input type="submit" value="注册"/>
</sf:form>
</body>
</html>