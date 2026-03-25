package com.apd.internship.web;

import com.apd.internship.model.Internship;
import jakarta.persistence.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class DashboardServlet extends HttpServlet {
    @PersistenceUnit(unitName = "internshipPU")
    private EntityManagerFactory emf;

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        EntityManager em = emf.createEntityManager();
        List<Internship> internships = em.createQuery("SELECT i FROM Internship i", Internship.class).getResultList();
        req.setAttribute("internships", internships);
        em.close();
        req.getRequestDispatcher("dashboard.jsp").forward(req, resp);
    }
}