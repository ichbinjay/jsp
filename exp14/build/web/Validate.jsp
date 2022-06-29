<%-- 
    Document   : Validate
    Created on : Jun 29, 2022, 2:53:30 PM
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
        <%@page import="java.sql.*" %> 
        <% try{

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Class.forName("com.mysql.cj.jdbc.Driver"); 
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exp13", "root" , "root" );
        Statement stmt=con.createStatement();
        String query="select * from user where username='"+username+"' and password='"+password+"'";
        ResultSet rs=stmt.executeQuery(query);
        if(rs.next()){
            out.println("<h1>Welcome "+rs.getString("username")+"</h1>");
        }
        else{
            out.println("<h1>Invalid username or password</h1>");
        }
        }
        catch(Exception e){
            out.println(e);
        }
       
       %>
    </body>
</html>
