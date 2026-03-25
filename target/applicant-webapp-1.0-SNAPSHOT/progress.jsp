<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.apd.internship.model.Application" %>
<html>
<head>
    <title>Your Internship Applications</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #23272f;
            color: #fff;
        }
        .card {
            background-color: #2c313c;
            color: #fff;
            border-radius: 1rem;
            box-shadow: 0 2px 8px #0002;
        }
        .table {
            background-color: #23272f;
            color: #fff;
        }
        .table th, .table td {
            background-color: #2c313c;
            color: #fff;
            border-color: #444;
        }
        .header-bar {
            background: linear-gradient(90deg, #256eff, #5333ed);
            padding: 1rem 2rem;
            margin-bottom: 2rem;
            border-radius: 0.5rem;
        }
        .header-bar h1 {
            color: #fff;
            font-weight: 700;
            margin: 0;
        }
        .btn-back {
            background: #4954e0;
            color: #fff;
        }
        .status-badge {
            font-size: 0.95em;
            padding: 0.35em 0.8em;
            border-radius: 0.5em;
        }
        .status-pending { background-color: #f0ad4e; color: #23272f; }
        .status-accepted { background-color: #5cb85c; color: #fff; }
        .status-rejected { background-color: #d9534f; color: #fff; }
    </style>
</head>
<body>
    <div class="header-bar mb-4 d-flex justify-content-between align-items-center">
        <h1>Your Internship Applications</h1>
        <div class="header-btn-group">
            <a class="btn btn-outline-light" href="home.jsp">Home</a>
            <a class="btn btn-outline-light" href="contact.jsp">Contact</a>
            <a class="btn btn-light" href="dashboard.jsp">Dashboard</a>
            <a class="btn btn-light" href="logout.jsp">Logout</a>
        </div>
    </div>
    <div class="container mt-3">
        <div class="card p-4">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Internship</th>
                        <th>Status</th>
                        <th>Applied Date</th>
                    </tr>
                </thead>
                <tbody>
                <% 
                    List<Application> applications = (List<Application>)request.getAttribute("applications");
                    if (applications != null && !applications.isEmpty()) {
                        for (Application app : applications) { 
                %>
                    <tr>
                        <td><%= app.getInternshipTitle() %></td>
                        <td>
                            <span class="status-badge 
                                <%= "Pending".equalsIgnoreCase(app.getStatus()) ? "status-pending" : 
                                    "Accepted".equalsIgnoreCase(app.getStatus()) ? "status-accepted" : 
                                    "Rejected".equalsIgnoreCase(app.getStatus()) ? "status-rejected" : "" %>">
                                <%= app.getStatus() %>
                            </span>
                        </td>
                        <td><%= app.getAppliedDate() %></td>
                    </tr>
                <% 
                        }
                    } else { 
                %>
                    <tr>
                        <td colspan="3" class="text-center">You have not applied for any internships yet.</td>
                    </tr>
                <% } %>
                </tbody>
            </table>
            <a class="btn btn-back mt-3" href="dashboard.jsp">Back to Dashboard</a>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>