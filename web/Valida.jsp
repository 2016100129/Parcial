<%-- 
    Document   : Valida
    Created on : 25-may-2020, 9:56:03
    Author     : Jorge Chavez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Valida</title>
        <%!
            String s_usuario="";
            String s_clave="";
           
        %>
    </head>
    <body>
        <h1>Valida</h1>
        <%
            s_usuario=request.getParameter("f_usuario");
            s_clave=request.getParameter("f_clave");
            
            if(s_usuario.equals("lp2")&&s_clave.equals("123")){
            response.sendRedirect("menu.jsp");}
            else
            {
            response.sendRedirect("Login.jsp");
            }
        %>
    </body>
</html>
