<html>

<body style="background-color: lightyellow;">

    <%
            session.removeAttribute("email");
            session.invalidate();
            response.sendRedirect("Login.jsp");

        %>
        </%>
</body>

</html>
