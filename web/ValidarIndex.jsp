<%-- 
    Document   : ValidarIndex
    Created on : 12-06-2018, 19:43:09
    Author     : espin
--%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          try{
            ResultSet rs;
            String user = request.getParameter("txtuser");
            String pass = request.getParameter("txtpass");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Ena","root","");
                String query = "SELECT name_usuario, password_usuario FROM user WHERE name_usuario= '"+user+"'AND password_usuario = '"+pass+"'";
                Statement st = conn.createStatement();
                rs = st.executeQuery(query);
        
        
                if(user.equals("") || pass.equals("")){
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    request.setAttribute("msg","<div class\"alert alert-danger\" role=\"alert\"> Falta ingresar usuario contraseña</div>");
                    rd.forward(request, response);
                }

                if (!rs.next()){
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    request.setAttribute("msg","Nombre de usuario o contraseña incorrectos");
                    rd.forward(request, response);
                }
            HttpSession sc = (HttpSession) request.getSession();
                   sc.setAttribute("user",user);
                         sc.setAttribute("pass",pass);
                            response.sendRedirect("MenuPrincipal.jsp");
            }catch(SQLException e){
                 e.toString();
            }catch(NullPointerException e){
               System.out.println("Problemas "+ e.getMessage());
            }
        
        
        
        
        
        
        %>
    </body>
</html>
