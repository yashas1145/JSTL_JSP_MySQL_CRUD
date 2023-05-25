<%@ page import="com.basic.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: Yashas
  Date: 25-05-2023
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../include/header_new.jsp"%>

<%
    User user = (User) request.getAttribute("user");
    String username = user.getUsername();
%>

<h1>Are you sure to delete the user "<%= username%>"?</h1>

<hr>

<table>
    <tr>
        <td>
            <form action="<%=request.getContextPath()%>/CrudController?crud=delete_user_operation" method="POST">
                <input type="hidden" name="user_id" value="<%=request.getParameter("idusers")%>">
                <input type="hidden" name="choice" value="yes">
                <input type="submit" value="Yes">
            </form>
        </td>
        <td>
            <form action="<%=request.getContextPath()%>/CrudController?crud=delete_user_operation" method="POST">
                <input type="hidden" name="user_id" value="<%=request.getParameter("idusers")%>">
                <input type="hidden" name="choice" value="no">
                <input type="submit" value="No">
            </form>
        </td>
    </tr>
</table>

<%@ include file="../include/footer.jsp"%>

