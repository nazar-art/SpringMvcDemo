<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Add Minutes Page</title>
    <script type="text/javascript" src="jquery-2.1.3.js"></script>

    <!-- Le styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <style>
        body {
            padding-top: 60px;
            /* 60px to make the container go all the way
                 to the bottom of the topbar */
        }
    </style>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js">
    </script>
    <![endif]-->
    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

    <script type="text/javascript">
        $(document).ready(
                function() {
                    $.getJSON('<spring:url value="activities.json"/>', {
                        ajax : 'true'
                    }, function(data){
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

<div class="navbar navbar-fixed-top navbar-inverse">
    <div class="navbar-inner">
        <div class="container">
            <a class="brand" href="#">
                <spring:message code="goal.addMinutes"/>
            </a>
            <ul class="nav">
            </ul>
        </div>
    </div>
</div>

<div class="container">
    <div>
        <h1>
            <spring:message code="goal.addMinutes"/>
        </h1>
    </div>
    <a class="btn" href="?language=en">
        <spring:message code="language.english"/>
    </a>
    <a class="btn" href="?language=uk">
        <spring:message code="language.ukrainian"/>
    </a>
    <br/>
    <br/>
    <form:form commandName="exercise">
        <form:errors path="*" cssClass="errorblock" element="div"/>
        <div class="control-group">
            <label for="textinput1"> <%--@declare id="textinput1"--%>
                <spring:message code="goal.text"/>
            </label>
            <form:input path="minutes"/>
            <form:errors path="minutes" cssClass="error"/>
        </div>

        <div class="control-group">
            <label for="selectinput1"> <%--@declare id="selectinput1"--%>
                <spring:message code="minutes.activity"/>
            </label>
            <form:select id="activities" path="activity"/>
        </div>

        <input type="submit" class="btn" value="<spring:message code="minutes.button.enter"/>"/>

    </form:form>

      <span class="label">
        <spring:message code="goal.result"/> ${goal.minutes}
      </span>
</div>

<script src="assets/js/bootstrap.js"/>


<%--
<h1><spring:message code="goal.addMinutes"/></h1>

<spring:message code="language"/> <a href="?language=en">English</a> | <a href="?language=uk">Ukrainian</a>

<form:form commandName="exercise">
    <form:errors path="*" cssClass="errorblock" element="div"/>
    <table>
        <tr>
            <td><spring:message code="goal.text"/></td>
            <td>
                <form:input path="minutes"/>
                <form:errors path="minutes" cssClass="error"/>
            </td>
            <td>
                <form:select id="activities" path="activity"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="<spring:message code="minutes.button.enter"/>"/>
            </td>
        </tr>
    </table>
</form:form>

<h1><spring:message code="goal.result"/> ${goal.minutes}</h1>
--%></body>
</html>
