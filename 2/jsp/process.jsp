<%-- 
    Document   : process
    Created on : 8 Apr, 2018, 6:40:29 PM
    Author     : ameya
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            
           
           String uname=request.getParameter("uname");
           String password=request.getParameter("password");
           
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","newuser","password");
           PreparedStatement ps=con.prepareStatement("select * from student_info");

           
           ResultSet rs=ps.executeQuery();
           boolean flag=false;
           while(rs.next())
           {
               String uid=rs.getString("studentEmail");
               String paswd=rs.getString("studentPassword");
               if(uid.equals(uname) && paswd.equals(password))
               {
                   flag=true;	
                   
                   break;
               }
           }

     
           if(flag==true)
           {
               
               session.setAttribute("uname", uname);
                   response.sendRedirect("home.jsp");
                   
                   
                   
            response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
               
           }
           else
           {
               out.print("Log in unsuccessful");
               response.sendRedirect("index.html");
           }
           %>
           <br><br><div>
               <a href="logout.jsp">Log Out!</a>
           </div>
           
    </body>
</html>