package ar.com.integrador.controllers.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginAdminController")

public class LoginAdminController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nombreGuardado = "administrador";
		String passwordGuardado = "cac";

		String nombre = req.getParameter("nombre");
		String password = req.getParameter("password");

		if (nombre == null || "".equals(nombre)) {
			getServletContext().getRequestDispatcher("/FindAllOradorController").forward(req, resp);
		}
		if (nombre.equals(nombreGuardado) && password.equals(passwordGuardado)) {
			getServletContext().getRequestDispatcher("/DashboardOradorController").forward(req, resp);
		} else {
			req.setAttribute("errorLogin", "Usuario y/o contraseña incorrectos");
			getServletContext().getRequestDispatcher("/pages/login.jsp").forward(req, resp);
		}
	}
}
