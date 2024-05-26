<%-- 
    Document   : about
    Created on : 19 may 2024, 14:12:39
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
                    <div class="fondo">
                        <h1 class="centro">¿Quiénes<br>Somos?</h1>
                        <img src="Recursos/Imgs/About/quienessomos2.jpeg" class="imagen">

                        <p class="texto1">Actualmente distribuimos productos producidos
                            <br>en México, Estados Unidos, Chile, Argentina y
                            <br>Peru; y tenemos presencia de venta en los
                            <br>mercados de México, Estados Unidos y China.
                            <br>mercados de México, de supermercados,
                            <br>mercados de México, distribuidoras y mercados
                            <br>de abasto.
                        </p>
                    </div>

                    <img src="Recursos/Imgs/About/pepino.png" class="pepino">
                    <div class="contenedor">
                        <h1 class="encabezado">Misión</h1>
                        <p class="texto2">
                            Entregar una solución de nutrición global a clientes tecnificados de la República Mexicana,
                            <br>
                            que les permita maximizar la calidad y la producción de sus cultivos, para así obtener grandes
                            <br>
                            cosechas con un excelente retorno de su inversión.
                        </p>
                    </div>
                    <img src="Recursos/Imgs/About/fresas.png" class="fresas">
                    <div class="contenedor2">
                        <h1 class="encabezado2">Visión</h1>
                        <p class="texto3">
                            Ser el proveedor preferido por los agricultores mexicanos para nutrir eficaz, eficiente y
                            <br>
                            sustentablemente sus cultivos. Ser un agente de capacitación, difusión y cambio a productos y
                            <br>
                            técnicas de nutrición más adecuados para cumplir con los fines productivos que el crecimiento
                            <br>
                            poblacional y el cuidado del planeta nos exigen. Generar beneficios a la sociedad y entorno en
                            <br>
                            el que participamos.
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
                            existente en el mundo para el campo mexicano. Así mismo asesoramos a los agricultores con
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