<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<jsp:include page="User_header.jsp" />
<!DOCTYPE html>
<html lang="en">
    <%
        String db_url = "jdbc:mysql://localhost/DMart";
        String db_user = "root";
        String db_pass = "root";
        try {
            
            HttpSession session = request.getSession(true);
            session.setAttribute("email", email);
            String s = request.getSession("email");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(db_url, db_user, db_pass);
            Statement st = con.createStatement();
            String pid = request.getParameter("pid");
            String sql = "select * from products where pid='" + pid + "'";
            System.out.println(sql);
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
    %>
    