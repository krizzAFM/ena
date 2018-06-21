<%-- 
    Document   : IngresarR
    Created on : 14-06-2018, 14:05:07
    Author     : abdon_g501
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
        <form action="ValidarIngreso.jsp">
            
            <div class="Titulo">
                         <h3><p>Ingresar Requerimiento</p></h3> 
                          </div>
            <hr>
            <label id="subtitulo1">Gerencia </label>  
            <select>
                  <option value="">Seleccionar</option>
                  <option value="">juan</option>
                  <option value="">Marcia</option>
                  <option value="">pablo</option>
            </select>
                <br><br>
                  <label id="subtitulo1"> Depto.</label>
                     <select>
                  <option value="">Seleccionar</option>
                  <option value="">pepo</option>
                  <option value="">juancho</option>
                  <option value="">agustina</option>
            </select>
                      <br><br>
                       <label id="subtitulo1"> Asignar a</label>
                          <select>
                  <option value="">Seleccionar</option>
                  <option value="">Abastecimiento</option>
                  <option value="">TIC</option>
                  
            </select>
                           <br><br>
                            <label id="subtitulo1">Encargado </label>
                               <select>
                  <option value="">Seleccionar</option>
                  <option value="">pedro</option>
                  <option value="">piter</option>
                  <option value="">Martina</option>
            </select>
                                <br><br>
                          <label id="subtitulo1">Requerimiento</label>
                          <textarea rows="4" cols="50"placeholder="Ingrese descripcion del requerimiento"></textarea>
                              <br><br>
                              <button type="submit" class="btn btn-primary btn-lg">Guardar</button>
                              
                              <a href="MenuPrincipal.jsp" class="boton1"> Volver al menú</a>
        </form>
    </body>
</html>
