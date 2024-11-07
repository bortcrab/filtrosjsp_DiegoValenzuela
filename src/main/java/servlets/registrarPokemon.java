/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import jakarta.servlet.ServletContext;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import modelo.Pokemon;

/**
 *
 * @author Diego Valenzuela Parra
 */
public class registrarPokemon extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public void init() throws ServletException {
        // Inicializar la lista de Pokémon si no existe
        ServletContext context = getServletContext();
        if (context.getAttribute("listaPokemon") == null) {
            context.setAttribute("listaPokemon", new ArrayList<Pokemon>());
        }
    }
    
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener los datos del formulario
        String nombre = request.getParameter("nombre");
        int numero = Integer.parseInt(request.getParameter("numero"));
        String tipo = request.getParameter("tipo");
        String evolucion = request.getParameter("evolucion");
        int nivelPoder = Integer.parseInt(request.getParameter("nivelPoder"));
        String descripcion = request.getParameter("descripcion");

        // Crear un nuevo objeto Pokemon
        Pokemon pokemon = new Pokemon(nombre, numero, tipo, evolucion, nivelPoder, descripcion);

        // Agregar el Pokémon a la lista en el contexto de la aplicación
        ServletContext context = getServletContext();
        List<Pokemon> listaPokemon = (List<Pokemon>) context.getAttribute("listaPokemon");
        listaPokemon.add(pokemon);

        // Redireccionar de vuelta a la página para mostrar la lista actualizada
        response.sendRedirect("home.jsp");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
