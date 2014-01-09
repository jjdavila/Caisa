package com.caisa.planilla.entity.acciones;

import com.caisa.planilla.conexion.servicios.login;
import com.caisa.planilla.conexion.servicios.mantenimientoBanco;
import com.caisa.planilla.entity.TiposDeCuentaBanco;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.GenericType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.log4j.Logger;

/**
 *
 * @author NCN00973
 */
public class mantenimiento_bancos {

    public static Logger log = Logger.getLogger(mantenimiento_bancos.class);

//    public static void main (String []args){
//        mantenimiento_bancos kk = new mantenimiento_bancos();
//        kk.insertar_cuenta("sfsdf", "jdjdj", 1212);
//    }
    public static void main(String[] args) {

//        mantenimientoBanco client1 = new mantenimientoBanco();
//        ClientResponse response = client1.findAll_XML(ClientResponse.class);
//
//        GenericType<List<TiposDeCuentaBanco>> genericType = new GenericType<List<TiposDeCuentaBanco>>() {
//        };
//// Returns an ArrayList of Players from the web service
//        List<TiposDeCuentaBanco> data = new ArrayList<TiposDeCuentaBanco>();
//        data = (response.getEntity(genericType));
//
//        TiposDeCuentaBanco p = new TiposDeCuentaBanco();
//        p.setDescripcion("ahorro");
//        p.setCodCuenta("123456");
//        p.setNombreCuenta("miguel");
//        client1.create_JSON(p);


        mantenimiento_bancos man = new mantenimiento_bancos();
        man.actualizar_cuenta("6", "mi", "nombre", "8822211");
    }

    public boolean insertar_cuenta(String descripcion, String nombre, String cuneta) {
        if (descripcion.isEmpty() || nombre.isEmpty() || cuneta.isEmpty()) {
            return false;
        } else {
            mantenimientoBanco client1 = new mantenimientoBanco();
            ClientResponse response = client1.findAll_XML(ClientResponse.class);

            GenericType<List<TiposDeCuentaBanco>> genericType = new GenericType<List<TiposDeCuentaBanco>>() {
            };
// Returns an ArrayList of Players from the web service
            List<TiposDeCuentaBanco> data = new ArrayList<TiposDeCuentaBanco>();
            data = (response.getEntity(genericType));

            TiposDeCuentaBanco p = new TiposDeCuentaBanco();
            p.setDescripcion(descripcion);
            p.setCodCuenta(cuneta);
            p.setNombreCuenta(nombre);
            client1.create_JSON(p);
            return true;
        }
    }

    public int actualizar_cuenta(String id, String descripcion, String nombre, String cuenta) {
        int respuesta = 0;
        if (id.isEmpty()) {
            //falta el id
            respuesta = 0;
        } else {
            if (descripcion.isEmpty() && nombre.isEmpty() && cuenta.isEmpty()) {
                //no esta acualizando nada
                respuesta = 1;

            } else {




                mantenimientoBanco client1 = new mantenimientoBanco();

                String comprueba_exixtencia = client1.countREST2(cuenta);
                if (Integer.parseInt(comprueba_exixtencia) > 1) {
                    //ya existe esa cuenta
                    respuesta = 2;
                } else {
                    ClientResponse response1 = client1.find_XML(ClientResponse.class, id);
                    GenericType<TiposDeCuentaBanco> genericType = new GenericType<TiposDeCuentaBanco>() {
                    };
                    TiposDeCuentaBanco datos = response1.getEntity(genericType);
                    if (!descripcion.isEmpty()) {
                        datos.setDescripcion(descripcion);
                    }
                    if (!nombre.isEmpty()) {
                        datos.setNombreCuenta(nombre);
                    }
                    if (!cuenta.isEmpty()) {
                        datos.setCodCuenta(cuenta);
                    }

                    client1.edit_JSON(datos);
                    respuesta = 3;
                }
            }
        }
        return respuesta;
    }

    public Map buscar_cuenta(String codigo) {
        mantenimientoBanco client1 = new mantenimientoBanco();
        ClientResponse response1 = client1.find_cuenta(ClientResponse.class, codigo);
        GenericType<TiposDeCuentaBanco> genericType = new GenericType<TiposDeCuentaBanco>() {
        };
        TiposDeCuentaBanco datos = response1.getEntity(genericType);
        Map<String, String> lista_campos = new HashMap<String, String>();
        lista_campos.put("1", datos.getIdTiposCuenta().toString());
        lista_campos.put("2", datos.getDescripcion().toString());
        lista_campos.put("3", datos.getNombreCuenta().toString());
        lista_campos.put("4", datos.getCodCuenta().toString());

        return lista_campos;

    }
}
