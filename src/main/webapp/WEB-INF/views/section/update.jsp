<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Section Update</title>

    <!-- Bootstrap core CSS-->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="/resources/css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">

<div class="container">
    <div class="card card-register mx-auto mt-5">
        <div class="card-header">Update Section</div>
        <div class="card-body">
            <form:form method="post" modelAttribute="section">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <form:hidden path="id" value="${section.id}"/>

                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input value="${section.hourStart}" type="text" id="hourStart" name="hourStart"
                                       class="form-control"
                                       placeholder="HourStart"
                                       required="required" autofocus="autofocus">
                                <label for="hourStart">Hour Start</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input value="${section.maxPerson}" type="text" id="maxPerson" name="maxPerson"
                                       class="form-control"
                                       placeholder="MaxPerson"
                                       required="required" autofocus="autofocus">
                                <label for="maxPerson">Max Person</label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="dayOfWeek">Day of Week</label>
                    <select path="dayOfWeek" name="dayOfWeek" id="dayOfWeek" class="form-control">
                        <option selected>Choose ...</option>
                        <c:forEach items="${days}" var="day">
                            <option value="${day}">${day}</option>
                            <c:choose>
                                <c:when test="${section.dayOfWeek==null}">
                                    <option value="${day}">${day}</option>
                                </c:when>
                                <c:otherwise>
                                    <option selected value="${day}">${day}</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </select>
                </div>

                <div class="form-group">
                    <label for="instructor">Instructor</label>
                    <select name="instructor" class="form-control" id="instructor">
                        <option selected>Choose ...</option>

                        <c:forEach items="${instructors}" var="instructor">
                            <c:choose>
                                <c:when test="${section.instructor.id==null}">
                                    <option value="${instructor.id}">${instructor.username}</option>
                                </c:when>
                                <c:otherwise>
                                    <option selected value="${instructor.id}">${instructor.username}</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </select>
                </div>

                <div class="form-group">

                    <label for="level">Level</label>
                    <select name="level" class="form-control" id="level">
                        <option selected>Choose ...</option>

                        <c:forEach items="${levels}" var="level">

                            <c:choose>
                                <c:when test="${section.level.id==null}">
                                    <option value="${level.id}">${level.name}</option>
                                </c:when>

                                <c:otherwise>
                                    <option selected value="${level.id}">${level.name}</option>
                                </c:otherwise>
                            </c:choose>

                        </c:forEach>
                    </select>
                </div>

                <div class="form-group">

                    <label for="clients">Clients</label>
                    <select multiple name="clients" class="form-control" id="clients">
                        <option selected>Choose ...</option>

                        <c:forEach items="${clients}" var="client">

                            <%--<c:choose>--%>
                                <%--<c:when test="${section.}">--%>
                                    <%--<option value="${client.id}">${client.firstName}</option>--%>
                                <%--</c:when>--%>
                                <%----%>
                                <%--<c:otherwise>--%>
                                    <%--<option selected value="${client.id}">${client.firstName}</option>--%>
                                <%--</c:otherwise>--%>
                            <%--</c:choose>--%>


                            <option value="${client.id}">${client.firstName}</option>

                        </c:forEach>
                    </select>
                </div>

                <input type="submit" class="btn btn-primary btn-block" value="Save"/>
                <div class="col-md-6">
                    <div class="form-label-group">
                        <form:errors path="*"/>

                    </div>
                </div>
            </form:form>

        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>
