			
<%@page import="java.util.HashMap"%>
<%@page import="com.caisa.planilla.conexion.servicios.cargos"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<!-- start: Content -->

<div id="content" class="span10">
    <!-- inicio menu de los iconos  -->
    <div class="row-fluid">	
        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-folder-close-alt"></i>Mantenimiento de cargos</h2>
            </div>
            <div class="box-content">

                <a href="form_cargos.jsp" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>creacion de cagos</p>
                    <!--<span class="notification blue">7</span>-->
                </a>
              
             						
                <div class="clearfix"></div>
            </div>	
        </div><!--/span-->
    </div> <!--fin de iconos-->
    <div class="row-fluid">
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