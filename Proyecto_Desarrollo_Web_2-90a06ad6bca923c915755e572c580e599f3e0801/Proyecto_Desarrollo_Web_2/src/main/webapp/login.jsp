<%-- 
    Document   : login
    Created on : 19 may 2024, 14:13:14
    Author     : jossu
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nat's Veggies</title>
        <link href="Recursos/Imgs/Logo_NV.png" rel="icon">
        <link href="Recursos/Styles/Login.css" rel="stylesheet">

        <script>
            function cerrarSesion() {
                // Envía una solicitud GET al servlet de logout
                var xhr = new XMLHttpRequest();
                xhr.open("GET", "logout", true);
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        // Redirige a la página de inicio después de cerrar sesión
                        window.location.href = "index.jsp";
                    }
                };
                xhr.send();
            }
        </script>

    </head>
    <body>
        <header class="header">
            <img src="Recursos/Imgs/Logo_NV.png" alt="Logo">
        </header>
        <main class="main">
            <div>
                <h1>¡Bienvenido!</h1>
                <br>
                <br>
                <form action="login" method="post">
                    <input type="text" name="text" id="text" placeholder="Ingresa Usuario" autofocus required>
                    <br>
                    <br>
                    <input type="password" id="contrasena" name="contrasena" placeholder="Ingresa Contraseña" required>
                    <br>
                    <br>
                    <input type="checkbox" name="recordar">
                    <label for="recordar">Recordar Datos</label>
                    <br>
                    <br>

                    <input type="submit" name="iniciar" value="Iniciar Sesión" class="boton">
                    <br>
                    <br>
                    <input type="button" name="cerrar" value="Cerrar Sesión" class="boton-cerrar" onclick="cerrarSesion()">
                </form>
                <br>
                <p>¿Olvidaste Tu Contraseña?</p>
                <hr>
                <p>¿No tienes Ninguna Cuenta?</p>
                <% if (request.getParameter("error") != null) { %>
                <p style="color: red;">Usuario o contraseña incorrectos.</p>
                <% }%>
            </div>
        </main>
        <footer class="footer">
            <p>© copyright 2024 Nat's Veggies. Todos los derechos reservados</p>
        </footer>
    </body>
</html>