<%-- 
    Document   : servicios
    Created on : 22 may 2024, 17:16:20
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

                    <div class="div1">
                        <h1>Con GreenScan® podrás evaluar el desarrollo espacial de tus cultivos</h1>
                        <hr>
                        <p>Con el uso de imágenes satelitales podrás conocer la distribución del crecimiento foliar y clorofila de las
                            plantas en el tiempo, mediante el uso de índices de vegetación. Los índices de vegetación te brindarán
                            información para detectar algún daño en tu cultivo ocasionado por plagas, enfermedades, estrés hídrico,
                            entre otros. Sin la necesidad de recorrer toda tu parcela de cultivo, obtendrás información para comprender
                            mejor tus campos de cultivo, con ello, podrás tomar decisiones informadas para definir zonas de manejo para
                            actividades como; aplicaciones foliares, podas, control de plagas y enfermedades. Con la única finalidad de
                            optimizar tus recursos y maximizar tu productividad.</p>
                    </div>       
            
            
            <main class="mainservicios">
                <div class="tarjeta1">
                    <div class="cara enfrente">
                        <img src="Recursos/Imgs/servicios/tiempo.jpg" alt="">
                        <h2>Ahorra tiempo</h2>
                    </div>
                    <div class="cara atras">
                        <p>Con la tecnología de GreenScan®, podrás visualizar de manera más eficaz el sitio específico
                            que requiere control, permitiéndote ahorrar tiempo al acudir puntualmente a donde se necesita.
                            Invierte el tiempo ahorrado con quienes más quieres.</p>
                    </div>
                </div>
                
                <div class="tarjeta1">
                    <div class="cara enfrente">
                        <img src="Recursos/Imgs/servicios/cultivos.jpeg" alt="">
                        <h2>Monitorea tus cultivos</h2>
                    </div>
                    <div class="cara atras">
                        <p>Con ello, puedes detectar cambios en la salud de tus cultivos en grandes extensiones y en periodos
                            cortos de tiempo. Por lo que podrás actuar de manera inmediata para identificar posibles adversidades,
                            que podrían afectar el rendimiento de tu cultivo. Actuar en tiempo y forma maximizará tus recursos.</p>
                    </div>
                </div>
                
                <div class="tarjeta1">
                    <div class="cara enfrente">
                        <img src="Recursos/Imgs/servicios/agenda.jpg" alt="">
                        <h2>Planifica tus labores</h2>
                    </div>
                    <div class="cara atras">
                        <p>Al saber concretamente dónde radica la situación a manejar, podrás planear mejor tus acciones, por ejemplo,
                            cuándo realizar: aplicaciones para el control de plagas y enfermedades, podas, entre otras. Gestiona los
                            desafíos antes de que estos se vuelvan inmanejables.</p>
                    </div>
                </div>
                
                <div class="tarjeta1">
                    <div class="cara enfrente">
                        <img src="Recursos/Imgs/servicios/produccion.jpeg" alt="">
                        <h2>Maximiza la producción</h2>
                    </div>
                    <div class="cara atras">
                        <p>Al ahorrar tiempo acudiendo puntualmente al sitio específico, monitorear periódicamente tus cultivos, y
                            planificar mejor tus actividades, tu producción se verá beneficiada y como resultado, obtendrás un mayor
                            retorno de inversión.</p>
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