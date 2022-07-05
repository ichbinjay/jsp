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

            String mail = request.getParameter("mail");

           try{
                Class.forName("com.mysql.cj.jdbc.Driver"); 
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exp13", "root" , "root" );
                Statement stmt=con.createStatement();
                String query="delete from student where mail='"+mail+"'";
                int i=stmt.executeUpdate(query); 
            } catch(Exception e) { out.println(e.toString()); } 
            
            out.print("\n deleted successfully");
        %>
    </body>
</html>
