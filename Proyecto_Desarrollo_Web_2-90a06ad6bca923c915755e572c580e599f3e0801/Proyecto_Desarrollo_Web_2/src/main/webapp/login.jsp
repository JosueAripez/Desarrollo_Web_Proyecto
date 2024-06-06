<%-- 
    Document   : login
    Created on : 19 may 2024, 14:13:14
    Author     : jossu
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
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
        <title>Nat's Veggies</title>
        <link href="Recursos/Imgs/Logo_NV.png" rel="icon">
        <link href="Recursos/Styles/Login.css" rel="stylesheet">

       

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
                <% if (sessionUserName == null && request.getParameter("Registro") == null && request.getParameter("Recuperarpwd") == null && request.getParameter("contrasenia") == null ) { %>
                <form action="ControllerUsuario" method="post">
                    
                    <input type="text" name="nombre" id="nombre" placeholder="Ingresa Usuario" autofocus required>
                    <br>
                    <br>
                    <input type="password" id="contrasena" name="contra1" placeholder="Ingresa Contraseña" required>
                    <br>
                    <br>
                    
                    <br>
                    <br>

                    <input type="submit" name="iniciar" value="Iniciar Sesión" class="boton">
                    <br>
                    
                </form>
                <a href="login.jsp?Registro"><p>¿No tienes Ninguna Cuenta?</p></a>
                <a href="login.jsp?Recuperarpwd"><p>¿Olvidaste Tu Contraseña?</p></a>
                <% } %>
                <% if (request.getParameter("error") != null) { %>
                <p style="color: red;">Usuario o contraseña incorrectos.</p>
                <% }%>
                <%if(sessionUserName !=null){ %>
                    <br>
                    <form action="ControllerUsuario?action=logout" method="post">
                        <button type="submit" class="boton-cerrar">Cerrar Sesión</button>
                    </form>
                <% } %>
                <br>
                
                <hr>
                
                
                <% if (request.getParameter("Registro") != null) { %>
                    <form action="ControllerUsuario?action=addUser" method="post">
                    
                    <input type="text" name="nombre" id="nombre" placeholder="Ingresa Usuario" autofocus required>
                    <br>
                    <br>
                    <input type="text" name="id" id="id" placeholder="Ingresa tu ID" required>
                    <br>
                    <br>
                    <input type="password" id="pwd" name="pwd" placeholder="Ingresa Contraseña" required>
                    <br>
                    <br>

                    <br>
                    <br>

                    <input type="submit" name="iniciar" value="Iniciar Sesión" class="boton">
                    <br>
                </form>
                <% }%>
                <% if (request.getParameter("Recuperarpwd") != null) { %>
                    <h1>Recuperar Contraseña</h1>
                        <form action="ControllerUsuario?action=Recuperarpwd" method="post">
                            <label for="nombre">Nombre de Usuario:</label>
                            <input type="text" id="nombre" name="nombre" required>
                            <br>
                            <br>
                            <label for="id">ID de Usuario:</label>
                            <input type="text" id="id" name="id" required>
                            <br>
                            <br>
                            
                            <input type="submit" value="Recuperar Contraseña" class="boton">
                        </form>
                
                <% }%>
                <% if (request.getParameter("contrasenia") != null) { %>
                    <h2>Contraseña recuperada:</h2>
                    <p><%= request.getParameter("contrasenia") %></p>
                    <form action="ControllerUsuario?action=logout" method="post">
                        <input type="submit" value="Atras" class="boton-cerrar">
                    </form>
                <% } %>
            </div>
        </main>
        <footer class="footer">
            <p>© copyright 2024 Nat's Veggies. Todos los derechos reservados</p>
        </footer>
    </body>
</html>