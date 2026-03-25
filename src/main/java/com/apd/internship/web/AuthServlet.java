package com.apd.internship.web;

import com.apd.internship.model.Applicant;
import jakarta.persistence.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class AuthServlet extends HttpServlet {
    @PersistenceUnit(unitName = "internshipPU")
    private EntityManagerFactory emf;

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        EntityManager em = emf.createEntityManager();

        if ("signup".equals(action)) {
            String name = req.getParameter("name");
            Applicant applicant = new Applicant();
            applicant.setName(name);
            applicant.setEmail(email);
            applicant.setPassword(password);
            em.getTransaction().begin();
            em.persist(applicant);
            em.getTransaction().commit();
            req.getSession().setAttribute("user", applicant);
            resp.sendRedirect("dashboard");
        } else if ("login".equals(action)) {
            TypedQuery<Applicant> q = em.createQuery("SELECT a FROM Applicant a WHERE a.email = :email AND a.password = :password", Applicant.class);
            q.setParameter("email", email);
            q.setParameter("password", password);
            try {
                Applicant applicant = q.getSingleResult();
                req.getSession().setAttribute("user", applicant);
                resp.sendRedirect("dashboard");
            } catch (NoResultException e) {
                req.setAttribute("error", "Invalid credentials");
                req.getRequestDispatcher("login.jsp").forward(req, resp);
            }
        }
        em.close();
    }
}