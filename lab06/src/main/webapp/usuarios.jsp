<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%
    List<String> usuarios = (List<String>) request.getAttribute("usuarios");
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Lista de Usuarios</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 30px;
        }
        h1 {
            color: #333;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            background-color: white;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            color: #4CAF50;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <h1>Lista de Usuarios</h1>

    <%
        if (usuarios == null || usuarios.isEmpty()) {
    %>
        <p>No hay usuarios cargados</p>
    <%
        } else {
    %>
        <table>
            <tr><th>CI</th><th>Nombre y Apellido</th><th>Teléfono</th></tr>
            <%
                for (String u : usuarios) {
                    String[] partes = u.split(" - ");
            %>
            <tr>
                <td><%= partes[0] %></td>
                <td><%= partes[1] %></td>
                <td><%= partes[2] %></td>
            </tr>
            <% } %>
        </table>
    <%
        }
    %>

    <a href="index.jsp">← Volver al formulario</a>

</body>
</html>
