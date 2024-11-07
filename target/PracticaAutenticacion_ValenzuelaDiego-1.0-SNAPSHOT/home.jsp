<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Pokemon" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="jakarta.servlet.ServletContext" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Mini Pokédex</title>
    </head>
    <body>
        <main>
            <h1>Mis pokemones favoritos</h1>
            <form action="registrar-pokemon.jsp">
                <button type="submit">Agregar Pokémon</button>
            </form>

            <table border="1">
                <caption>Mini Pokédex</caption>
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Número</th>
                        <th>Tipo</th>
                        <th>Evolución</th>
                        <th>Nivel de Poder</th>
                        <th>Descripción</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ServletContext context = getServletContext();
                        List<Pokemon> listaPokemon = (List<Pokemon>) context.getAttribute("listaPokemon");
                        if (listaPokemon == null) {
                            listaPokemon = new ArrayList<>();
                            context.setAttribute("listaPokemon", listaPokemon);
                        }

                        for (Pokemon p : listaPokemon) {
                    %>
                    <tr>
                        <td><%= p.getNombre()%></td>
                        <td><%= p.getNumero()%></td>
                        <td><%= p.getTipo()%></td>
                        <td><%= p.getEvolucion()%></td>
                        <td><%= p.getNivelPoder()%></td>
                        <td><%= p.getDescripcion()%></td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
        </main>
    </body>
</html>
