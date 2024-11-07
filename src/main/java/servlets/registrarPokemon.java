/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import beans.Pokemon;
import jakarta.servlet.http.HttpSession;
import java.util.Comparator;

/**
 *
 * @author Diego Valenzuela Parra
 */
public class RegistrarPokemon extends HttpServlet {

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
        String destino;

        if (!request.getParameter("nombre").isBlank() && !request.getParameter("numero").isBlank() && !request.getParameter("tipo").isBlank() && !request.getParameter("evolucion").isBlank() && !request.getParameter("nivelPoder").isBlank() && !request.getParameter("descripcion").isBlank()) {
            Pokemon pokemon = new Pokemon();
            pokemon.setNombre(request.getParameter("nombre"));
            pokemon.setNumero(Integer.parseInt(request.getParameter("numero")));
            pokemon.setTipo(request.getParameter("tipo"));
            pokemon.setEvolucion(request.getParameter("evolucion"));
            pokemon.setNivelPoder(request.getParameter("nivelPoder"));
            pokemon.setDescripcion(request.getParameter("descripcion"));

            HttpSession sesion = request.getSession();
            List<Pokemon> listaPokemones = (List<Pokemon>) sesion.getAttribute("listaPokemones");
            listaPokemones.add(pokemon);

            Comparator<Pokemon> comparador = (Pokemon p1, Pokemon p2) -> Integer.compare(p1.getNumero(), p2.getNumero());

            listaPokemones.sort(comparador); // Para acomodarlos según su numerito de pokedex

            destino = "home.jsp";
        } else {
            destino = "registrar-pokemon.jsp";
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher(destino);
        dispatcher.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
