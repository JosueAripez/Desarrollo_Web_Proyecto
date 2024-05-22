/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jossu
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final String[][] usuarios = {
        {"adminn", "admin1234", "Administrador"},
        {"Josue", "Rojas", "Josue Rojas"},
        {"Marcelo", "Marquez", "Marcelo MO"},
        {"Christian", "Cardenas", "Chris"}
    };

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("text");
        String password = request.getParameter("contrasena");

        for (String[] user : usuarios) {
            if (user[0].equals(username) && user[1].equals(password)) {
                HttpSession session = request.getSession();
                session.setAttribute("usuario", user[2]); // Guardamos el nombre del usuario en la sesión
                System.out.println("Inicio de sesión exitoso para: " + user[2]);
                response.sendRedirect("index.jsp");
                return;
            }
        }

        // Si las credenciales no son válidas, redirigimos de vuelta a la página de inicio de sesión
        response.sendRedirect("login.jsp?error=1");
    }
}