<%-- 
    Document   : index
    Created on : 08-06-2018, 12:30:48
    Author     : espin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/stile.css" rel="stylesheet" type="text/css"/>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
        <fieldset id="Marco">
        <form action=" ValidarIndex.jsp">
            
            <div class="Titulo">
                         <h3><p>Autentificación</p></h3> 
                          </div>
            <hr>
            <div class="Registro">
                <label id="subtitulo1"> Usuario </label> <input type="text"    name="txtuser" class="Entrada1" placeholder="Usuario">
                         <br><br>
                              <label id="subtitulo2">Password </label><input type="password" name="txtpass" class="Entrada2" placeholder="password">
                                  <br><br>
            </div> 
            
                <div class="box">
                        <input type="checkbox" name="vehicle1" value="Bike">Recordar 
                </div>
                   <br><br>
       
                <div class="form-actions">
        
                        <button type="submit" class="btn btn-primary btn-lg">Ingresar</button>
                        <br>
                                  
          <% 
            String ms = (String)request.getAttribute("msg");
            if(ms != null)
                     out.println(ms);
                              ms = null;
        %>
                  </div>
                    <br><br>
                </form>
               </fieldset>
       
            
       
    </body>
</html>
