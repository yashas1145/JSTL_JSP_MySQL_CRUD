<%@ page import="com.basic.entity.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Yashas
  Date: 25-05-2023
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../include/header.jsp">
    <c:param name="title" value="List all users"></c:param>
</c:import>

    <h1>All users!</h1>

    <hr>

    <table border="1" class="table">
        <thead>
            <th>User ID</th>
            <th>User name</th>
            <th>User mail</th>
            <th>User age</th>
            <th>Update user</th>
            <th>Delete user</th>
        </thead>

        <%
            List<User> list = (List) request.getAttribute("list_user");

            for (User i : list) {
                out.print("<tr>");
                    out.print("<td>" + i.getIdusers() + "</td>");
                    out.print("<td>" + i.getUsername() + "</td>");
                    out.print("<td>" + i.getUsermail() + "</td>");
                    out.print("<td>" + i.getUserage() + "</td>");
                    String update_url = request.getContextPath() + "/CrudController?operation=update_user&idusers=" + i.getIdusers();
                    out.print("<td><a href=\"" + update_url + "\"><i class=\"fa fa-pencil\"></i></td>");
                    String delete_url = request.getContextPath() + "/CrudController?operation=delete_user&idusers=" + i.getIdusers();
                    out.print("<td><a href=\"" + delete_url + "\"><i class=\"fa fa-trash-o\"></i></td>");

                out.print("</tr>");
            }
        %>
    </table>

<c:import url="../include/footer.jsp"></c:import>