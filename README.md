# Jakarta-EE-Systems-projects-
This Repo will demostrate and show web enterprise  systems and  microservices .    
## Graduate Internship Web Application

A full-stack web application built on **Jakarta EE** that manages the end-to-end 
internship application process for graduates  from browsing available positions to tracking application status.

--- 
      
## System Overview  
   
This system allows graduates to register, browse internship listings, submit 
applications, and receive real-time status updates via email. Administrators
can manage internship postings and review incoming applications through a centralised dashboard. 
 
---
 
## Core Features
 
- Graduate registration and secure authentication.
- Internship listing management with deadlines.
- Application submission and tracking
- Automated email notifications on application status updates.
- Admin dashboard for reviewing and managing applications.
- Full CRUD operations on internship and applicant records. 

---

## Architecture
```
Client  
Jakarta Servlet / JSF 
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

