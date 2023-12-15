package ar.com.integrador.controllers.orador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ar.com.integrador.dao.*;
import ar.com.integrador.dao.implement.OradorDAOMysqlImpl;
import ar.com.integrador.domain.Orador;

@WebServlet("/UpdateOradorController")
public class UpdateOradorController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String nombre = req.getParameter("nombre");
		String apellido = req.getParameter("apellido");
		String mail = req.getParameter("mail");
		String tema = req.getParameter("tema");

		List<String> errores = new ArrayList<>();
		if (nombre == null || "".equals(nombre)) {
			errores.add("Nombre vacío");
		}
		if (apellido == null || "".equals(apellido)) {
			errores.add("Apellido vacío");
		}
		if (mail == null || "".equals(mail)) {
			errores.add("Mail vacío");
		}
		if (tema == null || "".equals(tema)) {
			errores.add("Tema vacío");
		}

		if (!errores.isEmpty()) {
			req.setAttribute("errors", errores);
			getServletContext().getRequestDispatcher("/pages/dashboard.jsp").forward(req, resp);
			return;
		}

		iOradorDAO dao = new OradorDAOMysqlImpl();
		Orador orador;

		orador = new Orador(Long.parseLong(id), nombre, apellido, mail, tema);
		try {
			dao.update(orador);
			req.setAttribute("success", List.of("Orador id:" + orador.getId() + " actualizado correctamente"));
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("errors", List.of("Error actualizando Orador<" + e.getMessage()));
		}
		getServletContext().getRequestDispatcher("/DashboardOradorController").forward(req, resp);
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		iOradorDAO dao = new OradorDAOMysqlImpl();

		Orador orador = null;
		try {
			orador = dao.getById(Long.parseLong(id));
		} catch (Exception e) {
			e.printStackTrace();
		}

		req.setAttribute("orador", orador);

		getServletContext().getRequestDispatcher("/pages/editar.jsp").forward(req, resp);
	}

}
