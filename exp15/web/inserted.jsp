<jsp:include page="index.html" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %> 
        <%
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            String country = request.getParameter("country");
            String gender = request.getParameter("gender");
            String[] hobbies = request.getParameterValues("hobb");
            String hobby = "[";
            for(String hobbi : hobbies){
                hobby += hobbi+",";
            }hobby += "]";
            String mail = request.getParameter("mail");
            String address = request.getParameter("address");
            String state = request.getParameter("state");
        %>
        <% 
        try{
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exp13", "root" , "root" );
            Statement stmt=con.createStatement();
            String query="insert into student values('"+name+"','"+password+"','"+country+"','"+gender+"','"+hobby+"','"+mail+"','"+address+"','"+state+"')";
            int i=stmt.executeUpdate(query); 

            out.print("\n inserted successfully\n");
            out.println("<h1>Registration Form</h1>");
            out.println("Name: "+name+"<br>");
            out.println("Country: "+country+"<br>");
            out.println("Gender :"+gender+"<br>");
            out.println("hobby :"+hobby+"<br>");
            out.println("mail :"+mail+"<br>");
            out.println("address :"+address+"<br>");
            out.println("state :"+state+"<br>");

        } catch(Exception e) { out.println("email already exists!<br>Register with another email"); out.println(e);
    } 
            
       
        %>
    </body>
</html>
