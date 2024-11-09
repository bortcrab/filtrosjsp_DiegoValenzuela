<%-- 
    Document   : index
    Created on : 6 nov 2024, 20:55:01
    Author     : Diego Valenzuela Parra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/index.css">
        <title>Iniciar Sesión</title>
    </head>

    <body>
        <div class="contenedor">
            <h1>Inicia Sesión</h1>
            <form action="login" method="POST">
                <div class="fila">
                    <label for="user">Usuario:</label>
                    <input type="text" name="user" id="user" required>
                </div>
                <div class="fila">
                    <label for="password">Contraseña:</label>
                    <input type="password" name="password" id="password" required>
                </div>
                <input type="submit" value="Entrar">
            </form>
        </div>
    </body>

</html>