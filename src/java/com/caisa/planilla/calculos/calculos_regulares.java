/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.caisa.planilla.calculos;

import static com.caisa.planilla.conexion.servicios.empleado.log;
import com.caisa.planilla.conexion.servicios.login;
import com.caisa.planilla.principal.propiedades;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.UniformInterfaceException;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;
import java.util.HashMap;
import org.apache.log4j.Logger;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 *
 * @author Jonathan
 */
public class calculos_regulares {
    
        public static Logger log = Logger.getLogger(login.class);
    private WebResource webResource;
    private Client client;
    private String BASE_URI = null;
    
     public calculos_regulares() {
        ClientConfig config = new DefaultClientConfig();
        BASE_URI = propiedades.getValor("url_servicios");
        client = Client.create(config);
        webResource = client.resource(BASE_URI).path("contrato/");
    }
    
      public HashMap ConsumeServicioEmpleado(String cedula) throws UniformInterfaceException {
       HashMap mMap = new HashMap(); 
        WebResource resource = webResource;
        String sexo = null;
        String idEstado = null;
        String numEmpleado = null;
        try {
// resource devuleve el json que viene del servicio
            resource = resource.path("cedula").path(java.text.MessageFormat.format("{0}", new Object[]{cedula}));
            //este if comprueba que la informacion que trae el servicio tenga el formato esperado
            if (resource.accept("application/json").get(String.class).length() > 2) {
                //  el "resultado" es lo que devolvio el servicio en forma de string
                String resultado = resource.accept("application/json").get(String.class);
                int tamanio = resultado.length();
                resultado = resultado.substring(1, tamanio - 1);
                JSONParser parser = new JSONParser();
                Object obj = parser.parse(resultado);
                JSONObject jsonObject = (JSONObject) obj;
                String numerodeempleado = (String) jsonObject.get("idEmpleado");
                String idcedula = (String) jsonObject.get("cedula");
                String nombre = (String) jsonObject.get("nombre");
                String apellido = (String) jsonObject.get("apellido");
                String numcss = (String) jsonObject.get("segurosocial").toString();      
                 String numCta = (String) jsonObject.get("nroCuenta").toString();
                
                 mMap.put("idEmpleado",numerodeempleado);
                 mMap.put("nombre",nombre);
                 mMap.put("apellido",apellido);
                  mMap.put("cedula",idcedula);                
		 mMap.put("segurosocial", numcss);
                  mMap.put("nroCuenta", numCta);

                                
//                // loop array para presentar la descripcion del numero de empleado
//                JSONArray numEmple = (JSONArray) jsonObject.get("empleadosPK");
//                Iterator<String> iteratornumEmple = numEmple.iterator();
//                while (iteratornumEmple.hasNext()) {
//                Object objsexo = parser.parse(iteratornumEmple.next());
//                JSONObject jsonObjecnumEmple = (JSONObject) objsexo;
//                numEmpleado = (String) jsonObject.get("empleadosPK");         
//                }
      
                    // loop array para presentar la descripcion del estado
//                JSONArray estado = (JSONArray) jsonObject.get("idEstado");
//                Iterator<String> iteratorestado = estado.iterator();
//                while (iteratorestado.hasNext()) {
//                Object objidestado = parser.parse(iteratorestado.next());
//                JSONObject jsonObjectidestado = (JSONObject) objidestado;
//                idEstado = (String) jsonObject.get("idEstado");
//                }
                
//                // loop array para presentar la descripcion del sexo
//                JSONArray msgsexo = (JSONArray) jsonObject.get("idSexo");
//                Iterator<String> iteratorsexo = msgsexo.iterator();
//                while (iteratorsexo.hasNext()) {
//                Object objsexo = parser.parse(iteratorsexo.next());
//                JSONObject jsonObjectsex = (JSONObject) objsexo;
//                sexo = (String) jsonObjectsex.get("descripcion");          
//                }
         
//                String fechanacimiento = (String) jsonObject.get("fechanacimiento").toString();
//                String carnetsalud = (String) jsonObject.get("carnetsalud");
//                String fechavencimientocarnet = (String) jsonObject.get("fechavencimientocarnet").toString();
//                String sindicato = (String) jsonObject.get("sindicato");
//                String nroCuenta = (String) jsonObject.get("nroCuenta");
//                String tipoCuenta = (String) jsonObject.get("tipoCuenta");
//                String banco = (String) jsonObject.get("banco");
                log.info(mMap);

            } else {
                log.warn("el varor retornado por el servicio no tiene el formato esperado");
            }
        } catch (ParseException ex) {
            log.error("error en la interpretacion de json " + ex);
        }
        return mMap;
 
    }
      
      public HashMap ConsumeServicioContrato(String numeroEmpleado) throws UniformInterfaceException{
           HashMap mMapContrato = new HashMap(); 
           
          WebResource resource = webResource;
  
        try {
// resource devuleve el json que viene del servicio
            resource = resource.path("numeroEmpleado").path(java.text.MessageFormat.format("{0}", new Object[]{numeroEmpleado}));
            //este if comprueba que la informacion que trae el servicio tenga el formato esperado
            if (resource.accept("application/json").get(String.class).length() > 2) {
                //  el "resultado" es lo que devolvio el servicio en forma de string
                String resultado = resource.accept("application/json").get(String.class);
                int tamanio = resultado.length();
                resultado = resultado.substring(1, tamanio - 1);
                JSONParser parser = new JSONParser();
                Object obj = parser.parse(resultado);
                JSONObject jsonObject = (JSONObject) obj;
                String numerodeempleado = (String) jsonObject.get("numeroEmpleado");
                String salario = (String) jsonObject.get("salarioBruto").toString();
                String salario_X_hora = (String) jsonObject.get("salarioPorHora").toString();
                
                 mMapContrato.put("numeroEmpleado",numerodeempleado);
                mMapContrato.put("salarioBruto",salario);
                 mMapContrato.put("salarioPorHora",salario_X_hora);
                 
                    log.info(mMapContrato);
            
            }
             else {
                log.warn("el varor retornado por el servicio no tiene el formato esperado");
            }
                
            } catch (ParseException exa) {
            log.error("error en la interpretacion de json " + exa);
        }
         
         return mMapContrato;
      }
      
       public void close() {
        client.destroy();
    }

    
}
