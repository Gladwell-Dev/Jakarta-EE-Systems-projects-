# Jakarta-EE-Systems-projects-
This Repo will demostrate and show web enterprise  systems and  microservices .    
## Graduate Internship Web Application

A full-stack web application built on **Jakarta EE** that manages the end-to-end 
internship application process for graduates  from browsing available positions 
to tracking application status.

---
 
## System Overview

This system allows graduates to register, browse internship listings, submit 
applications, and receive real-time status updates via email. Administrators 
can manage internship postings and review incoming applications through a 
centralized dashboard.

---

## Core Features

- Graduate registration and secure authentication
- Internship listing management with deadlines
- Application submission and tracking
- Automated email notifications on application status updates
- Admin dashboard for reviewing and managing applications
- Full CRUD operations on internship and applicant records

---

## Data Models

| Entity | Description |
|---|---|
| `Applicant` | Stores graduate profile — name, email, and credentials |
| `Internship` | Holds position details — title, description, and deadline |
| `Application` | Links an applicant to an internship with status and applied date |

**Relationships:**
- One `Applicant` → Many `Applications`
- One `Internship` → Many `Applications`
- `Application` status tracks the lifecycle: `Pending → Reviewed → Accepted / Rejected`

---

## Technology Stack

| Technology | Role |
|---|---|
| Jakarta Servlet | Handles HTTP request or response lifecycle for all web interactions |
| Jakarta Faces (JSF) | Component-based MVC framework for building the user interface |
| Jakarta RESTful Web Services | REST API layer producing and consuming JSON/XML data |
| Jakarta Server Pages (JSP) | Template engine for rendering dynamic HTML content |
| Jakarta CDI | Dependency injection for loosely coupled, maintainable components |
| Jakarta Persistence API (JPA) | Object-relational mapping — maps `Applicant`, `Application` and `Internship` entities to database tables |
| Jakarta Mail | SMTP email service for sending automated status update notifications to graduates |

---

## Architecture
```
Client (Browser)  
Jakarta Servlet / JSF )
CDI Managed Beans 
JPA Entities : Database MySQL
Jakarta Mail : SMTP Server (Email Notifications)
```

---

## REST API Endpoints

| Method | Endpoint | Description |
|---|---|---|
| `GET` | `/api/internships` | Fetch all available internships |
| `GET` | `/api/internships/{id}` | Fetch a single internship by ID |
| `POST` | `/api/applications` | Submit a new application |
| `GET` | `/api/applications/{id}` | Get application status by ID |
| `PUT` | `/api/applications/{id}/status` | Update application status (Admin) |
| `GET` | `/api/applicants/{id}` | Fetch applicant profile |

---

## Email Notification Service

The `EmailService` class uses **Jakarta Mail** over SMTP to automatically 
notify graduates when their application status changes. Triggered whenever 
an admin updates an application record.



---

