    <%@page session="false" pageEncoding="UTF-8" %>
        <%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
        <%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
        <!DOCTYPE html>
        <html lang="zh">
        <head>
        <meta charset="UTF-8">
        <title>足迹微博</title>
        <link rel="stylesheet" href="<s:url value="/resources/style.css"/>">
        </head>
        <body>
        <div id="header">
        <t:insertAttribute name="header"/>
        </div>
        <div id="content">
        <t:insertAttribute name="body"/>
        </div>
        <div id="footer">
        <t:insertAttribute name="footer"/>
        </div>
        </body>
        </html>