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
        <title>Nat's Veggies</title>
        <link href="Recursos/Imgs/Logo_nav.png" rel="icon">
        <link href="Recursos/Styles/index.css" rel="stylesheet">
        <script src="Recursos/Scripts/index.js"></script>
    </head>

    <body>
        <div>
            <header class="header">
                <p>¡Bienvenidos a Nat's Veggies! La puerta de entrada a la excelencia en productos y servicio</p>
            </header>

            <div class="nav">
                <div class="contenedor-nav">
                    <img src="Recursos/Imgs/Logo_nav.png" class="logo-nav" name="logo-nav">
                    <p>Nat's Veggies</p>
                    <input type="text" id="buscador" name="buscador" placeholder="Buscar Productos">
                    <input type="image"id="bb" src="Recursos\Imgs\lupa.png">
                    <p><a href="login.jsp">Sesión</a></p>
                    <p><%= (nombreUsuario != null) ? nombreUsuario : ""%></p>
                    <% if (nombreUsuario != null) { %>
                    <p><a href="logout">Cerrar Sesión</a></p>
                    <% }%>
                </div>
                <hr class="espacio-nav">
                <div class="contenedor-menu">
                    <ul>
                        <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="productos.jsp">Productos</a></li>
                        <li><a href="about.jsp">Nosotros</a></li>
                        <li><a href="contacto.jsp">Contacto</a></li>
                    </ul>
                </div>
                <br>
                </nav>

                <main class="main">
                    <div class="contenedor-slider">
                        <div class="slider">
                            <img src="Recursos/Imgs/Index/imagen1.jpg" alt="Imagen 1">
                            <img src="Recursos/Imgs/Index/imagen2.jpg" alt="Imagen 2">
                            <img src="Recursos/Imgs/Index/imagen3.jpg" alt="Imagen 3">
                        </div>
                    </div>
                    <br>
                    <h1>Productos Nuevos</h1>
                    <div class="Productos_nuevos">
                        <table class="Tabla">
                            <tbody>
                                <tr>
                                    <td>
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\Pepino.jpg">
                                        <hr>
                                        <p>Pepino Fresco</p>
                                        <input class="vermas" type="button" value="Ver más">
                                    </td>
                                    <td>
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\Pepino.jpg">
                                        <hr>
                                        <p>Pepino Fresco</p>
                                        <input class="vermas" type="button" value="Ver más">
                                    </td>
                                    <td>
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\Pepino.jpg">
                                        <hr>
                                        <p>Pepino Fresco</p>
                                        <input class="vermas" type="button" value="Ver más">
                                    </td>
                                    <td>
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\Pepino.jpg">
                                        <hr>
                                        <p>Pepino Fresco</p>
                                        <input class="vermas" type="button" value="Ver más">
                                    </td>
                                    <td>
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\Pepino.jpg">
                                        <hr>
                                        <p>Pepino Fresco</p>
                                        <input class="vermas" type="button" value="Ver más">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\Pepino.jpg">
                                        <hr>
                                        <p>Pepino Fresco</p>
                                        <input class="vermas" type="button" value="Ver más">
                                    </td>
                                    <td>
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\Pepino.jpg">
                                        <hr>
                                        <p>Pepino Fresco</p>
                                        <input class="vermas" type="button" value="Ver más">
                                    </td>
                                    <td>
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\Pepino.jpg">
                                        <hr>
                                        <p>Pepino Fresco</p>
                                        <input class="vermas" type="button" value="Ver más">
                                    </td>
                                    <td>
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\Pepino.jpg">
                                        <hr>
                                        <p>Pepino Fresco</p>
                                        <input class="vermas" type="button" value="Ver más">
                                    </td>
                                    <td>
                                        <img class="img_tabla" src="Recursos\Imgs\Productos\Pepino.jpg">
                                        <hr>
                                        <p>Pepino Fresco</p>
                                        <input class="vermas" type="button" value="Ver más">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="Directorio_vir">
                        <img src="Recursos/Imgs/carpeta.png">
                        <a href="https://www.mexbest.com/mexbestVirtual" target="_blank">
                            <h2>Conoce Nuestro Directorio Agroexportadores Mexicanos!!!</h2>
                        </a>  
                    </div>
                    <h1>Más Vendidos</h1>
                    <div class="Productos_nuevos">
                        <table class="Tabla">
                            <tbody>
                                <tr>
                                    <td>Columna 1</td>
                                    <td>Columna 2</td>
                                    <td>Columna 3</td>
                                    <td>Columna 4</td>
                                    <td>Columna 5</td>
                                </tr>
                                <tr>
                                    <td>Columna 6</td>
                                    <td>Columna 7</td>
                                    <td>Columna 8</td>
                                    <td>Columna 9</td>
                                    <td>Columna 10</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div>
                        <h1>Nuestros clientes</h1>

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