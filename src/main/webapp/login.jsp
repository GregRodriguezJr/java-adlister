<%--
  Created by IntelliJ IDEA.
  User: gregr
  Date: 11/1/22
  Time: 6:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<%@include file="partials/head.html"%>
<body>
    <%@include file="partials/navbar.html"%>
    <form style="width:500px;margin: 0 auto" class="my-5" method="POST" action="/login.jsp">
        <div class="form-group">
            <label for="userName">User name</label>
            <input name="userName" type="text" class="form-control" id="userName" placeholder="Enter user name">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input name="password" type="password" class="form-control" id="password" placeholder="Password">
        </div>
        <button type="submit" class="btn btn-primary my-2">Submit</button>
    </form>

    <%
        if (request.getParameter("userName") != null || request.getParameter("password") != null) {
            if(request.getParameter("userName").equals("admin") && request.getParameter("password").equals("password")) {
                response.sendRedirect("/profile.jsp");
            } else {
                response.sendRedirect("/login.jsp");
            }
        }
    %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
