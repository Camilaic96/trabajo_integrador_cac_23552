package ar.com.integrador.controllers.ticket;

import ar.com.integrador.dao.iTicketDAO;
import ar.com.integrador.dao.implement.TicketDAOMysqlImpl;
import ar.com.integrador.domain.Ticket;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FindAllTicketController")

public class FindAllTicketController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		iTicketDAO dao = new TicketDAOMysqlImpl();
		List<Ticket> tickets = new ArrayList<>();
		try {
			tickets = dao.findAll();
			System.out.println(tickets);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.setAttribute("listado", tickets);
		getServletContext().getRequestDispatcher("/pages/listado-tickets.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
