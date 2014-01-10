			
<%@page import="com.caisa.planilla.conexion.servicios.cargos"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.caisa.planilla.entity.acciones.mantenimiento_bancos"%>
<!-- start: Content -->

<div id="content" class="span10">
    <!-- inicio menu de los iconos  -->
    <div class="row-fluid">	
        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-folder-close-alt"></i>Mantenimiento de datos Generales</h2>
            </div>
            <div class="box-content">

                <a id="editUsuario" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Usuarios</p>
                    <!--<span class="notification blue">7</span>-->
                </a>
                <a id="editBanco" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Cuentas de Bancos</p>

                </a>
                <a href="form_informe_control_de_descuento.jsp" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Otros</p>
                </a>
                <a id="editDepartamento" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Departamento</p>
                </a>
                <a id="editCargos" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Cargos</p>
                </a>						
                <div class="clearfix"></div>
            </div>	
        </div><!--/span-->
    </div> <!--fin de iconos-->
    <div class="row-fluid" id="div_usuario">
        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-edit"></i>Mantenimiento de datos de Usuarios del Sistema</h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>                
                </div>
            </div>
            <div class="box-content">
                <div class="step-content">
                    <div class="step-pane active" id="step1">
                        <!--Datos del Empleado-->
                        <form class="form-horizontal">


                            <div class="row-fluid">            
                                <div class="span6">
                                    <h3>Datos</h3>
                                    <fieldset>


                                        <div class="control-group">
                                            <label class="control-label" for="coddedescuento">Cod. Ingreso / Descuento</label>
                                            <div class="controls">
                                                <select id="coddedescuento" data-rel="chosen">
                                                    <option>Ingreso</option>
                                                    <option>Descuento</option>

                                                </select>
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="txtnombreIgreso_descuento">Nombre de Ingresos / Descuentos</label>
                                            <div class="controls">
                                                <input type="text" id="txtnombreIgreso_descuento">
                                                <span class="help-inline">Solo para descuentos</span>

                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="txttipo">Tipo o Clase</label>
                                            <div class="controls">
                                                <select id="txttipo" data-rel="chosen">
                                                    <option>Ingreso</option>
                                                    <option>Descuento</option>

                                                </select>
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="txtnumdecta">Numero de Cuenta</label>
                                            <div class="controls">
                                                <input type="text" id="txtnumdecta">

                                            </div>
                                        </div>



                                </div>

                            </div>
                        </form>

                    </div>

                </div>
            </div> 
        </div> 

    </div>
    <!-- Comienza el div de cuentas de bancos -->
    <div class="row-fluid" id="div_banco">
        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-edit"></i>Mantenimiento de datos de cuentas bancarias</h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>                
                </div>
            </div>
            <div class="box-content">
                <div class="step-content">
                    <div class="step-pane active" id="step1">
                        <!--Datos del Empleado-->
                        <form class="form-horizontal" id="isertar">
                            <%
                                String nombres = null;
                                String descripciones = null;
                                String cuentas = null;
                            %>

                            <div class="row-fluid">            
                                <div class="span6">
                                    <h3>Datos de cuentas Bancarias</h3>
                                    <fieldset> 
                                        <div id="divActualizar">
                                            <div class="control-group">
                                                <label class="control-label" for="txtnumcuenta">Numero de la Cuenta</label>
                                                <div class="controls">
                                                    <input type="text" id="txtid">                                            
                                                </div>
                                                <div class="form-actions">
                                                    <button type="submit" id="Buscar" name="Buscar"  value="Buscar" class="btn btn-primary">Buscar</button>
                                                    <button type="submit" id="enviar" name="enviar"  value="Enviar" class="btn">Enviar</button>
                                                </div>                                            
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="txtncuenta">Nombre de la Cuenta</label>
                                            <div class="controls">
                                                <input type="text" id="txtncuenta" name="txtncuenta"  value="<%=nombres%>">                                            
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="txtdcuenta">Descripcion de la Cuenta</label>
                                            <div class="controls">
                                                <input type="text" id="txtdcuenta" name="txtdcuenta" value ="<%=descripciones%>">                                            
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="txtnumcuenta">Numero de la Cuenta</label>
                                            <div class="controls">
                                                <input type="text" id="txtnumcuenta" name="txtnumcuenta" vaue="<%=cuentas%>" >                                            
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <input type="submit" id="insert" name="insert"  value="insert" class="btn btn-primary">
                                            <input type="submit" id="actualizar" name="actualizar"  value="actualizar" class="btn" >
                                            <input type="submit" id="cancelar" name="cancelar"  value="cancelar" class="btn">
                                        </div>
                                    </fieldset>


                                </div>

                            </div>
                            <%

                                int resultado = 0;
                                Map<String, String> cuentas_retornadas = new HashMap<String, String>();
                                if (request.getParameter("Buscar") != null) {

                                    String codigo_cuenta = request.getParameter("txtid").toString();

                                    mantenimiento_bancos buscando = new mantenimiento_bancos();
                                    cuentas_retornadas = buscando.buscar_cuenta(codigo_cuenta);
                                    Iterator it = cuentas_retornadas.entrySet().iterator();

                                    while (it.hasNext()) {
                                        Map.Entry e = (Map.Entry) it.next();
                                        System.out.println(e.getKey() + " " + e.getValue());
                                    }
                                }

                                if (request.getParameter("enviar") != null) {
                                    String descripcion = request.getParameter("txtdcuenta").toString().trim();
                                    String nombre = request.getParameter("txtncuenta").toString().trim();
                                    String cuenta = request.getParameter("txtnumcuenta").toString().trim();
                                    String id = request.getParameter("txtid");
                                    mantenimiento_bancos update = new mantenimiento_bancos();
                                    resultado = update.actualizar_cuenta(id, descripcion, nombre, cuenta);
                                }

                                if (request.getParameter("insert") != null) {
                                    String descripcion = request.getParameter("txtdcuenta").toString().trim();
                                    String nombre = request.getParameter("txtncuenta").toString().trim();
                                    String cuenta = request.getParameter("txtnumcuenta").toString().trim();
                                    mantenimiento_bancos insertar = new mantenimiento_bancos();
                                    boolean resultados = insertar.insertar_cuenta(descripcion, nombre, cuenta);

                                    if (resultados) {
                            %>
                            <script language="javascript" type="text/javascript">
                                alert("Se insertaron los datos correctamente");
                            </script>
                            <%                            } else {
                            %>
                            <script language="javascript" type="text/javascript">
                                alert("Ocurrio un problema en la base de datos ");
                            </script>
                            <%                                }
                                }
                            %>
                        </form>

                    </div>

                </div>
            </div> 
        </div> 

    </div>


    <!-- Comienza el div de departamento -->
    <div class="row-fluid" id="div_departamento">
        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-edit"></i>Mantenimiento de Departamentos</h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>                
                </div>
            </div>
            <div class="box-content">
                <div class="step-content">
                    <div class="step-pane active" id="step1">
                        <!--Datos del Empleado-->
                        <form class="form-horizontal">


                            <div class="row-fluid">            
                                <div class="span6">
                                    <h3>Datos</h3>
                                    <fieldset>

                                        <div class="control-group">
                                            <label class="control-label" for="txtDepartamentos">Departamento</label>
                                            <div class="controls">
                                                <input type="text" id="txtDepartamentos">
                                                <span class="help-inline"></span>

                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="txtnombredto">Nombre</label>
                                            <div class="controls">
                                                <input type="text" id="txtnombredto">
                                                <span class="help-inline"></span>

                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="txtxcoddepeachtree">Codigo de Peachtree</label>
                                            <div class="controls">
                                                <input type="text" id="txtxcoddepeachtree">
                                                <span class="help-inline"></span>

                                            </div>
                                        </div>

                                </div>

                            </div>
                        </form>

                    </div>


                </div>

            </div>
        </div> 
    </div>
     <!-- Comienza el div de cargos -->
    <div class="row-fluid" id="div_cargo">
    <div class="box span12">
        <div class="box-header">
            <h2><i class="icon-edit"></i>Mantenimiento de Cargos</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>                
            </div>
        </div>
        <div class="box-content">
            <div class="step-content">
                <div class="step-pane active" id="step1">
                    <!--Datos del Empleado-->
                    <form class="form-horizontal">
                                    <%
                           
                            
                            cargos car = new cargos();
                             HashMap mMap = new HashMap(); 
                                    
                             mMap = car.ConsumeServicioCargos("jefe");
                             //String txtcargo = mMap.get("id").toString();
                             String  txtnombrecargo = mMap.get("nombre").toString();                           
                             String  txtcargo = mMap.get("descripcion").toString();
                             
                            String txtcargo2 = mMap.get("fechaCreacion").toString();
                          String txtnombrecargo2 = mMap.get("usuarioidcreo").toString();
                            
         
                        %>


                        <div class="row-fluid">            
                            <div class="span6">
                                <h3>Datos</h3>
                                                               
                                                              
                                    <div class="control-group">
                                        <label class="control-label" for="txtcargo">codigo del cargo</label>
                                        <div class="controls">
                                            <input type="text" id="txtcargo" name="txtcargo"
                                                   value="<%=txtcargo%>">
                                            <span class="help-inline"></span>

                                        </div>
                                    </div>
                                     
                                        <div class="control-group">
                                        <label class="control-label" for="txtnombrecargo">Nombre del cargo</label>
                                        <div class="controls">
                                            <input type="text" id="txtnombrecargo" name="txtnombrecargo" value="<%=txtnombrecargo%>">
                                            <span class="help-inline"></span>

                                        </div>
                                    </div> 
                                            
                                            
                                            <div class="form-actions">
                                                <button type="submit" id="enviar" name="enviar"  value="Buscar" class="btn btn-primary">Buscar</button>
                                                <button type="reset" class="btn">Cancelar</button>
                                            </div>
                                         <!--<div class="control-group">
                                            <label class="control-label" for="txttipo">Tipo o Clase</label>
                                            <div class="controls">
                                                <select id="txttipo" data-rel="chosen">
                                                    <option>Ingreso</option>
                                                    <option>Descuento</option>
                                                                                                         
                                                </select>
                                            </div>-->
                                        </div>
        
                                 
                            </div>
 
                        </form>
                        
                        </div>
                        

                </div>

            </div>
        </div> 
    </div> 
</div>    

<!-- end: Content -->