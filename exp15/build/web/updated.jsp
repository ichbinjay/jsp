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
                String query = "update student set address='"+request.getParameter("address")+"' where mail='"+mail+"'";
                int i=stmt.executeUpdate(query);
                if(i==1){
                    query = "select * from student where mail='"+mail+"'";
                    ResultSet rs = stmt.executeQuery(query);
                    out.println("<table border='1'>");
                    out.println("<tr>");
                    out.println("<th>Name</th>");
                    out.println("<th>country</th>");
                    out.println("<th>Gender</th>");
                    out.println("<th>Hobbies</th>");
                    out.println("<th>mail</th>");
                    out.println("<th>address</th>");
                    out.println("<th>state</th>");
    
                    while(rs.next()){
                        out.println("<tr>");
                        out.println("<td>"+rs.getString("name")+"</td>");
                        out.println("<td>"+rs.getString("country")+"</td>");
                        out.println("<td>"+rs.getString("gender")+"</td>");
                        out.println("<td>"+rs.getString("Hobbies")+"</td>");
                        out.println("<td>"+rs.getString("mail")+"</td>");
                        out.println("<td>"+rs.getString("address")+"</td>");
                        out.println("<td>"+rs.getString("state")+"</td>");
                        out.println("</tr>");
                    }
                }
            } catch(Exception e) { out.println(e.toString()); } 
            
            out.print("\n deleted successfully");
        %>
    </body>
</html>
