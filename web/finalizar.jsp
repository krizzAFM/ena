<%-- 
    Document   : finalizar
    Created on : 20-06-2018, 23:19:49
    Author     : Krizz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%  
            HttpSession sc = (HttpSession) request.getSession();
            if(sc .getAttribute("user") == null){
                response.sendRedirect("Error.jsp");
            }
            sc .invalidate();
        %>
        <h1> Ha cerrado sesion correctamente </h1>
        <a href="index.jsp"> Volver a Inicio </a>
    </body>
</html>
