<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title>Add Goal</title>
</head>

<body>
Language: <a href="?language=en">English</a> | <a href="?language=uk">Ukrainian</a>
<form:form commandName="goal">
    <table>
        <tr>
            <td><spring:message code="goal.minutes"/></td>
            <td><form:input path="minutes"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Enter Goal Minutes"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
