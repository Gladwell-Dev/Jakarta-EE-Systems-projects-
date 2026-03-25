<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Contact Us</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #23272f;
            color: #fff;
        }
        .contact-card {
            background: #2c313c;
            padding: 2rem;
            border-radius: 1rem;
            margin-top: 2rem;
            box-shadow: 0 2px 8px #0002;
            color: #fff;
        }
        .contact-header {
            background: linear-gradient(90deg, #256eff, #5333ed);
            padding: 1rem 2rem;
            border-radius: 0.5rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .contact-info {
            font-size: 1.1rem;
            color: #e0eaff;
            text-align: right;
        }
        .form-label, .form-control {
            color: #fff;
        }
        .form-control, .form-select {
            background: #21232a;
            color: #fff;
            border: 1px solid #4954e0;
        }
        .btn-primary {
            background: #256eff;
            border: none;
        }
        .btn-submitted {
            background: #7fff00 !important; /* Chartreuse */
            border: none !important;
            color: #23272f !important;     /* dark text for contrast */
        }
        @media(max-width: 767px){
            .contact-header {
                flex-direction: column;
                align-items: flex-start;
            }
            .contact-info {
                margin-top: 0.5em;
                text-align: left;
            }
        }
    </style>
</head>
<body>
    <div class="contact-header mb-4">
        <h2>Contact Us</h2>
        <div class="contact-info">
            Call: <a href="tel:0614917785" style="color:#fff;text-decoration:underline;">0614917785</a>
            &nbsp;|&nbsp;
            Email: <a href="mailto:Internship@Tracker.ac.za" style="color:#fff;text-decoration:underline;">Internship@Tracker.ac.za</a>
        </div>
    </div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-7">
                <div class="contact-card">
                    <form id="contactForm">
                        <div class="mb-3">
                            <label for="name" class="form-label">Your Name</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Your Email</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="mb-3">
                            <label for="subject" class="form-label">Subject</label>
                            <input type="text" class="form-control" id="subject" name="subject" required>
                        </div>
                        <div class="mb-3">
                            <label for="message" class="form-label">Message</label>
                            <textarea class="form-control" id="message" name="message" rows="6" required></textarea>
                        </div>
                        <button type="submit" id="submitBtn" class="btn btn-primary w-100">Send Message</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script>
        document.getElementById('contactForm').addEventListener('submit', function(e) {
            e.preventDefault(); // Prevent form submission

            var btn = document.getElementById('submitBtn');
            btn.innerHTML = 'Submitted';
            btn.classList.remove('btn-primary');
            btn.classList.add('btn-submitted');
            btn.disabled = true;
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>