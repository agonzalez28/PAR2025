<%@ page import="java.io.File" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Galería de Imágenes</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ffeef8;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        h1 {
            margin-top: 20px;
            color: #FF6F61;
        }

        .galeria {
            display: grid;
            grid-template-columns: repeat(3, 1fr); /* 3 columnas iguales */
            gap: 20px;
            padding: 20px;
            justify-items: center; /* centrar imágenes dentro de cada celda */
        }

        .galeria img {
            width: 200px;
            height: auto;
            border: 2px solid #555;
            border-radius: 8px;
            box-shadow: 2px 2px 8px rgba(0,0,0,0.2);
            transition: transform 0.3s ease-in-out;
        }

        .galeria img:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <h1>Galería de Imágenes de Gatitos</h1>

    <div class="galeria">
    <%
        String ruta = application.getRealPath("/img");
        File carpeta = new File(ruta);
        if (carpeta.exists() && carpeta.isDirectory()) {
            String[] archivos = carpeta.list();
            Arrays.sort(archivos);
            for (String archivo : archivos) {
                if (archivo.endsWith(".jpg") || archivo.endsWith(".png") || archivo.endsWith(".jpeg") || archivo.endsWith(".gif")) {
    %>
        <img src="img/<%= archivo %>" alt="<%= archivo %>">
    <%
                }
            }
        } else {
    %>
        <p>Error: No se encontró la carpeta de imágenes.</p>
    <%
        }
    %>
    </div>
</body>
</html>
