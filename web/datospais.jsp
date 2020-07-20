<%-- 
    Document   : datospais
    Created on : 22/06/2020, 09:30:01 AM
    Author     : Jorge Chavez
--%>
<%@page import="java.sql.*" %>
<%@page import="bd.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos del país</title>
         <%!
            String consulta;
            Connection cn;
            PreparedStatement pst;
            ResultSet rs;

        %>
    </head>
    <body>
        <table border="1" cellspacing="0" cellpadding="" align = "center">
            <thead>
                <th>ID</th>
                <th>Nombre</th>
                <th>Estado</th>
                
                
            </thead>

        <%
            try{
                ConectaBd bd = new ConectaBd();
                cn = bd.getConnection();
                consulta= " Select idpais, nombre, estado "
                        + " from pais "
                        + " order by nombre ";
                //out.print(consulta);
                pst = cn.prepareStatement(consulta);
                rs = pst.executeQuery();
                
                while (rs.next()) {    
                    %>
                    <tr>
                    <td><%out.print(rs.getString(1));%></td>
                        <td><%out.print(rs.getString(2));%></td>
                        <td><%out.print(rs.getString(3));%></td>
                                                
                    </tr>                    
                    <%
                    }
            }catch(Exception e){
                out.print("Error SQL");
            }
        
        %>
    </body>
</html>
