<%@ page language="java" %>
<%
    // This ends the user's session
    session.invalidate();
    // Redirect to the login page
    response.sendRedirect("login.jsp");
%>