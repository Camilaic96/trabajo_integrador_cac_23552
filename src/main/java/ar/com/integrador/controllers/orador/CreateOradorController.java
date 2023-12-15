package ar.com.integrador.controllers.orador;

import ar.com.integrador.dao.iOradorDAO;
import ar.com.integrador.dao.implement.OradorDAOMysqlImpl;
import ar.com.integrador.domain.Orador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CreateOradorController")
public class CreateOradorController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
			getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
			return;
		}
		iOradorDAO dao = new OradorDAOMysqlImpl();
		Orador orador = new Orador(nombre, apellido, mail, tema);
		try {
			dao.create(orador);
			req.setAttribute("success", List.of("Alta de Orador exitosa"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		getServletContext().getRequestDispatcher("/FindAllOradorController").forward(req, resp);
	}
}
