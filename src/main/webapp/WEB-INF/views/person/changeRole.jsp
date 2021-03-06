<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Erdenebayar
  Date: 11/21/2017
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create Person</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <link href="<c:url value="/resource/css/style.css" />" rel="stylesheet">

</head>

<body>
<jsp:include page="../template/nav.jsp" />

<div class="container " style="margin-bottom: 80px;">
    <div class="container" style="width: 600px; margin-top: 20px;">
        <c:url value="/persons/changeRole" var="url"/>
        <form:form commandName="moduleForm" action="${url}" method="post">
            <form:hidden path="id"/>
            <form:errors path="*" cssClass="alert alert-danger" element="div"/>
            <div class="form-group">
                <label for="username">Username</label>
                <form:input path="username" cssClass="form-control" placeholder="Username" disabled="true"/>
                <form:errors path="username" cssClass="text-danger"/>
            </div>
            <c:forEach items="${roles}" var="row">
                <label class="checkbox-inline">
                    <form:checkbox path="roles" value="${row}"/> ${row.name}
                </label>
            </c:forEach>
            <hr/>
            <div>
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
            <security:csrfInput/>
        </form:form>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
