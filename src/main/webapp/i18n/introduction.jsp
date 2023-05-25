<%--
  Created by IntelliJ IDEA.
  User: Yashas
  Date: 24-05-2023
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="../include/header.jsp">
    <c:param name="title" value="Introduction to Internationalization"></c:param>
</c:import>

    <c:set var="dateTime" value="<%=new java.util.Date()%>"></c:set>
    <h5>Access date: <fmt:formatDate value="${dateTime}" type="date"></fmt:formatDate> </h5> <br>
    <h5>Access time: <fmt:formatDate value="${dateTime}" type="time"></fmt:formatDate> </h5> <br>
    <h5>Concat time and date: <fmt:formatDate value="${dateTime}" type="both" timeZone="GMT -5:30"></fmt:formatDate> </h5> <br>

    <h1>Internationalization</h1>
    <h3>Choose the language to be viewed in:</h3>
    <ul>
        <li>
            <a href="<%=request.getContextPath()%>/Controller?forward=introduction_i18n&locale=en_US">English(US)</a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/Controller?forward=introduction_i18n&locale=en_IN">English - India(IN)</a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/Controller?forward=introduction_i18n&locale=hi_IN">Hindi - India(IN)</a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/Controller?forward=introduction_i18n&locale=es_US">Spanish(US)</a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/Controller?forward=introduction_i18n&locale=ru_RU">Russian(RU)</a>
        </li>
    </ul>

    <hr>

    <fmt:setLocale value="${param.locale}"/>
    <fmt:bundle basename="../com/basic/i18n/website">
        <fmt:message key="label.hello"></fmt:message> Yashas <br>
        <fmt:message key="label.msg"></fmt:message> <br>
        <fmt:message key="label.welcome"></fmt:message> <br>
        <fmt:message key="label.thanks"></fmt:message> <br>
    </fmt:bundle>

    Current locale: <b>${param.locale}</b> <br>
    Sample currency notation: <fmt:formatNumber type="currency" value="10000"></fmt:formatNumber>

<c:import url="../include/footer.jsp"></c:import>
