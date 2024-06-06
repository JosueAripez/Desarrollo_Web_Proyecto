<%-- 
    Document   : admi_productos
    Created on : 22 may 2024, 18:49:16
    Author     : jossu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    String userName = request.getParameter("userName");
    HttpSession currentSession = request.getSession(false);
    String sessionUserName = (currentSession != null) ? (String) currentSession.getAttribute("userName") : null;
    if (userName != null) {
        sessionUserName = userName; // Si se proporciona un nombre de usuario en el parámetro, lo usamos
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nat's Veggies</title>
        <link href="Recursos/Imgs/Logo_nav.png" rel="icon">
        <link href="Recursos/Styles/index.css" rel="stylesheet">
        <link href='Recursos/Styles/productos.css' rel='stylesheet'>
        <script src="Recursos/Scripts/index.js"></script>    
    </head>
    <body>
        <header class="header">
                <p>¡Bienvenidos a Nat's Veggies! La puerta de entrada a la excelencia en productos y servicio</p>
            </header>

            <div class="nav">
                <div class="contenedor-nav" id="nav2">
                    <img src="Recursos/Imgs/Logo_nav.png" class="logo-nav" name="logo-nav">
                    <p class="text-nav">Nat's Veggies</p>
                    <input type="text" id="buscador" name="buscador" placeholder="Buscar Productos" onkeyup="mostrarSugerencias(this.value)">
                    <div id="sugerencias" class="suggestions"></div>
                    <form action="buscar" method="get">
                        <input type="hidden" id="query" name="query">
                        <input type="image"id="bb" src="Recursos\Imgs\lupa.png" onclick="buscarProducto()">
                    </form>
                    <form action="login.jsp" method="get">
                        <input class="logo-nav" type="image" src="Recursos/Imgs/usuario.png" alt="Botón de inicio de sesión">
                    </form>
                    <% if (sessionUserName != null) { %>
                    <p><%= sessionUserName %></p>
                    
                    <% }else{ %>
                    <p></p>
                    <% }%>
                </div>
                <hr class="espacio-nav">
                <div class="contenedor-menu">
                    <ul>
                        <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="productos.jsp">Productos</a></li>
                        <li><a href="servicios.jsp">Servicios</a></li>
                        <li><a href="about.jsp">Nosotros</a></li>
                        <li><a href="contacto.jsp">Contacto</a></li>
                            <%
                                Boolean esAdmin = (Boolean) session.getAttribute("esAdmin");
                                if (esAdmin != null && esAdmin) { // Verificar si el usuario es un administrador
                            %>
                        <li><a href="admi_productos.jsp">Administrar Productos</a></li>
                            <% }%>
                    </ul>
                </div>
                <br>
            </div>
    </body>
</html>
