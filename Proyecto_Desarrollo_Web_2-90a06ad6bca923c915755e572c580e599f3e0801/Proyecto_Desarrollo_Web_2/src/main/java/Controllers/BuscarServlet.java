/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jossu
 */
@WebServlet("/buscar")
public class BuscarServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String query = request.getParameter("query").toLowerCase();

        try {
            switch (query) {
                case "manzana":
                    response.sendRedirect("manzana.jsp");
                    break;
                case "plátano":
                    response.sendRedirect("platano.jsp");
                    break;
                case "pepino":
                    response.sendRedirect("Pepino.jsp");
                    break;
                // Agrega más casos según los productos que tienes
                default:
                    response.sendRedirect("producto_no_encontrado.jsp");
                    break;
            }
        } catch (IllegalStateException e) {
            // Manejar el error
            e.printStackTrace();
        }
    }
}