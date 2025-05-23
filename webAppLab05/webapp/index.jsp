<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
   <meta charset="UTF-8">
   <title>JSP Laboratorio 5 - 2025</title>
 </head>
 <body>
   <h1> Ejemplo de Expresiones</h1>
   <%= new java.util.Date().toString() %><br>
   <%= "Texto a mayúsculas".toUpperCase() %><br>
   <%= (5+2)/(float)3 %><br>
   <%= new java.util.Random().nextInt(100) %>
 </body>
</html>
