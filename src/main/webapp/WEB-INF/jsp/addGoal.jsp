<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Add Goal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                <spring:message code="goal.add"/>
            </a>
            <ul class="nav">
            </ul>
        </div>
    </div>
</div>

<div class="container">
    <%--@declare id="textinput1"--%>
    <div>
        <h1>
            <spring:message code="goal.add"/>
        </h1>

        <p>
            <spring:message code="goal.workout"/>
            <br>
            &nbsp;
        </p>

        <a class="btn" href="?language=en">
            <spring:message code="language.english"/>
        </a>
        <a class="btn" href="?language=uk">
            <spring:message code="language.ukrainian"/>
        </a>
        <br/>
        <br/>
    </div>

    <form:form commandName="goal">
        <form:errors path="*" cssClass="errorblock" element="div"/>
        <label for="textinput1">
            <spring:message code="goal.minutes"/>
        </label>
        <form:input path="minutes" cssErrorClass="error"/>
        <form:errors path="minutes" cssClass="error"/>
        <br/>
        <input type="submit" class="btn" value="<spring:message code="goal.enter"/>"/>
    </form:form>

    <div class="control-group">
    </div>
</div>

<script src="jquery-2.1.3.js"/>
<script src="assets/js/bootstrap.js"/>
</body>
</html>


<%--<html>
<head>
    <title>Add Goal Here</title>
    <style>
        .error {
            color: #ff0000;
        }

        .errorblock {
            color: #000;
            background-color: #ffeeee;
            border: 3px solid #ff0000;
            padding: 8px;
            margin: 16px;
        }
    </style>
</head>

<body>
<spring:message code="language"/> <a href="?language=en">English</a> | <a href="?language=uk">Ukrainian</a>
<form:form commandName="goal">
    <form:errors path="*" cssClass="errorblock" element="div" />
    <table>
        <tr>
            <td><spring:message code="goal.minutes"/></td>
            <td><form:input path="minutes"/></td>
            <td><form:errors path="minutes" cssClass="error"/></td>
        </tr>
        <tr>
            <td colspan="3">
                <input type="submit" value="<spring:message code="goal.enter"/>"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>--%>
