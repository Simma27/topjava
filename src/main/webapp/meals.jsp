<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<table border="5" align="center">
    <thead>
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${meals}" var="meal">
        <tr style="background-color:${meal.isExcess() ? 'red' : 'green'}">
            <td><b><fmt:parseDate value="${meal.getDateTime()}" pattern="yyyy-MM-dd'T'HH:mm"
                                  var="parsedDateTime" type="both"/>
                <fmt:formatDate pattern="dd.MM.yyyy HH:mm" value="${parsedDateTime}"/></b></td>
            <td><b><c:out value="${meal.getDescription()}"/></b></td>
            <td><b><c:out value="${meal.getCalories()}"/></b></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>