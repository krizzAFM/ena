<%-- 
    Document   : MenuPrincipal
    Created on : 12-06-2018, 19:49:20
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
          <%
        HttpSession misesion = (HttpSession) request.getSession();
            if(misesion.getAttribute("user") == null){
                response.sendRedirect("Error.jsp");
            }
            %>
            
        <fieldset id="Marco">
              <div class="Titulo">
                         <h3><p>Menú Principal</p></h3> 
                          </div>
            <hr>
             <br>
            <a href="IngresarR.jsp" class="boton1"> Ingresar Requerimientos</a>
              <br><br>
                  <br>
                    <a href="Consultar.jsp" class="boton2">Consultar Requerimientos</a>
                      <br><br>
                         <br>
                            <a href="Cerrar.jsp" class="boton3">Cerrar Requerimientos</a>
                             <br><br>
                                 <br>
                                 
                               <%out.println("<p><a href=\"finalizar.jsp\">Cerrar Sesión</a></p>");%>
                              
                                  <br><br>
            
            
        </fieldset>

    </body>
</html>
