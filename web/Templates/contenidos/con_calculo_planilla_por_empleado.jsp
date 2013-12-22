<%@page import="com.caisa.planilla.calculos.calculos_regulares"%>
<%@page import="com.caisa.planilla.conexion.servicios.empleado"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.caisa.planilla.beans.empleados"%>
<!-- start: Content -->
<div id="content" class="span10">
    <div class="row-fluid">

        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-edit"></i>Mantenimiento de Empleado</h2>
                <div class="box-icon">

                    <a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>

                </div>
            </div>
            <div class="box-content">
                <!--Datos del Empleado-->
                <form class="form-horizontal">

                    <%
                        
                       
                        HashMap mMapEmp = new HashMap();
                        boolean resultado = true;
                        
                        String nombre ="" ;
                        String apellido ="";
                        String txtcedula ="" ;
                        String segurosocial ="";
                        //String estadocivil = mMap.get("idEstadoCivil").toString();
                        String nacionalidad="";
                        String tiposangre ="";
                        
                        HashMap mMapContra = new HashMap();
                        String salariobruto ="";
                        String salarioXhora ="";
                        
                      
                        if (request.getParameter("enviar") != null) {
                            
                         String cedula = request.getParameter("numerodecedula").toString();
                         String numEmpleado = request.getParameter("numEmpleado").toString();

                         empleado emple = new empleado();
                         mMapEmp = emple.ConsumeServicioEmpleado(cedula);
                         
                         calculos_regulares calculos = new calculos_regulares();
                         mMapContra = calculos.ConsumeServicioContrato(numEmpleado);
                         
                         
                                // mMap = emple.ConsumeServicioEmpleado("8-762-865");
                        // String numerodeempleado = mMap.get("idEmpleado").toString();
                       
                          
                                if (resultado){
                                    
                          nombre = mMapEmp.get("nombre").toString();
                          apellido = mMapEmp.get("apellido").toString();
                          txtcedula = mMapEmp.get("cedula").toString();
                          segurosocial = mMapEmp.get("segurosocial").toString();
                        //String estadocivil = mMap.get("idEstadoCivil").toString();
                          nacionalidad = mMapEmp.get("idNacionalidad").toString();
                          tiposangre = mMapEmp.get("tipodesangre").toString();
                          
                          salariobruto = mMapContra.get("salarioBruto").toString();
                          salarioXhora =mMapContra.get("salarioPorHora").toString();

                    %>
                        <script language="javascript" type="text/javascript">
                                                  
                            alert("encontrado");
                            //location.replace("login.jsp");  
                        </script>

                       <% }          
                        else{
                            %>
                            <script language="javascript" type="text/javascript">
                            alert("no encontro la busqueda");
                        </script>
                       <%
                        }
                        }
                       
            
                    %>
                    <div class="row-fluid">            
                        <div class="span6">
                            <h3>Busqueda de Empleado</h3>
                            <fieldset>

                                <div class="control-group">
                                    <label class="control-label" for="numerodecedula">Número de Cédula</label>
                                    <div class="controls">
                                        <input type="text" id="numerodecedula" 
                                               name="numerodecedula" value="<%=txtcedula%>">

                                    </div>
                                </div>
                                <div class="form-actions">
                                    <button type="submit" id="enviar" name="enviar"  value="Buscar" class="btn btn-primary">Buscar</button>
                                    <button type="reset" class="btn">Cancelar</button>
                                </div>
                                               
                                               <h3>Datos Generales</h3>

                                <div class="control-group">
                                    <label class="control-label" for="numEmpleado">Número de Empleado</label>
                                    <div class="controls">
                                        <input type="text"  id="numEmpleado" 
                                               name="numEmpleado">
                                        <!--<span class="help-inline">Something may have gone wrong</span>-->
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="nombreEmpleado">Nombre del Empleado</label>
                                    <div class="controls">
                                        <input type="text" id="nombreEmpleado" name="nombreEmpleado" value="<%=nombre%>">

                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="apellidoEmpleado">Apellido del Empleado</label>
                                    <div class="controls">
                                        <input type="text" readonly="readonly"
                                               id="apellidoEmpleado" name="apellidoEmpleado" value="<%=apellido%>">

                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label" for="numSS">Número de Seguro Social</label>
                                    <div class="controls">
                                        <input type="text" id="numSS" 
                                               name="numSS" value="<%=segurosocial%>">

                                    </div>
                                </div>

                           </fieldset>
                        </div>

                        <div class="span6">

                            <fieldset>    

                                <h3>Calculos de Deducciones</h3>


                                <div class="control-group">
                                    <label class="control-label" for="salario">Salario</label>
                                    <div class="controls">
                                        <input type="text" id="salario"
                                               value="<%=salariobruto%>">

                                    </div>
                                </div>
                                
                                <div class="control-group">
                                    <label class="control-label" for="salarioxhr">Salario por Hora</label>
                                    <div class="controls">
                                        <input type="text" id="salarioxhr" value="<%=salarioXhora%>">

                                    </div>
                                </div>
                                
                                 <div class="control-group">
                                    <label class="control-label" for="hr_trabajadas">Horas Trabajadas</label>
                                    <div class="controls">
                                        <input type="text" id="hr_trabajadas">

                                    </div>
                                </div>
                                
                                
                                  <h3>deducciones</h3>

                                <div class="control-group">
                                    <label class="control-label" for="desc_CSS">descuento del CSS</label>
                                    <div class="controls">
                                        <input type="text" id="desc_CSS">

                                    </div>
                                </div>

                                  <div class="control-group">
                                      <label class="control-label" for="desc_SE">descuento del SE</label>
                                      <div class="controls">
                                          <input type="text" id="desc_SE">

                                      </div>
                                  </div>
                                  
                                  <h3>descuentos otros</h3>
                                  
                                      <div class="control-group">
                                      <label class="control-label" for="desc_acre">descuentos de acreedores</label>
                                      <div class="controls">
                                          <input type="text" id="desc_acre">

                                      </div>
                                  </div>

                     
 
                            </fieldset>                                     


                        </div>
                    </div><!--/row--> 

                </form>

            </div> 

        </div>  
    </div>   

</div>    
<!-- end: Content -->