<%-- 
    Document   : melon-palmira
    Created on : 19 may 2024, 14:17:04
    Author     : jossu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nat's Veggies</title>
        <link href="../Imgs/Logo_NV.png" rel="icon">
        <link href="../Styles/index.css" rel="stylesheet">
        <link href="../Styles/productosdetalles.css" rel="stylesheet">
        
        <script src="../Scripts/productosdetalles.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/glider-js@1.7.9/glider.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/glider-js@1.7.9/glider.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/106276c4b2.js" crossorigin="anonymous"></script>
        
        
    </head>
    <body>
        <div class="nav">
            <header class="header">
                <p>¡Bienvenidos a Nat's Veggies! La puerta de entrada a la excelencia en productos y servicio</p>
            </header>
            <div class="contenedor-nav">
                <img src="../Imgs/Logo_nav.png" class="logo-nav" name="logo-nav">
                <p class="text-nav">Nat's Veggies </p>
                <input type="text" id="buscador" name="buscador" placeholder="Buscar Productos">
                <input type="image"id="bb" src="../Imgs\lupa.png">
            </div>
            <hr class="espacio-nav">
            <div class="contenedor-menu">
                <ul>
                    <li><a href="..\..\\index.jsp">Inicio</a></li>
                    <li><a href="..\..\\productos.jsp">Productos</a></li>
                    <li><a href="../..//servicios.jsp">Servicios</a></li>
                    <li><a href="..\..\\about.jsp">Nosotros</a></li>
                    <li><a href="..\..\\contacto.jsp">Contacto</a></li>
                </ul>
            </div>
            <br>
        </nav> 
        <table>
            <tr>
                <td style="width: 400px;">
                    <div class="carousel">
                        <div class="carousel__contenedor">
                    

                            <div class="carousel__lista">
                                <div class="carousel__elemento">
                                    <img src="../Imgs/Productos/Melon-palmira2.jpg" alt="melon palmira">
                                </div>
                                <div class="carousel__elemento">
                                    <img src="../Imgs/Productos/Melon_Palmira.jpg" alt="melon palmira">
                                </div>
                                <div class="carousel__elemento">
                                    <img src="../Imgs/Productos/Melon-palmira3.jpg" alt="melon palmira">
                                </div>
                                
                                
                            </div>
                            <button aria-label="Anterior" class="carousel__anterior">
                                <i class="fas fa-chevron-left"></i>
                            </button>
                            <button aria-label="Siguiente" class="carousel__siguiente">
                                <i class="fas fa-chevron-right"></i>
                            </button>
                            <div role="tablist" class="carousel__indicadores"></div>
                        </div>
                    </div>

                </td>
                <td class="product-info">
                    <h2 class="product-name">Melón Palmira</h2>
                    <p>
                        Planta fuerte y de buena sanidad, con muy buena adaptabilidad a zonas meloneras de México,<br>
                        recomendada para siembras del 15 de julio al 15 de agosto.
                    </p>
                </td>
            </tr>
        </table>

        
        <table id="Detalles-producto">
            <thead>
                <tr>
                    <th colspan="2">INFORMACIÓN DEL PRODUCTO</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <b>CARACTERÍSTICA</b>
                    </td>
                    <td>
                        <b>DESCRIPCIÓN</b>
                    </td>
                </tr>
                <tr>
                    <td>Variedades</td>
                    <td>
                        Palmira F1
                    </td>
                </tr>
                <tr>
                    <td>Plantas por hectarea</td>
                    <td>20 - 22 mil plantas</td>
                </tr>
                <tr>
                    <td>Tamaño del fruto</td>
                    <td>1.5 - 2.5 kilogramos</td>
                </tr>
                <tr>
                    <td>Toneladas por hectarea</td>
                    <td>70 - 80</td>
                </tr>
                <tr>
                    <td>Duración del ciclo de cultivo</td>
                    <td>120 - 150 días</td>
                </tr>
                <tr>
                    <td>Comentarios</td>
                    <td>
                        Buen tamaño, uniformidad de frutos, poca semilla, excelentes grados BRICS,
                        excelente consistencia de la pulpa, alta vida de anaquel
                    </td>
                </tr>
                
            </tbody>
        </table>

        <p class="parrafo-detalles">
            Nat's Veggies, reconocida por su excelencia en la agricultura mexicana y su presencia 
            destacada en el mercado estadounidense, se distingue por su compromiso inquebrantable 
            con la calidad en todas las etapas de producción. Desde la selección cuidadosa de los 
            campos de cultivo hasta el meticuloso proceso de empaquetado y transporte, cada paso se 
            realiza con el más alto estándar de calidad. En Nat's Veggies, se enfatiza la importancia de 
            una producción sostenible y responsable, lo que se refleja en la certificación "Senasica" y 
            "PrimusGFS", que garantizan el cumplimiento de regulaciones rigurosas y la seguridad alimentaria de los productos.

        </p>
        <p class="parrafo-detalles">
            Los productos de Nat's Veggies son más que simples vegetales; son el resultado de un 
            arduo trabajo y dedicación hacia la excelencia. Desde el campo hasta la mesa del 
            consumidor, se cuida cada detalle para garantizar la frescura, sabor y calidad superiores. Si 
            buscas productos que no solo cumplan, sino que superen tus expectativas en términos de 
            calidad y rendimiento, Nat's Veggies es la elección indiscutible. Confiables, seguros y con 
            un compromiso innegable con la satisfacción del cliente, los productos de Nat's Veggies 
            son la opción preferida para aquellos que buscan lo mejor en el mercado de productos agrícolas.
        </p>
        
        <footer class="footer">
            <div class="container">
                <div class="footer-column">
                    <h4>Opciones</h4>
                    <ul>
                        <li><a href="..\..\\index.jsp">Inicio</a></li>
                        <li><a href="..\..\\productos.jsp">Productos</a></li>
                        <li><a href="..\..\\about.jsp">Nosotros</a></li>
                        <li><a href="..\..\\contacto.jsp">Contacto</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h4>Dirección</h4>
                    <p onclick="window.open('https://maps.app.goo.gl/QsALRR2noS4z5Y3M8')">Col. Maneadero Calle Juan Aldama No. 180 C.P. 22790 Ciudad Ensenada Del. Edo. Baja California</p>
                    <h4>Teléfono</h4>
                    <p onclick="window.location.href='tel:123456789'">+52 (646)-154-01-18</p>
                </div>
                <div class="footer-column">
                    <h4>Certificaciones</h4>
                    <img class="certificacion" src="../Imgs/Index/primusgfs.png" alt="Certificación 1">
                    <img class="certificacion" src="../Imgs/Index/Senasica.png" alt="Certificación 2">

                </div>
            </div>
            <div class="footer-bottom">
                <p>© copyright 2024 Nat's Veggies. Todos los derechos reservados</p>
            </div>
        </footer>
        
    </body>

</html>