<%-- 
    Document   : producto_no_encontrado
    Created on : 6 jun 2024, 08:36:01
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
<html lang="es">
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
                <form action="buscar" method="get" onsubmit="return buscarProducto()">
                    <input type="hidden" id="query" name="query">
                    <input type="image"id="bb" src="Recursos\Imgs\lupa.png" onclick="buscarProducto()">
                </form>
                <form action="login.jsp" method="get">
                    <input class="logo-nav" type="image" src="Recursos/Imgs/usuario.png" alt="Botón de inicio de sesión">
                </form>
                <% if (sessionUserName != null) {%>
                <p><%= sessionUserName%></p>

                <% } else { %>
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
        <h1>Producto No encontrado</h1>

        <footer class="footer">
            <div class="container">
                <div class="footer-column">
                    <h4>Menú</h4>
                    <ul>
                        <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="productos.jsp">Productos</a></li>
                        <li><a href="about.jsp">Nosotros</a></li>
                        <li><a href="contacto.jsp">Contacto</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h4>Dirección</h4>
                    <p onclick="window.open('https://maps.app.goo.gl/QsALRR2noS4z5Y3M8')">Col. Maneadero Calle Juan Aldama No. 180 C.P. 22790 Ciudad Ensenada Del. Edo. Baja California</p>
                    <h4>Teléfono</h4>
                    <p onclick="window.location.href = 'tel:123456789'">+52 (646)-154-01-18</p>
                </div>
                <div class="footer-column">
                    <h4>Certificaciones</h4>
                    <img class="certificacion" src="Recursos/Imgs/Index/primusgfs.png" alt="Certificación 1">
                    <img class="certificacion" src="Recursos/Imgs/Index/Senasica.png" alt="Certificación 2">
                    <!-- Agrega más certificaciones según sea necesario -->
                </div>
            </div>
            <div class="footer-bottom">
                <p>© copyright 2024 Nat's Veggies. Todos los derechos reservados</p>
            </div>
        </footer>
    </body>
</html>

