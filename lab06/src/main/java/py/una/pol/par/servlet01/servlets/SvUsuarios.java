package py.una.pol.par.servlet01.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SvUsuarios", urlPatterns = {"/SvUsuarios"})
public class SvUsuarios extends HttpServlet {

	 List<String> usuarios = new ArrayList<>();
	 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String ci = request.getParameter("ci");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        
        // Ver datos en la consola 
        System.out.println("CI: " + ci);
        System.out.println("Nombre: " + nombre);
        System.out.println("Apellido: " + apellido);
        System.out.println("Teléfono: " + telefono);

        // Guardar en la lista 
        String datos = ci + " - " + nombre + " " + apellido + " - " + telefono;
        usuarios.add(datos);
        System.out.println("Se han guardado los datos correctamente");
        
     // Redirigir al index.jsp luego de guardar
      //  response.sendRedirect("index.jsp");
        response.sendRedirect("index.jsp?mensaje=ok");

    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	// Enviar la lista de usuarios y redirigir a usuarios.jsp
        request.setAttribute("usuarios", usuarios);
        request.getRequestDispatcher("usuarios.jsp").forward(request, response);
    }
}
