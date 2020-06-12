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
<%@ taglib prefix="fn" uri="http://topjava.javawebinar.ru/functions"%>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>--%>
<html>
<head>
    <title>Meals</title>
</head>
<body>
<section>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
    <a href="meals?action=create"
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
            <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.MealTo"/>
            <tr style="color: ${meal.excess ? 'red' : 'green'}">
            <td>
                    <%--${meal.dateTime.toLocalDate()} ${meal.dateTime.toLocalTime()}--%>
                    <%--<%=TimeUtil.toString(meal.getDateTime())%>--%>
                    <%--${fn:replace(meal.dateTime, 'T', ' ')}--%>
                            ${fn:formatDateTime(meal.dateTime)}
            </td>
            <td><c:out value="${meal.description}"></c:out></td>
            <td><c:out value="${meal.calories}"></c:out></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</section>
</body>
</html>
