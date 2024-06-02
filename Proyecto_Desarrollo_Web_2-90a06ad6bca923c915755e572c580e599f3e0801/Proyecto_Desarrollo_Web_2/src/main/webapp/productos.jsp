<%-- 
    Document   : productos
    Created on : 19 may 2024, 15:00:32
    Author     : jossue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    String nombreUsuario = (session != null) ? (String) session.getAttribute("usuario") : null;
%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
        <link href="Recursos/Imgs/Logo_nav.png" rel="icon">
        <link href="Recursos/Styles/index.css" rel="stylesheet">
        <link href="Recursos/Styles/productos.css" rel="stylesheet">
        <script src="Recursos/Scripts/productos.js"></script>
        <script src="Recursos/Scripts/index.js"></script>    
    </head>

    <body>

        <div>
            <header class="header">
                <p>¡Bienvenidos a Nat's Veggies! La puerta de entrada a la excelencia en productos y servicio</p>
            </header>

            <div class="nav">
                <div class="contenedor-nav" id="nav2">
                    <img src="Recursos/Imgs/Logo_nav.png" class="logo-nav" name="logo-nav">
                    <p class="text-nav">Nat's Veggies</p>
                    <input type="text" id="buscador" name="buscador" placeholder="Buscar Productos">
                    <input type="image"id="bb" src="Recursos\Imgs\lupa.png">
                    <form action="login.jsp" method="get">
                        <input class="logo-nav" type="image" src="Recursos/Imgs/usuario.png" alt="Botón de inicio de sesión">
                    </form>
                    <p><%= (nombreUsuario != null) ? nombreUsuario : ""%></p>
                    <% if (nombreUsuario != null) { %>

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
                    
            <div class="producto-container">
                
                <div class="producto">
                    <div class="producto-info">
                        <img src="Recursos/Imgs/Productos/Chile_jalapenio.jpg" alt="Chile Jalapeño" onclick="mostrarInfo(this)">
                        
                        <p class="producto-nombre">Chile Jalapeño</p>
                        
                    </div>
                    <div class="info-producto">
                        <h3>Chile Jalapeño</h3>
                        <p>Variedad:</p>
                        <p>Descripción del Producto 1</p>
                        
                        <p><a href="Recursos/jspSProductos/Chile-Jalapeño.jsp" class="referencia-producto">Ver más</a></p>
                        <button onclick="cerrarInfo()">Cerrar</button>
                    </div>
                </div>
                <div class="producto">
                    <div class="producto-info">
                        <img src="Recursos/Imgs/Productos/Melon_Palmira.jpg" alt="Melon Palmira" onclick="mostrarInfo(this)">
                        <p class="producto-nombre">Melon Palmira</p>
                    </div>
                    <div class="info-producto">
                        <h3>Melon Palmira</h3>
                        <p>Variedad:</p>
                        <p>Descripción del Producto 1</p>
                        <p><a href="Recursos/jspSProductos/melon-palmira.jsp" class="referencia-producto">Ver más</a></p>
                        <button onclick="cerrarInfo()">Cerrar</button>
                    </div>
                </div>
                <div class="producto">
                    <div class="producto-info">
                        <img src="Recursos/Imgs/Productos/Fresa.jpg" alt="Fresa" onclick="mostrarInfo(this)">
                        <p class="producto-nombre">Fresa</p>
                    </div>
                    <div class="info-producto">
                        <h3>Fresa</h3>
                        <p>Variedad:</p>
                        <p>Descripción del Producto 1</p>
                        <p><a href="Recursos/jspSProductos/Fresa.jsp" class="referencia-producto">Ver más</a></p>
                        <button onclick="cerrarInfo()">Cerrar</button>
                    </div>
                </div>
                <div class="producto">
                    <div class="producto-info">
                        <img src="Recursos/Imgs/Productos/Chile_Habanero.jpg" alt="Chile Habanero" onclick="mostrarInfo(this)">
                        <p class="producto-nombre">Chile Habanero</p>
                    </div>
                    <div class="info-producto">
                        <h3>Chile Habanero</h3>
                        <p>Variedad:</p>
                        <p>Descripción del Producto 1</p>
                        <p><a href="Recursos/jspSProductos/Chile-habanero.jsp" class="referencia-producto">Ver más</a></p>
                        <button onclick="cerrarInfo()">Cerrar</button>
                    </div>
                </div>
                <div class="producto">
                    <div class="producto-info">
                        <img src="Recursos/Imgs/Productos/Chile_morron.jpg" alt="Chile Morron" onclick="mostrarInfo(this)">
                        <p class="producto-nombre">Chile Morron</p>
                    </div>
                    <div class="info-producto">
                        <h3>Chile Morron</h3>
                        <p>Variedad:</p>
                        <p>Descripción del Producto 1</p>
                        <p><a href="Recursos/jspSProductos/Chile-morron.jsp" class="referencia-producto">Ver más</a></p>
                        <button onclick="cerrarInfo()">Cerrar</button>
                    </div>
                </div>
                <div class="producto">
                    <div class="producto-info">
                        <img src="Recursos/Imgs/Productos/Chile_wero.jpg" alt="Chile Güero" onclick="mostrarInfo(this)">
                        <p class="producto-nombre">Chile Güero</p>
                    </div>
                    <div class="info-producto">
                        <h3>Chile Güero</h3>
                        <p>Variedad:</p>
                        <p>Descripción del Producto 1</p>
                        <p><a href="Recursos/jspSProductos/Chile-wero.jsp" class="referencia-producto">Ver más</a></p>
                        <button onclick="cerrarInfo()">Cerrar</button>
                    </div>
                </div>
                <div class="producto">
                    <div class="producto-info">
                        <img src="Recursos/Imgs/Productos/Ejote.jpg" alt="Ejote" onclick="mostrarInfo(this)">
                        <p class="producto-nombre">Ejote</p>
                    </div>
                    <div class="info-producto">
                        <h3>Ejote</h3>
                        <p>Variedad:</p>
                        <p>Descripción del Producto 1</p>
                        <p><a href="Recursos/jspSProductos/Ejote.jsp" class="referencia-producto">Ver más</a></p>
                        <button onclick="cerrarInfo()">Cerrar</button>
                    </div>
                </div>
                <div class="producto">
                    <div class="producto-info">
                        <img src="Recursos/Imgs/Productos/Pepino.jpg" alt="Pepino" onclick="mostrarInfo(this)">
                        <p class="producto-nombre">Pepino</p>
                    </div>
                    <div class="info-producto">
                        <h3>Pepino</h3>
                        <p>Variedad:</p>
                        <p>Descripción del Producto 1</p>
                        <p><a href="Recursos/jspSProductos/Pepino.jsp" class="referencia-producto">Ver más</a></p>
                        <button onclick="cerrarInfo()">Cerrar</button>
                    </div>
                </div>
                <div class="producto">
                    <div class="producto-info">
                        <img src="Recursos/Imgs/Productos/Menta.jpg" alt="Menta" onclick="mostrarInfo(this)">
                        <p class="producto-nombre">Pepino</p>
                    </div>
                    <div class="info-producto">
                        <h3>Menta</h3>
                        <p>Variedad:</p>
                        <p>Descripción del Producto 1</p>
                        <p><a href="Recursos/jspSProductos/Menta.jsp" class="referencia-producto">Ver más</a></p>
                        <button onclick="cerrarInfo()">Cerrar</button>
                    </div>
                </div>
            </div>
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
                    </div>
                </div>
                <div class="footer-bottom">
                    <p>© copyright 2024 Nat's Veggies. Todos los derechos reservados</p>
                </div>
            </footer>

    </body>

</html>