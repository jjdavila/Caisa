<%@page import="com.caisa.planilla.conexion.servicios.login"%>
<!DOCTYPE html>
<html> 
    <head>
        <title>CAISA - Flat & Responsive Bootstrap Admin Template</title>
        <meta charset="utf-8">	
        <meta name="viewport" content="width=device-width, initial-scale=1.0">  
        <link rel="stylesheet" type="text/css" href="css/caisa/estilos_pos_app_login.css"/>
        <meta name="description" content="">
        <meta name="author" content="PAO Systems by Miguel Veces">
        <meta name="keyword" content="Sistema de Planillas CAISA S.A. ">

    </head>

    <body>
        <div id="cuerpo_login">
            <section>     
                <form id="login">
                    <h1>Ingresar al Sistema</h1>
                    <fieldset id="inputs">
                        <input id="username" name="username" type="text" placeholder="Username" required>   
                        <input id="password" name="password" type="password" placeholder="Password" required>
                    </fieldset>
                    <fieldset id="actions">
                        <input type="submit" id="enviar" name="enviar" value="Entrar">
                        <a href="">Olvidaste tu contraseña?</a>
                    </fieldset>


                    <%

                        boolean resultad_login=true;
                        if (request.getParameter("enviar") != null) {
                            String username = request.getParameter("username").toString().trim();
                            String password = request.getParameter("password").toString().trim();
                            login iniciar = new login();
                            resultad_login = iniciar.ConsumeServicio(username, password);
                        
                        if (resultad_login){%>
                        <script language="javascript" type="text/javascript">
                                                  
                            alert("Bienvenido al sistema...");
                            location.replace("login.jsp");  
                        </script>
                       <% }          
                        else{
                            %>
                            <script language="javascript" type="text/javascript">
                            alert("Las credenciales utilizadas no son las correctas");
                        </script>
                       <%
                        }
                        }
                    %>
                </form>
            </section>
        </div>

        <script type="text/javascript" src="js/caisa/index.js"></script>         
    </body>
</html>