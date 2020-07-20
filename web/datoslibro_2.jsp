<%-- 
    Document   : datoslibro
    Created on : 22/06/2020, 09:30:22 AM
    Author     : Jorge Chavez
--%>
<%@page import="java.sql.*" %>
<%@page import="bd.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos Libro</title>
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
                <th>Número</th>
                <th>Autor</th>
                <th>Título</th>
                <th>Cantidad</th>
                <th>Año</th>
                <th>Editorial</th>
                <th>País</th>
                <th>Precio</th>
                <th>Estado</th>
                
            </thead>

        <%
            try{
                ConectaBd bd = new ConectaBd();
                cn = bd.getConnection();
                consulta= " Select l.idlibro, a.nombre, l.titulo, l.cantidad, l.año, e.nombre, p.nombre, l.precio, l.estado  "
                        + " from libro l, autor a, editorial e,pais p    "
                        + " where l.idautor=a.idautor and  "
                        + " l.ideditorial=e.ideditorial and"
                        + " l.idpais=p.idpais order by e.nombre";
                //out.print(consulta);
                pst = cn.prepareStatement(consulta);
                rs = pst.executeQuery();
                
                while (rs.next()) {    
                    %>
                    <tr>
                    <td><%out.print(rs.getString(1));%></td>
                        <td><%out.print(rs.getString(2));%></td>
                        <td><%out.print(rs.getString(3));%></td>
                        <td><%out.print(rs.getString(4));%></td>
                        <td><%out.print(rs.getString(5));%></td>
                        <td><%out.print(rs.getString(6));%></td>
                        <td><%out.print(rs.getString(7));%></td>
                        <td><%out.print(rs.getString(8));%></td>
                        <td><%out.print(rs.getString(9));%></td>
                        
                                                
                    </tr>                    
                    <%
                    }
            }catch(Exception e){
                out.print("Error SQL");
            }
        
        %>
    </body>
</html>
