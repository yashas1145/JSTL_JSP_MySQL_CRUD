<%--
  Created by IntelliJ IDEA.
  User: Yashas
  Date: 25-05-2023
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../include/header.jsp">
    <c:param name="title" value="MySQL Connector: Home"></c:param>
</c:import>

    <h1>Hello MySQL!</h1>

    <hr>

    <ul>
        <li>
            <a href="<%=request.getContextPath()%>/CrudController?operation=index">Return to home</a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/CrudController?operation=list_user">List all users from database</a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/CrudController?operation=insert_user">Insert a user</a>
        </li>
        </li>
    </ul>

<c:import url="../include/footer.jsp"></c:import>
