/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import Models.Users;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ControllerUsuario")
public class ControllerUsuario extends HttpServlet {
    
    // Variable estática para almacenar la lista de usuarios
    private static ArrayList<Users> usuarios;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        
        if ("logout".equals(action)) {
            // Eliminar el atributo de sesión que contiene los usuarios
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate(); // Invalidar la sesión existente
            }
            response.sendRedirect("index.jsp"); // Redireccionar con parámetro de error
        }else if ("addUser".equals(action)) {
            // Registro de usuario
            String nombre = request.getParameter("nombre");
            String id = request.getParameter("id");
            String pwd = request.getParameter("pwd");

            // Asegurarse de que el ArrayList de usuarios esté inicializado
            inicializarUsuarios();

            // Agrega el nuevo usuario al ArrayList existente
            usuarios = Users.agregaUsuario(usuarios, nombre, id, pwd);

            // Redirigir a index.jsp?correcto después de un registro exitoso
            response.sendRedirect("index.jsp?correcto");
        } else if ("Recuperarpwd".equals(action)) {
            // Recuperación de contraseña
            String nombre = request.getParameter("nombre");
            String id = request.getParameter("id");

            // Asegurarse de que el ArrayList de usuarios esté inicializado
            inicializarUsuarios();

            // Buscar el usuario en el ArrayList global
            Users user = Users.buscarPorNombreYId(usuarios, nombre, id);

            if (user != null) {
                // Redirigir a login.jsp?contrasenia con los datos del usuario
                response.sendRedirect("login.jsp?contrasenia=" + user.getContraseña());
            } else {
                // Usuario no encontrado, redirigir con un mensaje de error
                response.sendRedirect("login.jsp?error=2");
            }
        }
        else {
            // Inicio de sesión
            String nombre = request.getParameter("nombre");
            String pass = request.getParameter("contra1");

            // Asegurarse de que el ArrayList de usuarios esté inicializado
            inicializarUsuarios();

            // Validar el usuario utilizando el ArrayList global
            Users user = Users.validaPorUsuario(usuarios, nombre, pass);

            if (user != null) {
                // Autenticación exitosa, establecer el atributo de sesión "userName"
                HttpSession session = request.getSession();
                session.setAttribute("userName", user.getNombre());
                response.sendRedirect("index.jsp?userName=" + user.getNombre());

            } else {
                // Autenticación fallida, redirigir con un parámetro de error
                response.sendRedirect("login.jsp?error=1");
            }
        }
    }
    
    // Método para inicializar el ArrayList de usuarios si aún no existe
    private void inicializarUsuarios() {
        if (usuarios == null) {
            usuarios = Users.inicializaUsuarios();
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
