<%--
  Created by IntelliJ IDEA.
  User: Roma
  Date: 03.02.2024
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create task</title>
    <%@include file="bootstrap.jsp" %>
</head>
<body>
    <div class="container-fluid">
        <%@include file="header.jsp" %>

        <form class="container" action="${pageContext.request.contextPath}/addTask" method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Task name</label>
                <input class="form-control" id="name" placeholder="Task name...">
            </div>
            <div class="mb-3">
                <label for="desc" class="form-label">Description</label>
                <textarea class="form-control" id="desc" rows="3" placeholder="Task description..."></textarea>
            </div>
            <div class="mb-3">
                <label for="deadline" class="form-label">Deadline</label>
                <input type="date" class="form-control" id="deadline">
            </div>
        </form>
    </div>
</body>
</html>
