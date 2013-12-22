/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.caisa.planilla.conexion.servicios;

import static com.caisa.planilla.conexion.servicios.empleado.log;
import com.caisa.planilla.principal.propiedades;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.UniformInterfaceException;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.log4j.Logger;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 *
 * @author Jonathan
 */
public class cargos {
       public static Logger log = Logger.getLogger(login.class);
    private WebResource webResource;
    private Client client;
    private String BASE_URI = null;
    
    public cargos(){
        
        ClientConfig config = new DefaultClientConfig();
        BASE_URI = propiedades.getValor("url_servicios");
        client = Client.create(config);
        webResource = client.resource(BASE_URI).path("cargos/");
    }
    
    public HashMap ConsumeServicioCargos(String nombre) throws UniformInterfaceException {
              
        HashMap mMap = new HashMap(); 
        WebResource resource = webResource;
        String sexo = null;
        String idEstado = null;
        String numEmpleado = null;
        try {
// resource devuleve el json que viene del servicio
            resource = resource.path("nombre").path(java.text.MessageFormat.format("{0}", new Object[]{nombre}));
            //este if comprueba que la informacion que trae el servicio tenga el formato esperado
            if (resource.accept("application/json").get(String.class).length() > 2) {
                //  el "resultado" es lo que devolvio el servicio en forma de string
                String resultado = resource.accept("application/json").get(String.class);
                int tamanio = resultado.length();
                resultado = resultado.substring(1, tamanio - 1);
                JSONParser parser = new JSONParser();
                Object obj = parser.parse(resultado);
                JSONObject jsonObject = (JSONObject) obj;
               // String idcargo = (String) jsonObject.get("id");
                String idnombre = (String) jsonObject.get("nombre");
                String descripcion = (String) jsonObject.get("descripcion");
                String fechacreacion = (String) jsonObject.get("fechaCreacion").toString();
                 String usuarioidcreo = (String) jsonObject.get("usuarioidcreo").toString();
                 
                // mMap.put("id",idcargo);
                 mMap.put("nombre",idnombre);
                 mMap.put("descripcion",descripcion);
		 mMap.put("fechaCreacion", fechacreacion);
		 mMap.put("usuarioidcreo", usuarioidcreo);
                 

//                // loop array para presentar la descripcion del sexo
//                JSONArray msgsexo = (JSONArray) jsonObject.get("idSexo");
//                Iterator<String> iteratorsexo = msgsexo.iterator();
//                while (iteratorsexo.hasNext()) {
//                Object objsexo = parser.parse(iteratorsexo.next());
//                JSONObject jsonObjectsex = (JSONObject) objsexo;
//                sexo = (String) jsonObjectsex.get("descripcion");          
//                }

                log.info(mMap);

            } else {
                log.warn("el varor retornado por el servicio no tiene el formato esperado");
            }
        } catch (ParseException ex) {
            log.error("error en la interpretacion de json " + ex);
        }
        return mMap;
    }
    
}



