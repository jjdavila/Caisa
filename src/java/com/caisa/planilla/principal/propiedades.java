/*
 * Clase que sirve de enlace para las propiedades sol es necesario enviarle al metod
 * getValue un parametro el cual sera el nombre de la llave en el archivo de propiedades
 * by FDSystems.com
 * 2013/11/20
 */
package com.caisa.planilla.principal;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;
import org.apache.log4j.Logger;

/**
 *
 * @author Miguel Veces
 */
public class propiedades {
        public static Logger log = Logger.getLogger(propiedades.class);

	protected static Properties propiedades;

    public static String getValor(String llave) {
		if (propiedades == null) {
			propiedades = new Properties();
			try {
				log.debug("Path;" + new File("caisa_config.properties").getAbsolutePath());
				propiedades.load(new FileInputStream(new File("caisa_config.properties").getAbsolutePath()));
			} catch (FileNotFoundException e) {
				log.error("Error el archivo de configuracion (caisa_config.properties) no existe. ", e);
			} catch (IOException e) {
				log.error("Error al intentar leer el archivo de configuracion (caisa_config.properties) no existe.", e);
			}
		}

		return propiedades.getProperty(llave);
	}

}
