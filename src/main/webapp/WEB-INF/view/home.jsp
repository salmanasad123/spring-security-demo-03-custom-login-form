<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- uri for spring security, we added the dependency in pom because its not available in spring core
it is a different project / different framework -->
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>

<html>
    <head>
        <title>
            luv2code Company Home Page
        </title>
    </head>

    <body>
        <h2>Luv 2 Code Company - HomePage - Yoohoo! </h2>
        <hr>
        <p>
            Welcome to Luv 2 Code Company homepage
        </p>
        <hr>

        <!-- display username and role-->
        <p>
            <!-- this will display the user name(user id) for the logged in user -->
            User: <security:authentication property="principal.username"/>
            <br><br>
            <!-- this will display the user roles for the logged in user  spring will display a list of roles
            because user can have multiple roles!-->
            Role(s): <security:authentication property="principal.authorities"/>
        </p>

        <hr>
        <!-- add a link to point to /leaders ....,  this is used for managers only managers can access this route -->
        <p>
            <a href="${pageContext.request.contextPath}/leaders"> Leadership Meeting </a>
                (Only for managers peeps)
        </p>

        <hr>

        <p>
            <a href="${pageContext.request.contextPath}/systems"> Admin Access </a>
            (Only for system peeps)
        </p>

        <hr>

        <!-- Add a logout button we use a form because all of the logout have to be submitted via a
        form with POST request, we use route logout provided by spring and spring will handle it automatically-->
        <form:form action="${pageContext.request.contextPath}/logout" method="POST">
            <input type="submit" value="Logout">
        </form:form>


    </body>

</html>