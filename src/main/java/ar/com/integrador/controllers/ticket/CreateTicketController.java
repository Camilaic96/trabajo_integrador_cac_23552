package ar.com.integrador.controllers.ticket;

import ar.com.integrador.dao.iTicketDAO;
import ar.com.integrador.dao.implement.TicketDAOMysqlImpl;
import ar.com.integrador.domain.Ticket;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CreateTicketController")
public class CreateTicketController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Entra en el controller crear");
		
		String nombre = req.getParameter("nombre");
		System.out.println("nombre recibe controller create: " + nombre);
	    
		String apellido = req.getParameter("apellido");
	    System.out.println("apellido recibe controller create: " + apellido);
	    
	    String mail = req.getParameter("mail");
	    System.out.println("mail recibe controller create: " + mail);
	    
	    String categoria = req.getParameter("categoria");
	    System.out.println("categoria recibe controller create: " + categoria);
	    
	    Long cantidad = Long.parseLong(req.getParameter("cantidad"));
	    System.out.println("cantidad recibe controller create: " + cantidad);
	   
	    Long precio_total = null;
	   
	    List<String> errores = new ArrayList<>();
	    switch (categoria.charAt(0)) {
		    case 'S':
		        precio_total = (long) (200 * cantidad);
		        break;
		    case 'E':
		        precio_total = (long) (200 * cantidad * (1 - 0.8));
		        break;
		    case 'T':
		    	precio_total = (long) (200 * cantidad * (1 - 0.5));
		        break;
		    case 'J':
		    	precio_total = (long) (200 * cantidad * (1 - 0.15));
		        break;
		    default:
		    	errores.add("Precio incorrecto");
		        break;
		}
	
	    System.out.println("precio_total recibe controller create: " + precio_total);
		
		if (nombre == null || "".equals(nombre)) {
			errores.add("Nombre vacío");
		}
		if (apellido == null || "".equals(apellido)) {
			errores.add("Apellido vacío");
		}
		if (mail == null || "".equals(mail)) {
			errores.add("Mail vacío");
		}
		if (categoria == null || "".equals(categoria)) {
			errores.add("Categoría vacío");
		}
		if (!errores.isEmpty()) {
			req.setAttribute("errors", errores);
			getServletContext().getRequestDispatcher("/pages/listado-tickets.jsp").forward(req, resp);
			return;
		}
		iTicketDAO dao = new TicketDAOMysqlImpl();
		Ticket ticket = new Ticket(cantidad, categoria, mail, precio_total, nombre, apellido);
		System.out.println(ticket);
		try {
			dao.create(ticket);
			req.setAttribute("success", List.of("Alta Ticket exitosa"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		getServletContext().getRequestDispatcher("/FindAllTicketController").forward(req, resp);
	}
}