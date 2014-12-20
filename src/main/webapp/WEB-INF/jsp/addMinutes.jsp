<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Add Minutes Page</title>
    <script type="application/javascript" src="jquery-2.1.3.js"/>
    <script type="text/javascript">
        $(document).ready(
                function () {
                    $.getJSON('<spring:url value="activities.json"/>', {
                        ajax: 'true'
                    }, function (data) {
                        var html = '<option value="">--Please select one--</option>';
                        var len = data.length;
                        for (var i = 0; i < len; i++) {
                            html += '<option value="' + data[i].desc + '">'
                            + data[i].desc + '</option>';
                        }
                        html += '</option>';

                        $('#activities').html(html);
                    });

                });
    </script>
    <style>
        .error {
            color: #ff0000;
        }

        .errorblock {
            color: #000;
            background-color: #ffEEEE;
            border: 3px solid #ff0000;
            padding: 8px;
            margin: 16px;
        }
    </style>
</head>

<body>
<h1><spring:message code="goal.addMinutes"/></h1>

<spring:message code="language"/> <a href="?language=en">English</a> | <a href="?language=uk">Ukrainian</a>

<form:form commandName="exercise">
    <form:errors path="*" cssClass="errorblock" element="div"/>
    <table>
        <tr>
            <td><spring:message code="goal.text"/></td>
            <td>
                <form:input path="minutes"/>
            </td>
            <td>
                <form:select id="activities" path="activity">

                </form:select>
            </td>
            <td><form:errors path="minutes" cssClass="error"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="<spring:message code="minutes.button.enter"/>"/>
            </td>
        </tr>
    </table>
</form:form>

<h1><spring:message code="goal.result"/> ${goal.minutes}</h1>
</body>
</html>
