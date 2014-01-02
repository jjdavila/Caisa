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
                        
                       
                        HashMap mMap = new HashMap();
                        boolean resultado = true;
                        
                        String nombre ="" ;
                        String apellido ="";
                        String txtcedula ="" ;
                        String segurosocial ="";
                        //String estadocivil = mMap.get("idEstadoCivil").toString();
                        String nacionalidad="";
                        String tiposangre ="";
                      
                        if (request.getParameter("enviar") != null) {
                            
                         String cedula = request.getParameter("numerodecedula").toString();

                         empleado emple = new empleado();
                         mMap = emple.ConsumeServicioEmpleado(cedula);
                         
                                // mMap = emple.ConsumeServicioEmpleado("8-762-865");
                        // String numerodeempleado = mMap.get("idEmpleado").toString();
                       
                          
                                if (resultado){
                                    
                          nombre = mMap.get("nombre").toString();
                          apellido = mMap.get("apellido").toString();
                          txtcedula = mMap.get("cedula").toString();
                          segurosocial = mMap.get("segurosocial").toString();
                        //String estadocivil = mMap.get("idEstadoCivil").toString();
                          nacionalidad = mMap.get("idNacionalidad").toString();
                          tiposangre = mMap.get("tipodesangre").toString();
                    
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
                                        <input type="text" readonly="readonly" id="numEmpleado" 
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
                                        <input type="text" id="apellidoEmpleado" name="apellidoEmpleado" value="<%=apellido%>">

                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label" for="numSS">Número de Seguro Social</label>
                                    <div class="controls">
                                        <input type="text" id="numSS" 
                                               name="numSS" value="<%=segurosocial%>">

                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="estadocivil">Estado Cicil</label>
                                    <div class="controls">
                                        <select id="estadocivil" name="estadocivil" data-rel="chosen">
                                            <option>Casado</option>
                                            <option>Soltero</option>
                                            <option>Unido</option>  
                                            <option>Divorciado</option>                                                         
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="nacionalidad">Nacionalidad</label>
                                    <div class="controls">
                                        <input type="text" id="nacionalidad" name="nacionalidad"
                                               value="<%=nacionalidad%>">

                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="fechadenacimiento">Fecha de Nacimiento</label>
                                    <div class="controls">
                                        <input type="text" class="input-xlarge datepicker" 
                                               id="fechadenacimiento" value="">
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label" for="tipodesangre">Tipo de Sangre</label>
                                    <div class="controls">
                                        <input type="text" id="tipodesangre" name="tipodesangre" 
                                               value="<%=tiposangre%>">

                                    </div>
                                </div>
                            </fieldset>
                        </div>

                        <div class="span6">

                            <fieldset>    

                                <h3>Datos Laborales</h3>

                                <div class="control-group">
                                    <label class="control-label" for="selectError0">Estado Actual</label>
                                    <div class="controls">
                                        <select id="selectError0" data-rel="chosen">
                                            <option>A</option>
                                            <option>B</option>
                                            <option>C</option>                                              
                                        </select>
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label" for="horabase">Hora Base por Periodo</label>
                                    <div class="controls">
                                        <input type="text" id="horabase">

                                    </div>
                                </div>



                                <div class="control-group">
                                    <label class="control-label" for="seccion">Sección</label>
                                    <div class="controls">
                                        <input type="text" id="seccion">

                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="claveRenta">Clave de la Renta</label>
                                    <div class="controls">
                                        <input type="text" id="claveRenta">

                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="formadepago">Forma de Pago</label>
                                    <div class="controls">
                                        <input type="text" id="formadepago">

                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="frecuenciadepago">Frecuencia de Pago</label>
                                    <div class="controls">
                                        <input type="text" id="frecuenciadepago">

                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="salarioporperiodo">Salario por Periodo</label>
                                    <div class="controls">
                                        <input type="text" id="salarioporperiodo">

                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label" for="cargo">Cargo</label>
                                    <div class="controls">
                                        <input type="text" id="cargo">

                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label" for="vencecontrato">Vence Contrato</label>
                                    <div class="controls">
                                        <input type="text" class="input-xlarge datepicker" id="vencecontrato" value="">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="vencecarnetdesalud">Vence Carnet de Salud</label>
                                    <div class="controls">
                                        <input type="text" class="input-xlarge datepicker" id="vencecarnetdesalud" value="">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="pagoenefectivo">Pago en efectivo</label>
                                    <div class="controls">
                                        <select id="pagoenefectivo" data-rel="chosen">
                                            <option>SI</option>
                                            <option>NO</option>

                                        </select>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="sindicato">Sindicato</label>
                                    <div class="controls">
                                        <select id="sindicato" data-rel="chosen">
                                            <option>SI</option>
                                            <option>NO</option>                                                     
                                        </select>
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label" for="fechadeingreso">Fecha de Ingreso</label>
                                    <div class="controls">
                                        <input type="text" class="input-xlarge datepicker" id="fechadeingreso" value="">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="proximasvacaciones">Próximas Vacaiones</label>
                                    <div class="controls">
                                        <input type="text" class="input-xlarge datepicker" id="proximasvacaciones" value="">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="proximasvacaciones">Próximas Vacaiones</label>
                                    <div class="controls">
                                        <input type="text" class="input-xlarge datepicker" id="proximasvacaciones" value="">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="isr">Impuesto Sobre la Renta</label>
                                    <div class="controls">
                                        <select id="isr" data-rel="chosen">
                                            <option>SI</option>
                                            <option>NO</option>

                                        </select>
                                    </div>
                                </div>
                            </fieldset>                                     


                        </div>
                    </div><!--/row--> 

                    <%


                    %>
                </form>

            </div> 

        </div>  
    </div>   

</div>    
<!-- end: Content -->