<%--
  Created by IntelliJ IDEA.
  User: Yashas
  Date: 24-05-2023
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<c:import url="../include/header.jsp">
    <c:param name="title" value="Core tag demo"></c:param>
</c:import>

    <h1>User bean</h1>
    <jsp:useBean id="user" class="com.basic.bean.User" scope="application"></jsp:useBean>
    <jsp:setProperty name="user" property="first_name" value="Yashas"></jsp:setProperty>
    <jsp:setProperty name="user" property="last_name" value="BN"></jsp:setProperty>
    <jsp:setProperty name="user" property="salary" value="65000"></jsp:setProperty>

    First name: ${user.getFirst_name()} <br>
    Last name: ${user.getLast_name()} <br>

    Salary grade with core:if branching:
    <c:if test="${user.salary <= 50000}">
        Salary grade is P1
    </c:if>
    <c:if test="${user.salary > 50000}">
        Salary grade is P2
    </c:if> <br>

    Salary grade with core:choose/when branching:
    <c:choose>
        <c:when test="${user.salary <= 50000}">
            Salary grade is P1
        </c:when>
        <c:when test="${user.salary > 50000}">
            Salary grade is P2
        </c:when>
        <c:otherwise>
            Salary grade is unknown
        </c:otherwise>
    </c:choose> <br>

    Sample numbers displayed using for loop:
    <c:forEach var="i" begin="0" end="10" step="2">
        <c:choose>
            <c:when test="${i < 10}">
                ${i} =>
            </c:when>
            <c:otherwise>
                ${i}
            </c:otherwise>
        </c:choose>
    </c:forEach> <br>

    <%
        List<String> name = new ArrayList<>();
        name.add("Yashas");
        name.add("Shashu");
        name.add("Raghav");
    %>

    Names displayed using forEach loop:
    <c:forEach items="<%=name%>" var="i">
        ${i}
    </c:forEach> <br>

    <% String url = "www.google.com.add.address.city"; %>
    URL separator using forTokens loop:
    <c:forTokens items="<%= url%>" delims="." var="i">
        Token = ${i}.
    </c:forTokens> <br>

<c:import url="../include/footer.jsp"></c:import>