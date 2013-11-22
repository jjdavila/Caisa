			
<!-- start: Content -->

<div id="content" class="span10">
    <!-- inicio menu de los iconos Acumulados -->
    <div class="row-fluid">	
        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-folder-close-alt"></i>descuentos - ingresos</h2>
            </div>
            <div class="box-content">

                <a href="form_descuento_ingreso_empleados.jsp" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Descuento - ingreso de empleados</p>
                    <!--<span class="notification blue">7</span>-->
                </a>
                <a href="form_mantenimiento_descuento_ingresos.jsp" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Maestro Ingresos - Descuentos</p>

                </a>
                <a href="form_informe_control_de_descuento.jsp" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Control de Descuentos</p>
                </a>
                <a href=".jsp" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Consultas de Ingresos - descuentos por empleados</p>
                </a>
                <a href=".jsp" class="quick-button span2">
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
            <h2><i class="icon-edit"></i>Descuento de Ingresos de Empleados</h2>
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
                                        <label class="control-label" for="numderegistro">Número de Registro</label>
                                        <div class="controls">
                                            <input type="text" id="numderegistro">
                                            <!--<span class="help-inline">Something may have gone wrong</span>-->
                                        </div>
                                    </div>
                                    
                                      <div class="control-group">
                                        <label class="control-label" for="numdecliente">Número de Cliente</label>
                                        <div class="controls">
                                            <input type="text" id="numdecliente">
                                            <span class="help-inline">Para cuentas cobrar - descuentos</span>
                                        </div>
                                    </div>
                                    
                                    <div class="control-group">
                                        <label class="control-label" for="numdecta">Número de cuenta</label>
                                        <div class="controls">
                                            <input type="text" id="numdecta">

                                        </div>
                                    </div>
                                    
                                    
                                    <div class="control-group">
                                        <label class="control-label" for="numEmpleado">Número de Empleado</label>
                                        <div class="controls">
                                            <input type="text" id="numEmpleado">
                                            <!--<span class="help-inline">Something may have gone wrong</span>-->
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="nombreEmpleado">Nombre del Empleado</label>
                                        <div class="controls">
                                            <input type="text" id="nombreEmpleado">

                                        </div>
                                    </div>
                                    
                                    
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
                                        <label class="control-label" for="montopormes">Monto por Mes</label>
                                        <div class="controls">
                                            <input type="text" id="montopormes">
                                            <span class="help-inline">Solo para descuentos</span>

                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="montoporperiodo">Monto por Periodo</label>
                                        <div class="controls">
                                            <input type="text" id="montoporperiodo">

                                        </div>
                                    </div>
                                    
                                         <div class="control-group">
                                        <label class="control-label" for="txtmontourgente">Monto Urgente</label>
                                        <div class="controls">
                                            <input type="text" id="txtmontourgente">

                                        </div>
                                    </div>

                                
                                 
                            </div>
                            <div class="span6">
                                <fieldset>	

                                    <h3>...</h3>
                                    
                                    
                                      <div class="control-group">
                                            <label class="control-label" for="estadoactual">Estado actual</label>
                                            <div class="controls">
                                                <select id="estadoactual" data-rel="chosen">
                                                    <option>Ingreso</option>
                                                    <option>Descuento</option>
                                                                                                         
                                                </select>
                                            </div>
                                        </div>
                                    
                                      <div class="control-group">
                                            <label class="control-label" for="tipo">Tipo</label>
                                            <div class="controls">
                                                <select id="tipo" data-rel="chosen">
                                                    <option>Ingreso</option>
                                                    <option>Descuento</option>
                                                                                                         
                                                </select>
                                            </div>
                                        </div>
                                    
                                      <div class="control-group">
                                            <label class="control-label" for="prioridad">Prioridad</label>
                                            <div class="controls">
                                                <select id="prioridad" data-rel="chosen">
                                                    <option>Ingreso</option>
                                                    <option>Descuento</option>
                                                                                                         
                                                </select>
                                            </div>
                                        </div>
                                    
                                        <div class="control-group">
                                            <label class="control-label" for="frecuencia">Frecuencia</label>
                                            <div class="controls">
                                                <select id="frecuencia" data-rel="chosen">
                                                    <option>Ingreso</option>
                                                    <option>Descuento</option>
                                                                                                         
                                                </select>
                                            </div>
                                        </div>

                                    <div class="control-group">
                                        <label class="control-label" for="afectadiciembre">Afecta diciembre</label>
                                        <div class="controls">
                                            <input type="text" id="afectadiciembre">

                                        </div>
                                    </div>
                                

                                    <div class="control-group">
                                        <label class="control-label" for="txtReferencias">Referencias</label>
                                        <div class="controls">
                                            <input type="text" id="txtReferencias">

                                        </div>
                                    </div>

                                </fieldset>										

                              
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