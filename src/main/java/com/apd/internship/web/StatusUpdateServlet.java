package com.apd.internship.web;

import com.apd.internship.model.Application;
import com.apd.internship.service.EmailService;
import jakarta.persistence.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class StatusUpdateServlet extends HttpServlet {
    @PersistenceUnit(unitName = "internshipPU")
    private EntityManagerFactory emf;

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long applicationId = Long.parseLong(req.getParameter("applicationId"));
        String newStatus = req.getParameter("status");
        EntityManager em = emf.createEntityManager();

        Application application = em.find(Application.class, applicationId);
        em.getTransaction().begin();
        application.setStatus(newStatus);
        em.getTransaction().commit();

        EmailService.sendStatusUpdate(application.getApplicant().getEmail(), "Application Status Update",
            "Your application status is now: " + newStatus);

        em.close();
        resp.sendRedirect("progress");
    }
}