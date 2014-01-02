/*
 * Clase para probar que el archivo de proiedades funciona correctamente by FDSystems.com
 * 2013/11/30
 */
package com.caisa.planilla.test;

import com.caisa.planilla.conexion.servicios.login;
import static com.caisa.planilla.conexion.servicios.login.log;
import com.caisa.planilla.principal.propiedades;
import org.apache.log4j.Logger;

/**
 *
 * @author Miguel Veces
 */
public class Testpropiedades {
    public static Logger log = Logger.getLogger(Testpropiedades.class);
    
    public static void main (String [] args){
        String llave = propiedades.getValor("url_servicios");
        log.debug("test del archivo de propiedades "+ llave);
        
        String bd = propiedades.getValor("bd");
        log.debug("test del nombre de la base de datos: "+ bd);
        
    }
}
