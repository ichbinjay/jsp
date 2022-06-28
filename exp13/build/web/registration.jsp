<%-- 
    Document   : registration
    Created on : Jun 28, 2022, 10:58:11 AM
    Author     : vignan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            String country = request.getParameter("country");
            String gender = request.getParameter("gender");
            String hobbies = request.getParameter("hobbies");
            String mail = request.getParameter("mail");
            String address = request.getParameter("address");
            String state = request.getParameter("state");

            out.println("<h1>Registration Form</h1>");
            out.println(name);
            out.println(password);
            out.println(country);
            out.println(gender);
            out.println(hobbies);
            out.println(mail);
            out.println(address);
            out.println(state);

        %>
        <%@page import="java.sql.*" %> 
        <% try{
    Class.forName("com.mysql.cj.jdbc.Driver"); 
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exp13", "root" , "root" );
    Statement stmt=con.createStatement();
    String query="insert into student values('"+name+"','"+password+"','"+country+"','"+gender+"','"+hobbies+"','"+mail+"','"+address+"','"+state+"')";
    int i=stmt.executeUpdate(query);
    } catch(Exception e) { out.println(e.toString()); } 
        out.print("inserted");
        %>
    </body>
</html>
