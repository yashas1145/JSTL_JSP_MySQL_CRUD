<%--
  Created by IntelliJ IDEA.
  User: Yashas
  Date: 24-05-2023
  Time: 13:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../include/header.jsp">
    <c:param name="title" value="JSTL Core URL"></c:param>
</c:import>

    <h1>Index page redirection: </h1>
    <a href="<c:url value="/index.jsp"></c:url>">Redirect to Index page</a> <br>

    <%--<c:redirect url="https://udemy.com"></c:redirect>--%>

    Exception handling:
    <c:catch var="exc">
        <%
            int x = 10/10;
        %>
    </c:catch>

    <c:if test="${exc == null}">
        No errors occured <br>
    </c:if>
    <c:if test="${exc != null}">
        ${exc.message} <br>
    </c:if>

<c:import url="../include/footer.jsp"></c:import>