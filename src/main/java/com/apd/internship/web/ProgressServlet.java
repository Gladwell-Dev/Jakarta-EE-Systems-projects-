package com.apd.internship.web;

import com.apd.internship.model.Application;
import com.apd.internship.model.Applicant;
import jakarta.persistence.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ProgressServlet extends HttpServlet {
    @PersistenceUnit(unitName = "internshipPU")
    private EntityManagerFactory emf;

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Applicant applicant = (Applicant) req.getSession().getAttribute("user");
        EntityManager em = emf.createEntityManager();
        List<Application> applications = em.createQuery("SELECT a FROM Application a WHERE a.applicant = :applicant", Application.class)
            .setParameter("applicant", applicant)
            .getResultList();
        req.setAttribute("applications", applications);
        em.close();
        req.getRequestDispatcher("progress.jsp").forward(req, resp);
    }
}