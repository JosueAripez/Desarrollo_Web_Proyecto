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
@WebServlet("/sugerencias")
public class SugerenciasServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String[] productos = {
        "Manzana", "Platano", "Pera", "Fresa", "Naranja", "Uva", "Melon", "Sandía", "Kiwi", "Piña"
    };

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String query = request.getParameter("query").toLowerCase();
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        StringBuilder json = new StringBuilder("[");
        for (String producto : productos) {
            if (producto.toLowerCase().contains(query)) {
                if (json.length() > 1) {
                    json.append(",");
                }
                json.append("\"").append(producto).append("\"");
            }
        }
        json.append("]");
        out.print(json.toString());
        out.flush();
    }
}