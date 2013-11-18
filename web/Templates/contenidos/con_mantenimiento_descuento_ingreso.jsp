			
<!-- start: Content -->

<div id="content" class="span10">
    <!-- inicio menu de los iconos Acumulados -->
    <div class="row-fluid">	
        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-folder-close-alt"></i>descuentos - ingresos</h2>
            </div>
            <div class="box-content">

                <a href="formAcumuladosBasicos.jsp" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Descuento - ingreso de empleados</p>
                    <!--<span class="notification blue">7</span>-->
                </a>
                <a href="form_mantenimiento_descuento_ingresos.jsp" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Maestro Ingresos - Descuentos</p>

                </a>
                <a href="formAcumuladosVacaciones.jsp" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Control de Descuentos</p>
                </a>
                <a href="formAcumuladosXIIMes.jsp" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Consultas de Ingresos - descuentos por empleados</p>
                </a>
                <a href="formAcumuladosXperiodos.jsp" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Consulta x mes de descuento -ingreso de empleados</p>
                </a>						
                <div class="clearfix"></div>
            </div>	
        </div><!--/span-->
    </div> <!--fin de iconos-->
    <div class="row-fluid">
    <div class="box span12">
        <div class="box-header">
            <h2><i class="icon-edit"></i>Descuento - Ingresos de Empleados</h2>
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
</div>    

<!-- end: Content -->