<%-- 
    Document   : Consultar
    Created on : 12-06-2018, 20:29:02
    Author     : espin
--%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/stile.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
        HttpSession misesion = (HttpSession) request.getSession();
            if(misesion.getAttribute("user") == null){
                response.sendRedirect("Error.jsp");
            }
            %>
          <fieldset id="Marco">
        <form action="MenuPrincipal.jsp">
            
            <div class="Titulo">
                         <h3><p>Consultar Requerimientos</p></h3> 
                          </div>
            <hr>
              <label id="subtitulo1">Gerencia </label>  
            <select>
                  <option value="">Seleccionar</option>
                  <option value="">Saab</option>
                  <option value="">Mercedes</option>
                  <option value="">Audi</option>
            </select>
                <br><br>
                  <label id="subtitulo1"> Depto.</label>
                     <select>
                  <option value="">Seleccionar</option>
                  <option value="">Saab</option>
                  <option value="">Mercedes</option>
                  <option value="">Audi</option>
            </select>
                      <br><br>
                       <label id="subtitulo1"> Asignar a</label>
                          <select>
                  <option value="">Seleccionar</option>
                  <option value="">Abastecimiento</option>
                  <option value="">TIC</option>
                  
            </select>
                                  
        <form>
            <input type="submit" class="btn btn-light" value="Buscar">
            
           
                       
        </form>

     
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Ena","root","");
                String query="SELECT * FROM requerimiento";
                Statement st=con.createStatement();
                ResultSet rs = st.executeQuery(query);
                out.println("<table border=\"1\">");
                out.println("<th>Gerencia</th>");
                out.println("<th>Departamento</th>");
                out.println("<th>Asignado a</th>");
                out.println("<th>Requerimiento</th>");
             
                
                
                while(rs.next()){
                out.println("<tr>");   
                out.println("<td>"+rs.getString("gerencia")+"</td>");   
                out.println("<td>"+rs.getString("departamento")+"</td>");   
                out.println("<td>"+rs.getString("asignar")+"</td>");   
                out.println("<td>"+rs.getString("encargado")+"</td>");                      
                out.println("<td>"+rs.getString("requerimiento")+"</td>");                     
               
                out.println("</tr>");   
                    
                    
                }
                
                out.println("</table>");
                
            }catch(SQLException ex){
                
            throw new SQLException(ex);   
            
            }
            
            %>
            <br><br>
            
             <a href="MenuPrincipal.jsp" class="boton1"> Volver al menú</a>
             
             <br>
                                 
                              
                              
            
    
                       
    </body>
</html>
