<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Usuarios</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 40px;
        }

        h1 {
            color: #333;
        }

        form {
            background-color: #fff;
            padding: 20px;
            margin-bottom: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            max-width: 400px;
        }

        label {
            display: inline-block;
            width: 90px;
            font-weight: bold;
        }

        input[type="text"] {
            width: 250px;
            padding: 5px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }

        button:hover {
            background-color: #45a049;
        }

        .container {
            display: flex;
            gap: 30px;
            flex-wrap: wrap;
        }

        .mensaje-exito {
            background-color: #d4edda;
            color: #155724;
            padding: 12px;
            border: 1px solid #c3e6cb;
            border-radius: 4px;
            margin-bottom: 20px;
            max-width: 400px;
        }
    </style>
</head>
<body>

<%
    String mensaje = request.getParameter("mensaje");
    if ("ok".equals(mensaje)) {
%>
    <div class="mensaje-exito">
        ✅ Usuario cargado con éxito.
    </div>
<%
    }
%>

<h1>Gestión de Usuarios</h1>

<div class="container">
    <!-- Formulario de ingreso -->
    <form action="SvUsuarios" method="POST">
        <h2>Agregar Usuario</h2>
        <p><label>CI:</label><input type="text" name="ci" required></p>
        <p><label>Nombre:</label><input type="text" name="nombre" required></p>
        <p><label>Apellido:</label><input type="text" name="apellido" required></p>
        <p><label>Teléfono:</label><input type="text" name="telefono" required></p>
        <button type="submit">Enviar</button>
    </form>

    <!-- Formulario para ver usuarios -->
    <form action="SvUsuarios" method="GET">
        <h2>Ver Usuarios</h2>
        <p>Haga clic para mostrar la lista de usuarios registrados.</p>
        <button type="submit">Mostrar usuarios</button>
    </form>
</div>

</body>
</html>
