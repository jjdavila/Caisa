<!-- start: Content -->
<div id="content" class="span10">

    <!-- inicio menu de los iconos catalogos -->
    <div class="row-fluid">	
        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-folder-close-alt"></i>Catalogos Empleados</h2>
            </div>
            <div class="box-content">

                <a href="form_catalogos_empleados_activos.jsp" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p>Catalogos Empleados activo</p>
                    <!--<span class="notification blue">7</span>-->
                </a>
                <a href="form_catalogos_empleados_dtos.jsp" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p>Catalogos empleado x dtos</p>

                </a>
                <a href="form_catalogos_empleados_activos.jsp" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p>Catalogos empleados generales</p>
                </a>

                <div class="clearfix"></div>
            </div>	
        </div><!--/span-->
    </div> <!--fin de iconos-->


    <div class="row-fluid">

        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-edit"></i>Catalogo de Empleado - Dtos</h2>
                <div class="box-icon">

                    <a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>

                </div>
            </div>
            <div class="box-content">
                <!--Datos del Empleado-->
                <form class="form-horizontal">
                    <div class="row-fluid">            
                        <div class="span6">
                            <h3>Este informa brinda al usuario un listado de todos los empleados que estan en el sistema. El mismo aparecera ordenado por el centro de Costo</h3>
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