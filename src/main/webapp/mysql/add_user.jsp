<%--
  Created by IntelliJ IDEA.
  User: Yashas
  Date: 25-05-2023
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../include/header_new.jsp"%>

    <h1>Add a user!</h1>

    <hr>

    <form action="<%=request.getContextPath()%>/CrudController?crud=add_user_operation" method="POST">
        Username: <input type="text" name="username" required> <br>
        Email: <input type="email" name="usermail" required> <br>
        Age: <input type="age" name="userage"> <br>
        <input type="submit" value="Add user">
    </form>

<%@ include file="../include/footer.jsp"%>
