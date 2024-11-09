<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="beans.Pokemon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="jakarta.servlet.ServletContext" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="styles/home.css">
        <title>Mini Pokédex</title>
    </head>

    <body>
        <main>
            <h1>POKÉDEX</h1>
            <c:choose>
                <c:when test="${sessionScope.listaPokemones.isEmpty()}">
                    <h2>Aún no hay pokemones registrados!</h2>
                </c:when>
                <c:otherwise>
                    <table>
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
                            <c:forEach items="${sessionScope.listaPokemones}" var="pokemon">
                                <tr>
                                    <td>${pokemon.getNumero()}</td>
                                    <td>${pokemon.getNombre()}</td>
                                    <td>${pokemon.getTipo()}</td>
                                    <td>${pokemon.getEvolucion()}</td>
                                    <td>${pokemon.getNivelPoder()}</td>
                                    <td>${pokemon.getDescripcion()}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:otherwise>
            </c:choose>
            <form action="registrar-pokemon.jsp">
                <button type="submit">Agregar Pokémon</button>
            </form>
        </main>
    </body>

</html>