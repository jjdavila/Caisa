package com.caisa.planilla.conexion;
import java.sql.*;

public class conexion {
    
public String bd = "caisa";
public String login = "root";
public String password = "";
public String url = "jdbc:mysql://localhost/"+bd;
public Statement conectar() {
Connection conn = null;
Statement st=null;
try {
//Class.forName("org.gjt.mm.mysql.Driver");
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection(url, login, password);
if (conn != null)
{
 System.out.println("Yeah, hemos conectado con  "+url+" ... Ok");
 st=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

//conn.close();
}
}
catch(SQLException ex) {
System.out.println("Rayos!!! Hubo un problema al conectar con la base "+url);
}
catch(ClassNotFoundException ex) {
System.out.println(ex);
}
   return st;
}
}