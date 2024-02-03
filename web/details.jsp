<%@ page import="kz.bitlab.academy.entity.Task" %><%--
  Created by IntelliJ IDEA.
  User: Roma
  Date: 03.02.2024
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="bootstrap.jsp" %>
</head>
<body>
<div class="container-fluid">
    <%@include file="header.jsp" %>

    <div>
        <%
            Task task = (Task) request.getAttribute("task");
        %>

        <form class="mb-3" action="${pageContext.request.contextPath}/updateTask?id=<%=task.getId()%>" method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Task name</label>
                <input class="form-control" id="name" name="name" value="<%=task.getName()%>">
            </div>
            <div class="mb-3">
                <label for="desc" class="form-label">Description</label>
                <textarea class="form-control" id="desc" name="desc" rows="3"><%=task.getDescription()%></textarea>
            </div>
            <div class="mb-3">
                <label for="deadlineDate" class="form-label">Deadline</label>
                <input type="date" name="deadlineDate" class="form-control" id="deadlineDate"
                       value="<%=task.getDeadlineDate()%>">
            </div>
            <div class="mb-3">
                <label for="isDone" class="form-label">Deadline</label>
                <select class="form-select mb-3" id="isDone" name="isDone">
                    <option selected value="<%=task.isDone()%>"><%=task.isDone() ? "Done" : "Not done"%></option>
                    <option value="<%=!task.isDone()%>"><%=task.isDone() ? "Not done" : "Done"%></option>
                </select>
            </div>

            <button type="submit" class="btn btn-success">Save</button>
            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                Delete
            </button>
        </form>

        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Delete task</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>Do you want to delete selected task?</p>
                    </div>
                    <div class="modal-footer">
                        <form class="mb-3" action="${pageContext.request.contextPath}/deleteTask?id=<%=task.getId()%>" method="post">
                            <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Cancel</button>
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
