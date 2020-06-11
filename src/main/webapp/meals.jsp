<%--
  Created by IntelliJ IDEA.
  User: SIMMA
  Date: 11.06.2020
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3><a href="index.html">Home</a> </h3>
    </hr>
    <h2>Meals</h2>
    <table border="1" cellpadding="8" cellspacing="0">
<thead>
<tr>
    <td>Date</td>
    <td>Description</td>
    <td>Calories</td>
</tr>
</thead>
        <tr style="background-color: ${meal.isExcess() ? 'red' : 'green'}"></tr>
        <c:forEach items="${meals}" var="meal">
            <td><fmt:parseDate value="${meal.getDateTime()}" pattern="dd-MMM-yyyy'T'HH:mm" var="parseDate" type="both">
                <fmt:formatDate value="parseDate" pattern="dd.MM.yyyy HH:mm"></fmt:formatDate>
            </fmt:parseDate></td>
            <td>${meal.getDescription()}</td>
            <td>${meal.getCalories()}</td>
        </c:forEach>
    </table>
</body>
</html>
