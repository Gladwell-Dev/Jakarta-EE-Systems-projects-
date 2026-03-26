<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Internship Tracker</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #23272f;
            color: #fff;
        }
        .header-bar {
            background: linear-gradient(90deg, #256eff 60%, #5333ed 100%);
            padding: 1.5rem 2rem 1rem 2rem;
            margin-bottom: 0;
            border-radius: 1rem 1rem 0 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .header-bar h1 {
            color: #fff;
            font-weight: 900;
            font-size: 2.5rem;
            margin: 0;
            letter-spacing: 2px;
        }
        .header-btn-group .btn {
            margin-left: 0.5em;
            font-weight: 500;
            font-size: 1.1rem;
            border-radius: 8px;
        }
        .header-btn-group .btn-light {
            color: #23272f;
            font-weight: 700;
            background: #fff;
            border: none;
        }
        .header-btn-group .btn-outline-light {
            color: #fff;
            border-color: #256eff;
            background: transparent;
        }
        .sidebar {
            background-color: #23272f;
            padding: 2rem 1rem;
            border-radius: 1rem;
            min-height: 400px;
            margin-top: 0;
            margin-bottom: 2rem;
            box-shadow: 0 2px 8px #0002;
        }
        .sidebar h5 {
            color: #fff;
            font-weight: 700;
            margin-bottom: 1.5rem;
        }
        .form-label, .sidebar label {
            color: #fff;
            font-weight: 500;
        }
        .sidebar input, .sidebar select {
            background: #242637;
            color: #fff;
            border: 1px solid #4954e0;
        }
        .sidebar input[type="checkbox"] {
            accent-color: #256eff;
        }
        .section-title {
            color: #256eff;
            font-weight: 700;
            font-size: 2rem;
            margin: 2rem 0 1rem 0;
            letter-spacing: 1px;
        }
        .card {
            background-color: #1f212e;
            color: #fff;
            margin-bottom: 1.5rem;
            border-radius: 1rem;
            box-shadow: 0 2px 16px #0003;
            border: none;
        }
        .card-title {
            color: #256eff;
            font-size: 1.5rem;
            font-weight: 700;
            margin-bottom: 0.5rem;
        }
        .card-text {
            color: #e1e6f6;
            font-size: 1.05rem;
            margin-bottom: 0.75rem;
        }
        .internship-logo-placeholder {
            background: #23272f;
            color: #bbb;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 80px;
            width: 80px;
            border-radius: 0.75rem;
            font-size: 1em;
            font-weight: 700;
            margin-right: 1.5rem;
        }
        .badge {
            background-color: #4954e0;
            font-size: 1em;
            margin-right: 0.25em;
            font-weight: 600;
            border-radius: 0.5rem;
            padding: 0.35em 0.9em;
        }
        .deadline-badge {
            background-color: #256eff;
        }
        .btn-apply {
            background: #256eff;
            color: #fff;
            font-weight: 700;
            border: none;
            border-radius: 6px;
            padding: 0.5em 1.2em;
            margin-top: 0.6em;
        }
        .btn-apply:hover {
            background: #195ad3;
        }
    </style>
</head>
<body>
    <div class="header-bar">
        <h1>Internship Tracker</h1>
        <div class="header-btn-group">
            <a class="btn btn-outline-light" href="home.jsp">Home</a>
            <a class="btn btn-outline-light" href="contact.jsp">Contact</a>
            <a class="btn btn-outline-light" href="progress.jsp">Application Progress</a>
            <a class="btn btn-light" href="logout.jsp">Logout</a>
        </div>
    </div>
    <div class="container-fluid" style="background: #23272f;">
        <div class="row">
            <div class="col-md-3">
                <div class="sidebar">
                    <h5>Search filters</h5>
                    <div class="mb-3">
                        <label for="keyword" class="form-label">Keyword</label>
                        <input type="text" class="form-control" id="keyword" placeholder="Keyword">
                    </div>
                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="premium">
                        <label class="form-check-label" for="premium">Only show top internships</label>
                    </div>
                    <div class="mb-3">
                        <label for="group" class="form-label">Occupation group</label>
                        <select class="form-select" id="group">
                            <option>Any</option>
                            <option>Engineering</option>
                            <option>Business</option>
                            <option>IT</option>
                            <option>Science</option>
                            <option>Law</option>
                            <option>Agriculture</option>
                            <option>Finance</option>
                            <option>Education</option>
                            <option>Health Sciences</option>
                            <option>Arts</option>
                            <option>Hospitality</option>
                            <option>Marketing</option>
                            <option>Transport</option>
                            <option>Social Sciences</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="level" class="form-label">Education Level</label>
                        <select class="form-select" id="level">
                            <option>Any</option>
                            <option>Matric</option>
                            <option>Diploma</option>
                            <option>Higher Certificate</option>
                            <option>Bachelor</option>
                            <option>Master</option>
                            <option>PhD</option>
                            <option>Postdoc</option>
                            <option>Short Course</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="country" class="form-label">Country</label>
                        <select class="form-select" id="country">
                            <option>Any</option>
                            <option>South Africa</option>
                            <option>Germany</option>
                            <option>United States</option>
                            <option>United Kingdom</option>
                            <option>Canada</option>
                            <option>India</option>
                            <option>China</option>
                            <option>Australia</option>
                            <option>Brazil</option>
                            <option>France</option>
                            <option>Japan</option>
                            <option>Netherlands</option>
                            <option>Kenya</option>
                            <option>Nigeria</option>
                            <option>Egypt</option>
                            <option>Mexico</option>
                            <option>Russia</option>
                            <option>Turkey</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-md-9 pt-3">
                <div class="section-title">Engineering Internships</div>
                <div class="card mb-3">
                    <div class="card-body d-flex">
                        <div class="internship-logo-placeholder">Logo</div>
                        <div style="flex:1;">
                            <h4 class="card-title">Mechanical Engineering Intern</h4>
                            <p class="card-text">Hands-on experience with automotive manufacturing processes.</p>
                            <div class="mb-2">
                                <span class="badge deadline-badge">Deadline: 2025-10-31</span>
                                <span class="badge">Germany</span>
                                <span class="badge">Bachelor</span>
                            </div>
                            <a href="apply.jsp?internshipId=101" class="btn btn-apply">Apply</a>
                        </div>
                    </div>
                </div>
                <div class="card mb-3">
                    <div class="card-body d-flex">
                        <div class="internship-logo-placeholder">Logo</div>
                        <div style="flex:1;">
                            <h4 class="card-title">Civil Engineering Intern</h4>
                            <p class="card-text">Work on construction projects and sustainability solutions.</p>
                            <div class="mb-2">
                                <span class="badge deadline-badge">Deadline: 2025-11-10</span>
                                <span class="badge">United States</span>
                                <span class="badge">Diploma</span>
                            </div>
                            <a href="apply.jsp?internshipId=102" class="btn btn-apply">Apply</a>
                        </div>
                    </div>
                </div>
                <div class="section-title">Business Internships</div>
                <div class="card mb-3">
                    <div class="card-body d-flex">
                        <div class="internship-logo-placeholder">Logo</div>
                        <div style="flex:1;">
                            <h4 class="card-title">Business Analyst Intern</h4>
                            <p class="card-text">Support strategic decisions in a multinational company.</p>
                            <div class="mb-2">
                                <span class="badge deadline-badge">Deadline: 2025-11-03</span>
                                <span class="badge">United Kingdom</span>
                                <span class="badge">Higher Certificate</span>
                            </div>
                            <a href="apply.jsp?internshipId=201" class="btn btn-apply">Apply</a>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>