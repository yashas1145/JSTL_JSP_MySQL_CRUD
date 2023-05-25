<%--
  Created by IntelliJ IDEA.
  User: Yashas
  Date: 25-05-2023
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../include/header_new.jsp"%>
<%@ page import="com.basic.entity.User" %>

    <h1>Update user!</h1>

    <hr>

    <%
        User user = (User) request.getAttribute("user");
        String username = user.getUsername();
        String usermail = user.getUsermail();
        int userage = user.getUserage();
    %>

    <form action="<%=request.getContextPath()%>/CrudController?crud=update_user_operation" method="POST">
        Username: <input type="text" name="username" value="<%=username%>" required> <br>
        Email: <input type="email" name="usermail" value="<%=usermail%>" required> <br>
        Age: <input type="age" name="userage" value="<%=userage%>"> <br>
        <input type="hidden" name="user_id" value="<%=request.getParameter("idusers")%>">
        <input type="submit" value="Update user">
</form>

<%@ include file="../include/footer.jsp"%>

