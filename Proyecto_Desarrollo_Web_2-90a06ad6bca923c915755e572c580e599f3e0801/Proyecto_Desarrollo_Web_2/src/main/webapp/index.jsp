<%-- 
    Document   : index
    Created on : 19 may 2024, 13:54:19
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

        <div>
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

            <main class="main">
                <div class="carousel">
                    <div class="slides">
                        <div class="slide">
                            <img src="Recursos/Imgs/Index/principal1.jpg" alt="Imagen 1">
                        </div>
                        <div class="slide">
                            <img src="Recursos/Imgs/Index/principal2.jpg" alt="Imagen 2">
                        </div>
                        <div class="slide">
                            <img src="Recursos/Imgs/Index/principal3.jpg" alt="Imagen 3">
                        </div>
                        <div class="slide">
                            <img src="Recursos/Imgs/Index/principal4.jpg" alt="Imagen 4">
                        </div>
                    </div>
                    <button class="prev" onclick="moveSlide(-1)">&#10094;</button>
                    <button class="next" onclick="moveSlide(1)">&#10095;</button>
                </div>
                <br>
                <h1>Productos Nuevos</h1>
                <div class="Productos_nuevos">
                    <table class="Tabla">
                        <tbody>
                            <tr>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\fresa_1.jpg">
                                    <hr>
                                    <p>Fresa</p>
                                    <p>Variedades:<br>
                                        Fronteras<br>
                                        Sayulita<br><br>
                                    </p>
                                    <hr>
                                    <p><a class="vermas" href="Recursos/jspSProductos/Fresa.jsp" class="referencia-producto">Ver más</a></p>
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\Melon-palmira2.jpg">
                                    <hr>
                                    <p>Melon</p>
                                    <p>Variedad:<br>
                                        Palmira F1<br><br><br>
                                    </p>
                                    <hr>
                                    <p><a class="vermas" href="Recursos/jspSProductos/melon.jsp" class="referencia-producto">Ver más</a></p>
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\verde.jpg">
                                    <hr>
                                    <p>Tomatillo Verde</p>
                                    <p>Variedad:<br>
                                        Siqueiros<br><br><br>

                                    </p>
                                    <hr>
                                    <p><a class="vermas" href="Recursos/jspSProductos/Tomatillo-verde.jsp" class="referencia-producto">Ver más</a></p>
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\ejote_1.jpg">
                                    <hr>
                                    <p>Ejote Blue Lake
                                    <p>Variedades:<br>
                                        Greenback<br>
                                        Valentino<br>
                                        Coyote
                                    </p>
                                    <hr>
                                    <p><a class="vermas" href="Recursos/jspSProductos/Ejote-bluelake.jsp" class="referencia-producto">Ver más</a></p>
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\rojo.png">
                                    <hr>
                                    <p>Chile Habanero Rojo</p>
                                    <p>Variedad:<br>
                                        Maximo<br><br><br>
                                    </p>
                                    <hr>
                                    <p><a class="vermas" href="Recursos/jspSProductos/Habanero-rojo.jsp" class="referencia-producto">Ver más</a></p>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>
                <br>

                <br><!-- comment -->
                <h1>Regresan</h1>
                <div class="Productos_nuevos">
                    <table class="Tabla2">
                        <tbody>
                            <tr>
                                <td>
                                    <div class="celda_contenido">
                                        <img class="img_tabla2" src="Recursos/Imgs/Productos/mango.jpg" alt="Mango">
                                        <div class="info_producto">
                                            <p class="nombre_producto">Mango</p>
                                            <p class="clave_producto">Clave: 001</p>
                                            <p class="descripcion_producto">Deliciosaos mangos.</p>
                                            <input class="vermas2" type="button" value="Ver más">
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="celda_contenido">
                                        <img class="img_tabla2" src="Recursos/Imgs/Productos/pera.jpg" alt="Pera">
                                        <div class="info_producto">
                                            <p class="nombre_producto">Pera</p>
                                            <p class="clave_producto">Clave: 002</p>
                                            <p class="descripcion_producto">Pera fresca.</p>
                                            <input class="vermas2" type="button" value="Ver más">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="celda_contenido">
                                        <img class="img_tabla2" src="Recursos/Imgs/Productos/melon.jpg" alt="Melon">
                                        <div class="info_producto">
                                            <p class="nombre_producto">Melon Fresco</p>
                                            <p class="clave_producto">Clave: 003</p>
                                            <p class="descripcion_producto">Melon saludable.</p>
                                            <input class="vermas2" type="button" value="Ver más">
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="celda_contenido">
                                        <img class="img_tabla2" src="Recursos/Imgs/Productos/ejote_1.jpg" alt="Ejote">
                                        <div class="info_producto">
                                            <p class="nombre_producto">Ejote</p>
                                            <p class="clave_producto">Clave: 004</p>
                                            <p class="descripcion_producto">Ejote.</p>
                                            <input class="vermas2" type="button" value="Ver más">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <br>
                <h1>Datos Curiosos</h1>
                <div class="container-card">
                    <div class="card">
                        <img src="Recursos/Imgs/Index/Produce.jpg" alt="Imagen 1" class="card-img">
                        <div class="card-content">
                            <h3 class="card-title">Produce</h3>
                            <p class="card-text">Segun la necesidad del cliente y la demanda de temporada, Nat's Veggies
                                produce las mejores verduras y frutas del mercado</p>

                        </div>
                    </div>
                    <div class="card">
                        <img src="Recursos/Imgs/Index/empacado.jpg" alt="Imagen 2" class="card-img">
                        <div class="card-content">
                            <h3 class="card-title">Empaca</h3>
                            <p class="card-text">En sus propias instalaciones, se empacan en diferentes presentaciones los productos obtenidos del campo</p>

                        </div>
                    </div>
                    <div class="card">
                        <img src="Recursos/Imgs/Index/transporte.jpg" alt="Imagen 3" class="card-img">
                        <div class="card-content">
                            <h3 class="card-title">Transporta</h3>
                            <p class="card-text">Nat's Veggies es el encargado de transportar su propio producto en mercados locales e internacionales</p>

                        </div>
                    </div>
                </div>
                <br>
                <h1>Por Temporada</h1>
                <div class="Productos_nuevos">
                    <table class="Tabla">
                        <tbody>
                            <tr>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\Chile-jalapenio3.png">
                                    <hr>
                                    <p>Chile Jalapeño
                                    <p>Variedades:<br>
                                        Purépecha<br>
                                        Everman<br><br>

                                    </p>
                                    <hr>
                                    <p><a class="vermas" href="Recursos/jspSProductos/Jalapeño.jsp" class="referencia-producto">Ver más</a></p>
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\serrano.jpg">
                                    <hr>
                                    <p>&emsp;Chile Serrano&emsp;
                                    <p>Variedad:<br>
                                        Cadereyta<br><br><br>
                                    </p>
                                    <hr>
                                    <p><a class="vermas" href="Recursos/jspSProductos/Serrano.jsp" class="referencia-producto">Ver más</a></p>
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\verde.jpg">
                                    <hr>
                                    <p>Tomatillo Verde</p>
                                    <p>Variedad:<br>
                                        Siqueiros<br><br><br>

                                    </p>
                                    <hr>
                                    <p><a class="vermas" href="Recursos/jspSProductos/Tomatillo-verde.jsp" class="referencia-producto">Ver más</a></p>
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\chile_wuero.jpg">
                                    <hr>
                                    <p>Chile Güero</p>
                                    <p>Variedad:<br>
                                        Caribe Real<br><br><br>
                                    </p>
                                    <hr>
                                    <p><a class="vermas" href="Recursos/jspSProductos/Chile-wero.jsp" class="referencia-producto">Ver más</a></p>
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\Chile_Habanero3.jpg">
                                    <hr>
                                    <p>Chile Habanero Naranja</p>
                                    <p>Variedad:<br>
                                        Megalodon<br><br><br>
                                    </p>
                                    <hr>
                                    <p><a class="vermas" href="Recursos/jspSProductos/Habanero-naranja.jsp" class="referencia-producto">Ver más</a></p>
                                </td>

                            </tr>
                        </tbody>
                    </table>
                </div>
                <br><!-- comment -->

                <br>
                <h1>Los Favoritos</h1>
                <div class="Productos_nuevos">
                    <table class="Tabla">
                        <tbody>
                            <tr>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\About\pepino.png">
                                    <hr>
                                    <p>Pepino</p>
                                    <p>Variedades:<br>
                                        Uranio F1<br>
                                        Modan<br><br>
                                    </p>
                                    <hr>
                                    <p><a class="vermas" href="Recursos/jspSProductos/Pepino.jsp" class="referencia-producto">Ver más</a></p>
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\ejote_1.jpg">
                                    <hr>
                                    <p>Ejote Blue Lake
                                    <p>Variedades:<br>
                                        Greenback<br>
                                        Valentino<br>
                                        Coyote
                                    </p>
                                    <hr>
                                    <p><a class="vermas" href="Recursos/jspSProductos/Ejote-bluelake.jsp" class="referencia-producto">Ver más</a></p>
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\amarilla.jpg">
                                    <hr>
                                    <p>Zanahoria Amarilla</p>
                                    <p>Variedad:<br>
                                        Yellowstone<br><br><br>
                                    </p>
                                    <hr>
                                    <p><a class="vermas" href="Recursos/jspSProductos/Zanahoria-amarilla.jsp" class="referencia-producto">Ver más</a></p>
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\blanca4.jpg">
                                    <hr>
                                    <p>Zanahoria Blanca</p>
                                    <p>Variedad:<br>
                                        White Satin<br><br><br>
                                    </p>
                                    <hr>
                                    <p><a class="vermas" href="Recursos/jspSProductos/Zanahoria-blanca.jsp" class="referencia-producto">Ver más</a></p>
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\morada3.jpg">
                                    <hr>
                                    <p>Zanahoria Morada</p>
                                    <p>Variedad:<br>
                                        Deep Purple<br><br><br>
                                    </p>
                                    <hr>
                                    <p><a class="vermas" href="Recursos/jspSProductos/Zanahoria-morada.jsp" class="referencia-producto">Ver más</a></p>
                                </td>


                            </tr>

                        </tbody>
                    </table>
                </div>
                <br>

                <br>

                <br>
                </div>
            </main>

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

        </div>
    </body>

</html>