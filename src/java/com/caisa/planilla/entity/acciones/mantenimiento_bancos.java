package com.caisa.planilla.entity.acciones;
import com.caisa.planilla.conexion.servicios.mantenimientoBanco;
import com.caisa.planilla.entity.TiposDeCuentaBanco;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.GenericType;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author NCN00973
 */
public class mantenimiento_bancos {
    
//    public static void main (String []args){
//        mantenimiento_bancos kk = new mantenimiento_bancos();
//        kk.insertar_cuenta("sfsdf", "jdjdj", 1212);
//    }
    
    
       public static void main(String[] args) {

        mantenimientoBanco client1 = new mantenimientoBanco();
        ClientResponse response = client1.findAll_XML(ClientResponse.class);

        GenericType<List<TiposDeCuentaBanco>> genericType = new GenericType<List<TiposDeCuentaBanco>>() {
        };
// Returns an ArrayList of Players from the web service
        List<TiposDeCuentaBanco> data = new ArrayList<TiposDeCuentaBanco>();
        data = (response.getEntity(genericType));

        TiposDeCuentaBanco p = new TiposDeCuentaBanco();
        p.setDescripcion("ahorro");
        p.setCodCuenta("123456");
        p.setNombreCuenta("miguel");
        client1.create_JSON(p); 
    }
    public boolean insertar_cuenta(String descripcion, String nombre, String cuneta){
        
        if(descripcion.isEmpty() || nombre.isEmpty() || cuneta.isEmpty()){
        return false;
        }
        else{
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
//     public boolean actualizar_cuenta(String descripcion, String nombre, int cuneta){
//        mantenimientoBanco client1 = new mantenimientoBanco();
//        ClientResponse response = client1.find_JSON(ClientResponse.class, "3");
//
//        GenericType<List<TiposDeCuentaBanco>> genericType = new GenericType<List<TiposDeCuentaBanco>>() {
//        };
//// Returns an ArrayList of Players from the web service
//        List<TiposDeCuentaBanco> data = new ArrayList<TiposDeCuentaBanco>();
//        data = (response.getEntity(genericType));
//
//        TiposDeCuentaBanco p = new TiposDeCuentaBanco();
//        p.setDescripcion(descripcion);
//        p.setCodCuenta(cuneta);
//        p.setNombreCuenta(nombre);
//        client1.create_JSON(p);
//        return true;
//    }
//    
}
