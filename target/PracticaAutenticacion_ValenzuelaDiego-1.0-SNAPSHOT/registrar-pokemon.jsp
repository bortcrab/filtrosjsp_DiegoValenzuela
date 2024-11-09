<%-- 
    Document   : registrar-pokemon
    Created on : 6 nov 2024, 20:55:50
    Author     : Diego Valenzuela Parra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/registrar-pokemon.css">
        <title>Registrar Pokemon</title>
    </head>

    <body>
        <form action="registrarPokemon" method="POST">
            <h1>Registrar Pokémon</h1>
            <label for="nombre">Nombre del Pokémon: </label>
            <input type="text" name="nombre" id="nombre"><br><br>

            <label for="numero">Número del Pokémon: </label>
            <input type="number" name="numero" id="numero"><br><br>

            <label for="tipo">Tipo de Pokémon: </label><br>
            <input type="radio" name="tipo" id="fuego" value="Fuego">
            <label for="fuego">Fuego</label><br>
            <input type="radio" name="tipo" id="agua" value="Agua">
            <label for="agua">Agua</label><br>
            <input type="radio" name="tipo" id="planta" value="Planta">
            <label for="planta">Planta</label><br>
            <input type="radio" name="tipo" id="electrico" value="Eléctrico">
            <label for="electrico">Eléctrico</label><br>
            <input type="radio" name="tipo" id="normal" value="Normal">
            <label for="normal">Normal</label><br><br>

            <label for="evolucion">Nivel de evolución: </label>
            <select name="evolucion" id="evolucion">
                <option value="Básico">Básico</option>
                <option value="Primera">Primera evolución</option>
                <option value="Segunda">Segunda evolución</option>
            </select><br><br>

            <label for="nivelPoder">Nivel de poder: </label>
            <input type="range" name="nivelPoder" id="nivelPoder" min="1" max="100" value="50"><br><br>

            <label for="descripcion">Descripción del Pokémon: </label><br>
            <textarea cols="50" rows="6" name="descripcion" id="descripcion"
                      placeholder="Escribe una breve descripción"></textarea><br><br>

            <input type="reset" value="Limpiar formulario">
            <input type="submit" value="Enviar Pokémon">
        </form>
    </body>

</html>