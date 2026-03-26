package com.apd.internship.web;

import com.apd.internship.model.*;
import jakarta.persistence.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.Date;

public class ApplyServlet extends HttpServlet {
    @PersistenceUnit(unitName = "internshipPU")
    private EntityManagerFactory emf;

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long internshipId = Long.parseLong(req.getParameter("internshipId"));
        Applicant applicant = (Applicant) req.getSession().getAttribute("user");

        EntityManager em = emf.createEntityManager();
        Internship internship = em.find(Internship.class, internshipId);

        Application application = new Application();
        application.setApplicant(applicant);
        application.setInternship(internship);
        application.setStatus("Submitted");
        application.setAppliedDate(new Date());

        em.getTransaction().begin();
        em.persist(application);
        em.getTransaction().commit();
        em.close();

        resp.sendRedirect("progress");
    }
}