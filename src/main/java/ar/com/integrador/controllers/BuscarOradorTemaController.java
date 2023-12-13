package ar.com.integrador.controllers;

import ar.com.integrador.dao.iOradorDAO;
import ar.com.integrador.dao.implement.OradorDAOMysqlImpl;
import ar.com.integrador.domain.Orador;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BuscarOradorTemaController")
public class BuscarOradorTemaController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String origin = req.getParameter("origin");
        String temaBuscar = req.getParameter("temabuscar");
        iOradorDAO dao = new OradorDAOMysqlImpl();
        List<Orador> oradores = new ArrayList<>();

        try {
            oradores = dao.search(temaBuscar);
        } catch (Exception e) {
            e.printStackTrace();
        }

        req.setAttribute("listado", oradores);

        if ("dashboard".equals(origin)) {
            getServletContext().getRequestDispatcher("/pages/dashboard.jsp").forward(req, resp);
        } else {
            getServletContext().getRequestDispatcher("/pages/listado.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}