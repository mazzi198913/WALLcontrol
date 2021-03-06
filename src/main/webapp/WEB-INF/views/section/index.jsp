<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../header.jsp"/>

<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Day of Week</th>
        <th scope="col">Hour</th>
        <th scope="col">Level</th>
        <th scope="col">Instructor</th>
        <th scope="col">Count Person</th>
        <th scope="col">Max Person</th>

        <th scope="col">Update</th>
        <th scope="col">Delete</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${sections}" var="section">
        <tr>
            <td scope="col">${section.id}</td>
            <td scope="col">${section.dayOfWeek}</td>
            <td scope="col">${section.hourStart}</td>
            <td scope="col">${section.level.name}</td>
            <td scope="col">${section.instructor.username}</td>
            <td scope="col">${section.clients.size()}</td>
            <td scope="col">${section.maxPerson}</td>
            <td scope="col"><a href="/section/update/${section.id}">update</a></td>
            <td scope="col"><a href="/section/delete/${section.id}">delete</a></td>

        </tr>

    </c:forEach>
    <tr>
        <td colspan="9">
            <a href="/section/add" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">ADD SECTION</a>
        </td>

    </tr>
    </tbody>
</table>

<jsp:include page="../footer.jsp"/>
