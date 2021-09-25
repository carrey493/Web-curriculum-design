<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: guan
  Date: 2019/12/15
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--这底下是啥数据库读出-->
<div class="single_news_content_in">
    <div class="single_news_content_in_name">
        ${news.name}
    </div>
    <div class="single_news_content_in_date">
        <fmt:formatDate value="${news.showTime}" pattern="yyyy-MM-dd"/>
    </div>
    ${news.content}
</div>
<!--上面不要动-->
</body>
</html>
