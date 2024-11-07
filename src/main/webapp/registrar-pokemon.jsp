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
        <title>Registrar Pokemon</title>
    </head>
    <body>
        <form action="registrarPokemon" method="POST">
            <fieldset>
                <legend>Información del Pokémon</legend>
                <label for="nombre">Nombre del Pokémon: </label>
                <input type="text" name="nombre" id="nombre"><br><br>

                <label for="numero">Número del Pokémon: </label>
                <input type="number" name="numero" id="numero"><br><br>

                <label for="tipo">Tipo de Pokémon: </label><br>
                <input type="radio" name="tipo" id="fuego" value="fuego">
                <label for="fuego">Fuego</label><br>
                <input type="radio" name="tipo" id="agua" value="agua">
                <label for="agua">Agua</label><br>
                <input type="radio" name="tipo" id="planta" value="planta">
                <label for="planta">Planta</label><br>
                <input type="radio" name="tipo" id="electrico" value="electrico">
                <label for="electrico">Eléctrico</label><br>
                <input type="radio" name="tipo" id="normal" value="normal">
                <label for="normal">Normal</label><br><br>

                <label for="evolucion">Nivel de evolución: </label>
                <select name="evolucion" id="evolucion">
                    <option value="basico">Básico</option>
                    <option value="primera">Primera evolución</option>
                    <option value="segunda">Segunda evolución</option>
                </select><br><br>

                <label for="nivelPoder">Nivel de poder: </label>
                <input type="range" name="nivelPoder" id="nivelPoder" min="1" max="100" value="50"><br><br>

                <label for="descripcion">Descripción del Pokémon: </label><br>
                <textarea cols="50" rows="6" name="descripcion" id="descripcion"
                          placeholder="Escribe una breve descripción"></textarea><br><br>

                <input type="reset" value="Limpiar formulario">
                <input type="submit" value="Enviar Pokémon">
            </fieldset>
        </form>
    </body>
</html>
