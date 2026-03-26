<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Internship Tracker - Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(90deg, #23272f 60%, #256eff 100%);
            min-height: 100vh;
            color: #fff;
            font-family: 'Segoe UI', Arial, sans-serif;
        }
        .container {
            width: 350px;
            margin: 80px auto;
            background: #23272f;
            border-radius: 14px;
            box-shadow: 0 8px 32px #256eff44;
            padding: 36px 30px 26px 30px;
        }
        .header {
            text-align: center;
            margin-bottom: 24px;
        }
        .header h1 {
            color: #256eff;
            font-size: 2em;
            margin: 0;
            letter-spacing: 1px;
            font-weight: 900;
        }
        label {
            font-weight: 600;
            color: #256eff;
        }
        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px 12px;
            margin: 8px 0 20px 0;
            border: 1.5px solid #256eff;
            border-radius: 7px;
            box-sizing: border-box;
            font-size: 1em;
            background: #1f212e;
            color: #fff;
        }
        input[type="email"]:focus, input[type="password"]:focus {
            border-color: #5333ed;
            outline: none;
            box-shadow: 0 0 0 0.15rem #256eff44;
        }
        input[type="submit"] {
            background: linear-gradient(90deg, #256eff 60%, #5333ed 100%);
            color: #fff;
            font-weight: bold;
            border: none;
            border-radius: 7px;
            padding: 13px 0;
            width: 100%;
            cursor: pointer;
            font-size: 1.07em;
            transition: background 0.2s;
            box-shadow: 0 2px 8px #256eff33;
        }
        input[type="submit"]:hover {
            background: linear-gradient(90deg, #195ad3 60%, #5333ed 100%);
        }
        .link {
            display: block;
            text-align: center;
            margin-top: 18px;
            color: #256eff;
            text-decoration: none;
            font-weight: 500;
            font-size: 1em;
            transition: color 0.2s;
        }
        .link:hover {
            color: #fff;
            text-decoration: underline;
        }
        .error {
            color: #ff8787;
            text-align: center;
            margin-bottom: 12px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Internship Tracker</h1>
        </div>
        <form action="auth" method="post">
            <input type="hidden" name="action" value="login"/>
            <label>Email</label>
            <input type="email" name="email" required/>
            <label>Password</label>
            <input type="password" name="password" required/>
            <input type="submit" value="Login"/>
        </form>
        <a class="link" href="signup.jsp">Don't have an account? Sign Up</a>
        <% if (request.getAttribute("error") != null) { %>
            <div class="error"><%= request.getAttribute("error") %></div>
        <% } %>
    </div>
</body>
</html>