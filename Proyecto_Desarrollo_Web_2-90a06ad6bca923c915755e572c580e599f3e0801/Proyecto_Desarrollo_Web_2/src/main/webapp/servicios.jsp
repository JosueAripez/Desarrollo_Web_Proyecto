<%-- 
    Document   : servicios
    Created on : 22 may 2024, 17:16:20
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
        <title>Servicios</title>
        <link href="Recursos/Imgs/Logo_nav.png" rel="icon">
        <link href="Recursos/Styles/index.css" rel="stylesheet">
        <link href="Recursos/Styles/servicios.css" rel="stylesheet">
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

                    <div class="div1">
                        <h1>Nat's Veggies pone los mas altos cuidados en sus productos</h1>
                        <hr>
                        <p>Con los productos de más alta calidad y los mayores estandares de sanidad y cuidado
                        de cultivos en el mercado, Nat's Veggies maneja su proceso de producción procurando la
                        excelencia incluso en los minimos detalles, centrandose en destacar sobre el resto de 
                        productores y demostrando su gran potencial agricola.</p>
                    </div>       
            
            
            <main class="mainservicios">
                <div class="tarjeta1">
                    <div class="cara enfrente">
                        <img src="Recursos/Imgs/servicios/tiempo.jpg" alt="">
                        <h2>Manejo del tiempo</h2>
                    </div>
                    <div class="cara atras">
                        <p>Con una gran planificación, Nat's Veggies se anticipa a las tendencias del mercado, procurando
                        ofrecer al mercado nacional e internacional los productos de temporada de mayor calidad y de manera
                        oportuna, evitando retrasos en la producción.</p>
                    </div>
                </div>
                
                <div class="tarjeta1">
                    <div class="cara enfrente">
                        <img src="Recursos/Imgs/servicios/cultivos.jpeg" alt="">
                        <h2>Monitorea tus cultivos</h2>
                    </div>
                    <div class="cara atras">
                        <p>Con ayuda de uno de los mejores ingenieros de Baja California, Nat's Veggies lleva un control
                        especial de sus cultivos, tanto en control de temperatura, nutrición, producción de la planta y 
                        estandares de calidad.</p>
                    </div>
                </div>
                
                <div class="tarjeta1">
                    <div class="cara enfrente">
                        <img src="Recursos/Imgs/servicios/agenda.jpg" alt="">
                        <h2>Planificación</h2>
                    </div>
                    <div class="cara atras">
                        <p>Mediante una serie de rutinas muy bien definidas y buena coordinación entre la administración del
                        campo y logistica, se logra reducir contratiempos, logrando cumplir con los pedidos en tiempo y forma</p>
                    </div>
                </div>
                
                <div class="tarjeta1">
                    <div class="cara enfrente">
                        <img src="Recursos/Imgs/servicios/produccion.jpeg" alt="">
                        <h2>Maximiza la producción</h2>
                    </div>
                    <div class="cara atras">
                        <p>Al ahorrar tiempo acudiendo puntualmente llevando una buena gestión de los cultivos, planificación y
                        mediante el uso de los mejores materiales tanto de nutrición como de prevención de plagas para cultivos, 
                        se logra maximizar la producción más que cualquier otra productora agricola del mercado.</p>
                    </div>
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