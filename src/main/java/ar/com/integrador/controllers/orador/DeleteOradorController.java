package ar.com.integrador.controllers.orador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ar.com.integrador.dao.iOradorDAO;
import ar.com.integrador.dao.implement.OradorDAOMysqlImpl;

@WebServlet("/DeleteOradorController")
public class DeleteOradorController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Long id = Long.parseLong(req.getParameter("idOrador"));
		iOradorDAO dao = new OradorDAOMysqlImpl();
		try {
			dao.delete(id);
			req.setAttribute("success", List.of("Se he eliminado el orador con id:" + id));
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("erorrs", List.of("NO se he eliminado el orador :" + e.getMessage()));
		}
		getServletContext().getRequestDispatcher("/DashboardOradorController").forward(req, resp);
	}
}
