/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.caisa.planilla.conexion.servicios;

import com.caisa.planilla.principal.propiedades;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.UniformInterfaceException;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;
import org.apache.log4j.Logger;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 * 
 * @author NCN00973
 */
public class login {

    public static Logger log = Logger.getLogger(login.class);
    private WebResource webResource;
    private Client client;
    private String BASE_URI = null;

    public login() {
        ClientConfig config = new DefaultClientConfig();
        BASE_URI = propiedades.getValor("url_servicios");
        client = Client.create(config);
        webResource = client.resource(BASE_URI).path("usuarios/");

    }

    public boolean ConsumeServicio(String user, String pass) throws UniformInterfaceException {
       boolean valorRetornado= false;
        WebResource resource = webResource;
        try {

            resource = resource.path("login").path(java.text.MessageFormat.format("{0}", new Object[]{user})).path("pass").path(java.text.MessageFormat.format("{0}", new Object[]{pass}));
            //este if comprueba que la informacion que trae el servicio tenga el formato esperado
            if (resource.accept("application/json").get(String.class).length() > 2) {
                String resultado = resource.accept("application/json").get(String.class);
                int tamanio = resultado.length();
                resultado = resultado.substring(1, tamanio - 1);
                JSONParser parser = new JSONParser();
                Object obj = parser.parse(resultado);
                JSONObject jsonObject = (JSONObject) obj;
                String usuario = (String) jsonObject.get("login");
                log.info(usuario);
                String contrasenia = (String) jsonObject.get("pass");
                log.info(contrasenia);
                if(usuario.equals(user) && contrasenia.equals(pass)){
                    valorRetornado = true;
                }
                else{
                    valorRetornado = false;
                }
            } else {
                log.warn("el varor retornado por el servicio no tiene el formato esperado");
            }
        } catch (ParseException ex) {
            log.error("error en la interpretacion de json " + ex);
        }
        return valorRetornado;
    }

    public void close() {
        client.destroy();
    }
}
