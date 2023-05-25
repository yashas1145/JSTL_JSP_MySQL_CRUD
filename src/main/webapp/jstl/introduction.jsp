<%--
  Created by IntelliJ IDEA.
  User: Yashas
  Date: 24-05-2023
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../include/header.jsp">
  <c:param name="title" value="Introduction to JSTL"></c:param>
</c:import>

    <h1>I'm a JSTL page</h1><br>

    <h3>With bean</h3> <br>
    <c:set var="name" value="Yashas"></c:set>
    Hello ${name}! Welcome to JSTL! <br>

    <h3>Without bean</h3> <br>
    <c:remove var="name"></c:remove>
    Hello ${name}! Welcome to JSTL! <br>

    Any params: "${param.forward}" <br>

    <a href="<%= request.getContextPath()%>/Controller?forward=core_tag">Read a bean</a> <br>
    <a href="<%= request.getContextPath()%>/Controller?forward=redirection">JSTL URL and redirection</a> <br>
    <a href="<%= request.getContextPath()%>/Controller?forward=function">JSTL Function tags</a> <br>
    <a href="<%= request.getContextPath()%>/Controller?forward=xml_tag">JSTL XML tags</a> <br>

<c:import url="../include/footer.jsp"></c:import>