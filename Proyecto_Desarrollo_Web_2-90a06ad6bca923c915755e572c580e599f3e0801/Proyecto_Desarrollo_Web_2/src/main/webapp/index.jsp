<%-- 
    Document   : index
    Created on : 19 may 2024, 13:54:19
    Author     : jossu
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
        <title>Nat's Veggiies</title>
        <link href="Recursos/Imgs/Logo_nav.png" rel="icon">
        <link href="Recursos/Styles/index.css" rel="stylesheet">
        <link href="Recursos/Styles/productos.css" rel="stylesheet">
        <script src="Recursos/Scripts/index.js"></script>    
    </head>

    <body>

        <div>
            <header class="header">
                <p>¡Bienvenidos a Nat's Veggies! La puerta de entrada a la excelencia en productos y servicio XD</p>
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
                        <li><a href="recetas.jsp">Recetas</a></li>
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
                            <img src="Recursos/Imgs/Index/Carrusel1.jpg" alt="Imagen 1">
                        </div>
                        <div class="slide">
                            <img src="Recursos/Imgs/Index/Carrusel2.jpg" alt="Imagen 2">
                        </div>
                        <div class="slide">
                            <img src="Recursos/Imgs/Index/Carrusel3.png" alt="Imagen 3">
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
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\uva_morada.jpg">
                                    <hr>
                                    <p><a href="Recursos/jspSProductos/Chile-Jalapeño.jsp" class="referencia-producto">Uva Morada</a></p>
                                    <p>$25 MXN/pieza</p>
                                    <p>10 piezas disponibles</p>
                                    <input class="vermas" type="button" value="Ver más">
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\repollo.jpg">
                                    <hr>
                                    <p><a href="Recursos/jspSProductos/Chile-Jalapeño.jsp" class="referencia-producto">Repollo</a></p>
                                    <p>$25 MXN/pieza</p>
                                    <p>10 piezas disponibles</p>
                                    <input class="vermas" type="button" value="Ver más">
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\pepino_1.jpg">
                                    <hr>
                                    <p><a href="Recursos/jspSProductos/Chile-Jalapeño.jsp" class="referencia-producto">Pepino Fresco</a></p>
                                    <p>$25 MXN/pieza</p>
                                    <p>10 piezas disponibles</p>
                                    <input class="vermas" type="button" value="Ver más">
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\granada.jpg">
                                    <hr>
                                    <p><a href="Recursos/jspSProductos/Chile-Jalapeño.jsp" class="referencia-producto">Granada</a></p>
                                    <p>$25 MXN/pieza</p>
                                    <p>10 piezas disponibles</p>
                                    <input class="vermas" type="button" value="Ver más">
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\berenjena.jpg">
                                    <hr>
                                    <p><a href="Recursos/jspSProductos/Chile-Jalapeño.jsp" class="referencia-producto">Berenjena</a></p>
                                    <p>$25 MXN/pieza</p>
                                    <p>10 piezas disponibles</p>
                                    <input class="vermas" type="button" value="Ver más">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\cebolla_morada.jpg">
                                    <hr>
                                    <p><a href="Recursos/jspSProductos/Chile-Jalapeño.jsp" class="referencia-producto">Cebolla Morada</a></p>
                                    <p>$25 MXN/pieza</p>
                                    <p>10 piezas disponibles</p>
                                    <input class="vermas" type="button" value="Ver más">
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\frambuesa.jpg">
                                    <hr>
                                    <p><a href="Recursos/jspSProductos/Chile-Jalapeño.jsp" class="referencia-producto">Frambuesa</a></p>
                                    <p>$25 MXN/pieza</p>
                                    <p>10 piezas disponibles</p>
                                    <input class="vermas" type="button" value="Ver más">
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\coliflor.jpg">
                                    <hr>
                                    <p><a href="Recursos/jspSProductos/Chile-Jalapeño.jsp" class="referencia-producto">Coliflor</a></p>
                                    <p>$25 MXN/pieza</p>
                                    <p>10 piezas disponibles</p>
                                    <input class="vermas" type="button" value="Ver más">
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\champion.jpg">
                                    <hr>
                                    <p><a href="Recursos/jspSProductos/Chile-Jalapeño.jsp" class="referencia-producto">Champiñon</a></p>
                                    <p>$25 MXN/pieza</p>
                                    <p>10 piezas disponibles</p>
                                    <input class="vermas" type="button" value="Ver más">
                                </td>
                                <td>
                                    <img class="img_tabla" src="Recursos\Imgs\Productos\toronja.jpg">
                                    <hr>
                                    <p><a href="Recursos/jspSProductos/Chile-Jalapeño.jsp" class="referencia-producto">Toronja</a></p>
                                    <p>$25 MXN/pieza</p>
                                    <p>10 piezas disponibles</p>
                                    <input class="vermas" type="button" value="Ver más">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                
                
                <div class="Directorio_vir">

                    <a href="https://www.mexbest.com/mexbestVirtual" target="_blank">
                        <h2>Conoce Nuestro Directorio Agroexportadores Mexicanos!!!</h2>
                    </a>  
                </div>
                <h1>Más Vendidos</h1>
                <div class="Productos_nuevos">
                    <table class="Tabla2">
                        <tbody>
                            <tr>
                                <td>
                                    <div class="celda_contenido">
                                        <img class="img_tabla2" src="Recursos/Imgs/Productos/uvas.jpg" alt="Uvas">
                                        <div class="info_producto">
                                            <p class="nombre_producto">Uvas Frescas</p>
                                            <p class="clave_producto">Clave: 001</p>
                                            <p class="descripcion_producto">Deliciosas uvas frescas y jugosas.</p>
                                            <input class="vermas2" type="button" value="Ver más">
                                        </div>
                                    </div>
                                </td>

                                <td>
                                    <div class="celda_contenido">
                                        <img class="img_tabla2" src="Recursos/Imgs/Productos/pepino.jpg" alt="Pepino">
                                        <div class="info_producto">
                                            <p class="nombre_producto">Pepino Fresco</p>
                                            <p class="clave_producto">Clave: 002</p>
                                            <p class="descripcion_producto">Pepino fresco y crujiente.</p>
                                            <input class="vermas2" type="button" value="Ver más">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="celda_contenido">
                                        <img class="img_tabla2" src="Recursos/Imgs/Productos/repollo.jpg" alt="Repollo">
                                        <div class="info_producto">
                                            <p class="nombre_producto">Repollo Fresco</p>
                                            <p class="clave_producto">Clave: 003</p>
                                            <p class="descripcion_producto">Repollo verde y saludable.</p>
                                            <input class="vermas2" type="button" value="Ver más">
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="celda_contenido">
                                        <img class="img_tabla2" src="Recursos/Imgs/Productos/granada.jpg" alt="Granada">
                                        <div class="info_producto">
                                            <p class="nombre_producto">Granada Fresca</p>
                                            <p class="clave_producto">Clave: 004</p>
                                            <p class="descripcion_producto">Granadas frescas y dulces.</p>
                                            <input class="vermas2" type="button" value="Ver más">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="celda_contenido">
                                        <img class="img_tabla2" src="Recursos/Imgs/Productos/berenjena.jpg" alt="Berenjena">
                                        <div class="info_producto">
                                            <p class="nombre_producto">Berenjena Fresca</p>
                                            <p class="clave_producto">Clave: 005</p>
                                            <p class="descripcion_producto">Berenjenas frescas y saludables.</p>
                                            <input class="vermas2" type="button" value="Ver más">
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="celda_contenido">
                                        <img class="img_tabla2" src="Recursos/Imgs/Productos/manzana.jpg" alt="Manzana">
                                        <div class="info_producto">
                                            <p class="nombre_producto">Manzana Fresca</p>
                                            <p class="clave_producto">Clave: 006</p>
                                            <p class="descripcion_producto">Manzanas frescas y crujientes.</p>
                                            <input class="vermas2" type="button" value="Ver más">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div>
                    <h1>Recetas</h1>
                    <div class="container-card">
                        <div class="card">
                            <img src="imagen1.jpg" alt="Imagen 1" class="card-img">
                            <div class="card-content">
                                <h3 class="card-title">Título de la Tarjeta 1</h3>
                                <p class="card-text">Contenido de la tarjeta 1</p>
                                <a href="#" class="btn">Botón 1</a>
                            </div>
                        </div>
                        <div class="card">
                            <img src="imagen2.jpg" alt="Imagen 2" class="card-img">
                            <div class="card-content">
                                <h3 class="card-title">Título de la Tarjeta 2</h3>
                                <p class="card-text">Contenido de la tarjeta 2</p>
                                <a href="#" class="btn">Botón 2</a>
                            </div>
                        </div>
                        <div class="card">
                            <img src="Recursos/Imgs/Index/Espagueti.jpg" alt="Imagen 3" class="card-img">
                            <div class="card-content">
                                <h3 class="card-title">Espagueti De Calabacín</h3>
                                <p class="card-text">Esta deliciosa pasta sin gluten y alta en proteina hara que se convierta en tu platillo favorito</p>
                                <a href="#" class="btn">Leer Más</a>
                            </div>
                        </div>
                    </div>
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