<%--
  Created by IntelliJ IDEA.
  User: SIMMA
  Date: 11.06.2020
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://topjava.javawebinar.ru/functions" %>
<html>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
    <table border="1" cellpadding="8" cellspacing="0">
<thead>
<tr>
    <td>Date</td>
    <td>Description</td>
    <td>Calories</td>
</tr>
</thead>
        <tbody>
        <c:forEach items="${meals}" var="meal">
            <tr style="color: ${meal.isExcess() ? 'red' : 'green'}">
            <td></td>
            <td><c:out value="${meal.getDescription()}"></c:out></td>
            <td><c:out value="${meal.getCalories()}"></c:out></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>
