<%-- 
    Document   : Chile-habanero
    Created on : 19 may 2024, 14:15:27
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
                                        <img src="../Imgs/Productos/roj.jpg" alt="rojo">
                                    </div>
                                    <div class="carousel__elemento">
                                        <img src="../Imgs/Productos/roj2.png" alt="rojo">
                                    </div>
                                    <div class="carousel__elemento">
                                        <img src="../Imgs/Productos/roj3.jpg" alt="rojo">
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
                        <h2 class="product-name">Pimiento Morron Rojo</h2>
                        <p>
                            Por su tamaño y color podría pensarse que este chile morrón se trata de un alimento muy picoso, pero la<br>
                            verdad es que es todo lo contrario, su sabor es fuerte pero dulce, y su color brillante lo hará lucir<br>
                            espectacular en todas tus recetas con pimiento. Además, se digiere fácilmente y no causa irritación<br>
                            al estómago.
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
                        Top 141<br>
                        Avante
                    </td>
                </tr>
                <tr>
                    <td>Plantas por hectarea</td>
                    <td>28 mil plantas</td>
                </tr>
                <tr>
                    <td>Tamaño del fruto</td>
                    <td>120 - 140 gramos</td>
                </tr>
                <tr>
                    <td>Toneladas por hectarea</td>
                    <td>30 - 35</td>
                </tr>
                <tr>
                    <td>Duración del ciclo de cultivo</td>
                    <td>150 - 210 días</td>
                </tr>
                <tr>
                    <td>Comentarios</td>
                    <td>
                        Color naranja brillante, se adapta de manera adecuada a zonas calidas y a zonas frescas
                    </td>
                </tr>
                
            </tbody>
        </table>

            <p class="parrafo-detalles">
                La obtención de mejor rendimiento y mayor calidad, está siempre ligado a la utilización 
                de los productos más adecuados e idóneos para cada sistema productivo. En el sustrato 
                Hydrocoir, que comercializa GREENHOW se cuidan todos los aspectos. Desde el inicio, 
                con los cuidados de la palma, para luego seguir con el procesamiento del coco obteniéndose 
                así la fibra de coco requerida. En el proceso se controla minuciosa y profesionalmente: 
                la limpieza, el corte, cribado, secado, mezclado y llenado de envases diversos, cumpliendo 
                certificaciones claves como OMRI, que garantiza que el producto es orgánico. Y como ISO 9001, 
                que asegura; calidad, estabilidad y homogeneidad del producto final que comercializa GREENHOW.
            </p>
            <p class="parrafo-detalles">
                El resultado es una fibra garantizada, de excelente calidad que posiciona a Hydrocoir como una 
                excelente alternativa para ser utilizada en sistemas de producción intensivos y eficientes, que 
                busquen optimizar la calidad, el rendimiento y por lo tanto, el retorno de la inversión (ROI). 
                Mejor producto para mejores resultados. En contraparte hay sustratos de menor costo y calidad que 
                servirán para sistemas productivos que buscan minimizar costos de entrada sin medir el impacto final
                en la rentabilidad. Si lo que buscas es un producto que potencie la genética, nutrición y el manejo 
                para producir más y de mejor calidad, optimizando el retorno de la inversión, Hydrocoir es para ti. 
                De profesional a profesional, te recomendamos Hydrocoir.
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
                        <p onclick="window.location.href = 'tel:123456789'">+52 (646)-154-01-18</p>
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