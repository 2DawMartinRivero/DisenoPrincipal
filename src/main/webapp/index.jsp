<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="VerArchivos"/>

<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/index.css"/>
        
        <title>Proyecto 2DAW 2023</title>
    </head>
    <body>
        <header>
            <h1>Proyectos 2DAW 2023</h1>
        </header>
        
        <ul>
            <c:forEach items="${lista}" var="directorio">
                <li><a href="../${directorio}">${directorio}</a></li>
            </c:forEach>
        </ul>
    </body>
</html>
