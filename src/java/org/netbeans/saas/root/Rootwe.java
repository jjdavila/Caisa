/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.netbeans.saas.root;

import java.io.IOException;
import java.io.InputStream;
import org.netbeans.saas.RestConnection;
import org.netbeans.saas.RestResponse;

/**
 * Rootwe Service
 *
 * @author NCN00973
 */
public class Rootwe {

    /**
     * Creates a new instance of Rootwe
     */
    public Rootwe() {
    }
    
    private static void sleep(long millis) {
        try {
            Thread.sleep(millis);
        } catch (Throwable th) {
        }
    }

    /**
     *
     * @param content
     * @return an instance of RestResponse
     */
    public static RestResponse edit(InputStream content) throws IOException {
        String[][] pathParams = new String[][]{};
        String[][] queryParams = new String[][]{};
        RestConnection conn = new RestConnection("http://localhost:52053/ServiciosCaisaPlanilla/webresources//cargos", pathParams, queryParams);
        sleep(1000);
        return conn.put(null, content);
    }
}
