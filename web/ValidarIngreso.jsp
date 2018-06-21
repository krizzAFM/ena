<%-- 
    Document   : ValidarIngreso
    Created on : 12-06-2018, 20:33:26
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
            
          
    
            String m=(String)request.getAttribute("msg");
                if(request.getAttribute("msg")!=null){
                    out.print(request.getAttribute("msg"));
                }
                   
           
           try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Ena","root","");
                    
           String gerencia = request.getParameter("gerencia") ;
           String departamento = request.getParameter("departamento");      
           String asignar = request.getParameter("asignar");      
           String encargado = request.getParameter("encargado");
           String requerimiento = request.getParameter("requerimiento");
               String consulta = "insert into requerimiento (gerencia, departamento, asignar, encargado, requerimiento, estado) "+" values(?,?,?,?,?,1)";
               PreparedStatement smt = con.prepareStatement(consulta);
              
               smt.setString(1,gerencia);
               smt.setString(2,departamento);
               smt.setString(3,asignar);
               smt.setString(4,encargado);
               smt.setString(5,requerimiento);
               int resultado = smt.executeUpdate();
               if(resultado>0){
                   out.print("Requerimiento Ingresado");
               }else{
                   out.print("Oops, algo sucedio...");
               }
               
           }catch(Exception ex){
               out.print("El requerimiento ya se encuentra en solucion ");
           }
           
        
            %>
    </body>
</html>
