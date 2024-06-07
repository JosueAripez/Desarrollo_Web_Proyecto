<%-- 
    Document   : about
    Created on : 19 may 2024, 14:12:39
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
        <title>Nosotros</title>
        <link href="Recursos/Imgs/Logo_nav.png" rel="icon">
        <link href="Recursos/Styles/index.css" rel="stylesheet">
        <link href="Recursos/Styles/about.css" rel="stylesheet">
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
                    <div class="fondo">
                        <h1 class="centro">¿Quiénes<br>Somos?</h1>
                        <img src="Recursos/Imgs/About/quienessomos2.jpeg" class="imagen">

                        <p class="texto1">
                            Nat's Veggies es un productor, procesador y empacador de hortalizas,
                            cuyo principal mercado es Estados Unidos.<br><br>
                            Nat's Veggies fue fundada en el año 2010, por Jose Cardenas, Catalina Diaz y
                            su hija Natalia Garnica.
                        </p>
                    </div>

                    <img src="Recursos/Imgs/About/pepino.png" class="pepino">
                    <div class="contenedor">
                        <h1 class="encabezado">Misión</h1>
                        <p class="texto2">
                            Comercializar productos de alta calidad que cumplan con las necesidades<br>
                            de los consumidores, siempre buscando el liderazgo, realizando nuestras<br>
                            operaciones con plena seriedad, honestidad y seguridad.
                        </p>
                    </div>
                    <img src="Recursos/Imgs/About/fresas.png" class="fresas">
                    <div class="contenedor2">
                        <h1 class="encabezado2">Visión</h1>
                        <p class="texto3">
                            Nuestros objetivos de empresa es ser una organización modelo que ofrezca<br>
                            productos hortícolas y servicios de la más alta calidad para satisfaces<br>
                            las necesidades de consumidores.
                        </p>
                    </div>
                    <img src="Recursos/Imgs/About/chile.png" class="chile">
                    <div class="contenedor3">
                        <h1 class="encabezado3">Valores</h1>
                        <p class="texto4">
                            <b><u>Honestidad:</u></b> Promovemos la verdad como herramienta para generar confianza y credibilidad.
                            <br>
                            <br>
                            <b><u>Calidad:</u></b> Seleccionamos, buscamos, importamos y comercializamos siempre el mejor producto
                            existente en el mundo para el campo mexicano. Así mismo revisamos nuestros cultivos con
                            profesionales altamente capacitados y que cuentan con herramientas tecnológicas para cumplir estos
                            objetivos.
                            <br>
                            <br>
                            <b><u>Transparencia:</u></b> Asumimos la responsabilidad y consecuencias de nuestros actos sin engaños;
                            generando confianza y seguridad con nuestro equipo de trabajo, clientes y proveedores.
                        </p>
                    </div>

                    <div class="fondo">
                        <h1 class="centro2">Lo que hacemos</h1>
                        <img src="Recursos/Imgs/About/quienessomos.jpeg" class="imagen2">

                        <p class="texto5">
                            Producimos o buscamos los fertilizantes con la mayor concentración
                            <br>de nutrientes y pureza para cumplir con los requerimientos de cada
                            <br>tipo de cultivo.
                            <br>
                            <br>
                            Nuestro equipo está integrado por especialistas en nutrición,  por lo
                            <br>que sólo recomiendan fertilizantes adecuados a las necesidades de
                            <br>cada agricultor.
                            <br>
                            <br>
                            Entregamos la herramienta de control en la nutrición a nuestros
                            <br>clientes de cultivo tecnificado. Con ella, pueden  medir la cantidad
                            <br>de fertilizante de acuerdo a las características del cultivo y suelo.
                        </p>
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
                        </div>
                    </div>
                    <div class="footer-bottom">
                        <p>© copyright 2024 Nat's Veggies. Todos los derechos reservados</p>
                    </div>
                </footer>
            </div>

    </body>

</html>