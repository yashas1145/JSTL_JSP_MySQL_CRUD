<%--
  Created by IntelliJ IDEA.
  User: Yashas
  Date: 24-05-2023
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<c:import url="../include/header.jsp">
    <c:param name="title" value="Functions tag"></c:param>
</c:import>

    <h1>Functions in JSP</h1>
    <%
        List<String> name = new ArrayList<>();
        name.add("Yashas");
        name.add("Shashu");
        name.add("Raghav");
    %>
    <c:set var="name_array" value="<%=name%>"></c:set>
    Length of array: ${fn:length(name_array)} <br>
    Trimming an object: ${fn:trim("www.    google.    com")} <br>
    Escaping XML: ${fn:escapeXml("<h1>Hello XML!</h1")} <br>

    <h4>Text functions</h4>
    <ul>
        <li>
            STARTS WITH: ${fn:startsWith("ubl40543", "ubl")}
        </li>
        <li>
            ENDS WITH: ${fn:endsWith("ubl40543", "40543")}
        </li>
        <li>
            CONTAINS: ${fn:contains("ubl40543", "UBL")}
        </li>
        <li>
            CONTAINS (case ignored): ${fn:containsIgnoreCase("ubl40543", "UBL")}
        </li>
        <li>
            TO LOWER CASE: ${fn:toLowerCase("UBL")}
        </li>
        <li>
            TO UPPER CASE: ${fn:toUpperCase("ubl")}
        </li>
        <li>
            INDEX OF: ${fn:indexOf("ubl40543", "40543")}
        </li>
        <li>
            REPLACE: ${fn:replace("kjm40543", "kjm", "ubl")}
        </li>
        <li>
            SUBSTRING: ${fn:substring("ubl40543", 0, 3)}
        </li>
        <li>
            SUBSTRING BEFORE: ${fn:substringBefore("WDP4D UBL 40543", "UBL")}
        </li>
        <li>
            SUBSTRING AFTER: ${fn:substringAfter("WDP4D UBL 40543", "UBL")}
        </li>
    </ul> <br>

    <h3>Splitting a string</h3><br>
    <c:set var="arr" value="${fn:split('WDP4D_UBL_40543', '_')}"></c:set>
    <c:forEach items="${arr}" var="i">
        ${i}.
    </c:forEach> <br>

    <h3>Joining a set of strings</h3><br>
    String: ${fn:join(arr, "->")}

<c:import url="../include/footer.jsp"></c:import>