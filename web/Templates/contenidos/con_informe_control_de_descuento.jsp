<!-- start: Content -->
<div id="content" class="span10">

    <!-- inicio menu de los iconos catalogos -->
    <div class="row-fluid">	
        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-folder-close-alt"></i>Descuento / Ingresos x Empleado</h2>
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
                <a href="#" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Consultas de Ingresos - descuentos por empleados</p>
                </a>
                <a href="#" class="quick-button span2">
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
                <h2><i class="icon-edit"></i>Control de Descuento x Empleados</h2>
                <div class="box-icon">

                    <a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>

                </div>
            </div>
            <div class="box-content">
                <!--Datos del Empleado-->
                <form class="form-horizontal">
                    <div class="row-fluid">            
                        <div class="span6">
                            <h3>Este informa brinda al usuario un listado de todos los descuentos x empleados.</h3>
                            <fieldset>  

                                <div class="control-group">
                                    <label class="control-label" for="cmbtipodesalida">Tipo de salidad</label>
                                    <div class="controls">
                                        <select id="cmbtipodesalida" data-rel="chosen">
                                            <option>Pantalla</option>
                                            <option>Impresora</option>

                                        </select>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="cmbfrecuenciadepago">Frecuencia de Pago</label>
                                    <div class="controls">
                                        <select id="cmbfrecuenciadepago" data-rel="chosen">
                                            <option>Semanal</option>
                                            <option>Quincenal</option>                                                     
                                        </select>
                                    </div>
                                </div>

                                <div class="form-actions">
                                    <button type="submit" class="btn btn-primary">OK</button>
                                    <button type="reset" class="btn">Cancelar</button>
                                </div>


                        </div>
                  
                    </div><!--/row--> 

                </form>

            </div> 

        </div>  
    </div>   

</div>    
<!-- end: Content -->