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
        
        <link href="Recursos/Styles/productos.css" rel="stylesheet">
        <link href="Recursos/Styles/index.css" rel="stylesheet">
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
            <div class="main">        
                <div class="producto-container">

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
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\ejote_1.jpg">
                                        <hr>
                                        <p>Ejote French
                                        <p>Variedades:<br>
                                            Serengeti<br>
                                            Sapporo<br><br>
                                            
                                        </p>
                                        <hr>
                                        <p><a class="vermas" href="Recursos/jspSProductos/Ejote-french.jsp" class="referencia-producto">Ver más</a></p>
                                    </td>
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
                                </tr>
                                <tr>
                                    <td>
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\roj.jpg">
                                        <hr>
                                        <p>Pimiento Morron Rojo</p>
                                        <p>Variedades:<br>
                                            Top 141<br>
                                            Avante<br><br>
                                        </p>
                                        <hr>
                                        <p><a class="vermas" href="Recursos/jspSProductos/Morron-rojo.jsp" class="referencia-producto">Ver más</a></p>
                                    </td>
                                    <td>
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\ama.jpeg">
                                        <hr>
                                        <p>Pimiento Morron Amarillo</p>
                                        <p>Variedades:<br>
                                            Sven<br>
                                            Cozumel<br><br>
                                        </p>
                                        <hr>
                                        <p><a class="vermas" href="Recursos/jspSProductos/Morron-amarillo.jsp" class="referencia-producto">Ver más</a></p>
                                    </td>
                                    <td>
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\anaranjado.jpeg">
                                        <hr>
                                        <p>Pimiento Morron Naranja</p>
                                        <p>Variedades:<br>
                                            Volcano<br>
                                            Arancia<br><br>
                                        </p>
                                        <hr>
                                        <p><a class="vermas" href="Recursos/jspSProductos/Morron-naranja.jsp" class="referencia-producto">Ver más</a></p>
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
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\bebe.jpg">
                                        <hr>
                                        <p>Zanahoria bebe</p>
                                        <p>Variedad:<br>
                                            Imperial<br><br><br>

                                        </p>
                                        <hr>
                                        <p><a class="vermas" href="Recursos/jspSProductos/Zanahoria-bebe.jsp" class="referencia-producto">Ver más</a></p>
                                    </td>
                                    
                                </tr>
                                <tr>
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
                                    
                                </tr>
                                <tr>
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
                                    <td>
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\shishito-1.jpg">
                                        <hr>
                                        <p>Chile Shishito</p>
                                        <p>Variedad:<br>
                                            Shishito F1<br><br><br>
                                        </p>
                                        <hr>
                                        <p><a class="vermas" href="Recursos/jspSProductos/Chile-shishito.jsp" class="referencia-producto">Ver más</a></p>
                                    </td>
                                    <td>
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\menta_1.jpg">
                                        <hr>
                                        <p>Menta</p>
                                        <p>Variedad:<br>
                                            Hierbabuena<br><br><br>
                                        
                                        <hr>
                                        <p><a class="vermas" href="Recursos/jspSProductos/Menta.jsp" class="referencia-producto">Ver más</a></p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
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
            </div>
    </body>

</html>