<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="include/header.jsp">
    <c:param name="title" value="JSTL Basics"></c:param>
</c:import>

    <h1><%= "Java Full Stack: JSP!" %>
    </h1>
    <br/>
    <ul>
        <li>
            <a href="<%=request.getContextPath()%>/Controller?forward=introduction_jstl">Introduction: JSTL tags</a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/Controller?forward=introduction_i18n&locale=en_US">Introduction: I18N</a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/Controller?forward=sql_connector">Database connectivity: CRUD operations</a>
        </li>
    </ul>

<c:import url="include/footer.jsp"></c:import>