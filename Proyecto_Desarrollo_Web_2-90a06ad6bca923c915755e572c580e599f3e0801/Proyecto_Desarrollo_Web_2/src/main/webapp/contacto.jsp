<%-- 
    Document   : contacto
    Created on : 19 may 2024, 14:12:55
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
        <title>Contacto</title>
        <link href="Recursos/Imgs/Logo_nav.png" rel="icon">
        <link href="Recursos/Styles/index.css" rel="stylesheet">
        <link href="Recursos/Styles/contacto.css" rel="stylesheet">
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


                <section class="contact-section">
                    <div class="background-container">
                        <img src="Recursos/Imgs/Campo/Imagen_principal.jpg" alt="Imagen de fondo">
                    </div>
                    <div class="content">
                        <h1>CONTÁCTANOS</h1>
                        <p>¡Estamos aquí para ayudarte!</p>
                    </div>
                </section>

                <div class="grid-container">
                    <div class="grid-item">
                        <div class="titulo-form">
                            <h2>Información de contacto</h2>
                            <p>¡Contáctanos para cualquier pregunta o inquietud!</p>
                        </div>
                        <div class="form-container">
                            <form action="#" method="POST">
                                <p>Nombre</p>
                                <input type="text" name="nombre" placeholder="Nombre" required>
                                <p>Email</p>
                                <input type="email" name="correo" placeholder="Correo electrónico" required>
                                <p>Asunto</p>
                                <input type="text" name="asunto" placeholder="Asunto" required>
                                <p>Mensaje</p>
                                <textarea name="mensaje" placeholder="Mensaje" rows="6" required></textarea>
                                <input type="submit" value="Enviar">
                            </form>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="image-container">

                        </div>
                        <div class="text-box">
                            <p>Texto sobre fondo de color</p>
                        </div>
                    </div>
                </div>

                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3394.2062343699017!2d-116.5735680239465!3d31.71026093773496!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80d884fce9f1bb33%3A0x57513d0beaa69b0d!2sJuan%20Aldama%20180%2C%20El%20Maneadero%2C%2022790%20Rodolfo%20S%C3%A1nchez%20Taboada%2C%20B.C.!5e0!3m2!1ses!2smx!4v1714256835553!5m2!1ses!2smx" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>




                <footer class="footer">
                    <div class="container">
                        <div class="footer-column">
                            <h4>Opciones</h4>
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