<%-- 
    Document   : resultados
    Created on : 3 jun 2024, 17:28:27
    Author     : jossu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Resultados de Búsqueda</title>
</head>
<body>
    <h1>Resultados de Búsqueda</h1>
    <%
        String query = request.getParameter("query");
        // Aquí puedes agregar la lógica para mostrar los resultados de la búsqueda
        // usando la variable `query`
    %>
    <p>Resultados para "<%= query %>":</p>
    <!-- Aquí va el código para mostrar los productos encontrados -->
</body>
</html>