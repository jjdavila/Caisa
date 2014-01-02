/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.caisa.planilla.test;

import com.caisa.planilla.calculos.calculos_regulares;
import com.caisa.planilla.conexion.servicios.cargos;
import com.caisa.planilla.conexion.servicios.empleado;
import com.caisa.planilla.principal.propiedades;
import static com.caisa.planilla.test.Testpropiedades.log;
import javax.swing.JOptionPane;

/**
 *
 * @author Jonathan
 */
public class testEmpleado {
    
     public static void main (String [] args){
         
         empleado emple = new empleado ();
         emple.ConsumeServicioEmpleado("8-797-945");
         
//         log.info(emple);
         
//         cargos cargos = new cargos ();
//         cargos.ConsumeServicioCargos("jefe");
//         
//         log.info(cargos);
//         
//         calculos_regulares cal = new calculos_regulares();
//         cal.ConsumeServicioContrato("0003");
//         cal.ConsumeServicioEmpleado("8-797-945");
//         cal.ConsumeServicioHorasTrabajadas(0003);
//         
//       
         
         log.info(cal);
//         
         

        
    }
    
}


