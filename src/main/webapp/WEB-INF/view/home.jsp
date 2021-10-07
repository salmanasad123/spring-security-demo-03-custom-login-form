<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<!-- Add a logout button we use a form because all of the logout have to be submitted via a
form with POST request, we use route logout provided by spring and spring will handle it automatically-->
<form:form action="${pageContext.request.contextPath}/logout" method="POST">
    <input type="submit" value="Logout">
</form:form>


</body>

</html>