<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String internshipId = request.getParameter("internshipId");
%>
<html>
<head>
    <title>Internship Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #23272f;
            color: #fff;
        }
        .form-section {
            margin-bottom: 2rem;
            border-bottom: 1px solid #444;
            padding-bottom: 2rem;
        }
        label {
            font-weight: 500;
        }
        .section-title {
            font-size: 1.4rem;
            font-weight: 700;
            margin-bottom: 1rem;
            color: #fff;
        }
        .form-label.required:after {
            content: " *";
            color: #ff8787;
            font-weight: bold;
        }
        .btn-primary {
            background: linear-gradient(90deg, #256eff, #5333ed);
            border: none;
        }
        input, select, textarea {
            background-color: #23272f !important;
            color: #fff !important;
            border: 1px solid #444 !important;
        }
        input[type="file"] {
            background-color: #23272f !important;
            color: #bbb !important;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <form method="post" action="apply" enctype="multipart/form-data">
        <input type="hidden" name="internshipId" value="<%= internshipId %>"/>

        <div class="form-section">
            <div class="section-title">Basic Information</div>
            <div class="row mb-3">
                <div class="col-md-2">
                    <label class="form-label required">Prefix</label>
                    <select name="prefix" class="form-select" required>
                        <option value="">Select</option>
                        <option>Mr</option>
                        <option>Ms</option>
                        <option>Mrs</option>
                        <option>Dr</option>
                        <option>Prof</option>
                    </select>
                </div>
                <div class="col-md-5">
                    <label class="form-label required">First Name</label>
                    <input type="text" name="firstName" class="form-control" required>
                </div>
                <div class="col-md-5">
                    <label class="form-label required">Last Name</label>
                    <input type="text" name="lastName" class="form-control" required>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-md-6">
                    <label class="form-label required">Email</label>
                    <input type="email" name="email" class="form-control" required>
                </div>
                <div class="col-md-6">
                    <label class="form-label required">Phone</label>
                    <input type="text" name="phone" class="form-control" required>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-md-6">
                    <label class="form-label required">Nationality</label>
                    <select name="nationality" class="form-select" required>
                        <option value="">Please select</option>
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
                <div class="col-md-6">
                    <label class="form-label required">Country of Residence</label>
                    <select name="residence" class="form-select" required>
                        <option value="">Please select</option>
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

        <div class="form-section">
            <div class="section-title">Education</div>
            <label class="form-label required">Level of Study</label>
            <div class="row mb-3">
                <div class="col-md-3">
                    <input type="text" name="qualificationLevel" class="form-control" placeholder="Level of Qualification" required>
                </div>
                <div class="col-md-3">
                    <input type="text" name="course" class="form-control" placeholder="Course(s)" required>
                </div>
                <div class="col-md-3">
                    <input type="text" name="university" class="form-control" placeholder="University" required>
                </div>
                <div class="col-md-3">
                    <input type="text" name="dates" class="form-control" placeholder="Dates" required>
                </div>
            </div>
        </div>

        <div class="form-section">
            <div class="section-title">Curriculum Vitae</div>
            <label class="form-label required">A CV of no more than 2 pages</label>
            <input type="file" name="cv" class="form-control" accept=".pdf,.doc,.docx,.txt" required>
            <small class="form-text text-muted">Accepted file types: doc, pdf, txt, docx. Max. file size: 512 MB.</small>
        </div>
        <div class="form-section">
            <div class="section-title">Academic Transcript</div>
            <label class="form-label required">Upload Academic Transcript</label>
            <input type="file" name="transcript" class="form-control" accept=".pdf,.doc,.docx,.jpg,.png" required>
            <small class="form-text text-muted">Accepted file types: pdf, doc, docx, jpg, png. Max. file size: 512 MB.</small>
        </div>
        <div class="form-section">
            <div class="section-title">Cover Letter</div>
            <label class="form-label required">Upload Cover Letter</label>
            <input type="file" name="coverLetterFile" class="form-control" accept=".pdf,.doc,.docx,.txt" required>
            <small class="form-text text-muted">Accepted file types: doc, pdf, txt, docx. Max. file size: 512 MB.</small>
        </div>
        <div class="form-section">
            <div class="section-title">ID Document</div>
            <label class="form-label required">Upload ID Document</label>
            <input type="file" name="idDocument" class="form-control" accept=".pdf,.jpg,.png" required>
            <small class="form-text text-muted">Accepted file types: pdf, jpg, png. Max. file size: 512 MB.</small>
        </div>
        <button type="submit" class="btn btn-primary mb-5">Submit Application</button>
    </form>
</div>
</body>
</html>