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

@WebServlet("/FindTicketByIdController")
public class FindTicketByIdController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idString = req.getParameter("id");
        Long id = Long.parseLong(idString);

        iTicketDAO dao = new TicketDAOMysqlImpl();
        try {
            Ticket ticket = dao.getById(id);
            req.setAttribute("ticket", ticket);
            getServletContext().getRequestDispatcher("/pages/listado-tickets.jsp").forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}