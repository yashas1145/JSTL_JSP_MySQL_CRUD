<%--
  Created by IntelliJ IDEA.
  User: Yashas
  Date: 24-05-2023
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:import url="../include/header.jsp">
    <c:param name="title" value="XML tags in JSTL"></c:param>
</c:import>

    <h1>JSTL XML tags</h1>

    <c:import url="../xmls/user.xml" var="XMLfile"></c:import>
    <x:parse xml="${XMLfile}" var="XMLdoc"/>

    <table class="table">
        <thead>
            <tr class="title">
                <th>Name</th>
                <th>Age</th>
                <th>Gender</th>
            </tr>
        </thead>
        <x:forEach select="$XMLdoc/users/user">
            <x:choose>
                <x:when select="gender = 'Female'">
                    <tr>
                        <td><b><i><x:out select="name"></x:out></i></b></td>
                        <td><b><i><x:out select="age"></x:out></i></b></td>
                        <td><b><i><x:out select="gender"></x:out></i></b></td>
                    </tr>
                </x:when>
                <x:otherwise>
                    <tr>
                        <td><x:out select="name"></x:out></td>
                        <td><x:out select="age"></x:out></td>
                        <td><x:out select="gender"></x:out></td>
                    </tr>
                </x:otherwise>
            </x:choose>
        </x:forEach>
    </table>

<c:import url="../include/footer.jsp"></c:import>
