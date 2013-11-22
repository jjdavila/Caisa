<!-- start: Content -->
<div id="content" class="span10">

    <!-- inicio menu de los iconos catalogos -->
    <div class="row-fluid">	
        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-folder-close-alt"></i>Informe de salarios x Empleados</h2>
            </div>
            <div class="box-content">

                <a href="form_informe_salario_vacaciones.jsp" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Informe de Salarios Vacaciones</p>
                    <!--<span class="notification blue">7</span>-->
                </a>
                <a href="form_informe_salario_XIII_mes.jsp" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Informe de Salarios XIII mes</p>

                </a>
                <a href="form_informe_salario_x_rata_x_hora.jsp" class="quick-button span2">
                    <i class="icon-folder-close-alt"></i>
                    <p>Informe de Salarios Rata x Hora</p>
                </a>

                <div class="clearfix"></div>
            </div>	
        </div><!--/span-->
    </div> <!--fin de iconos-->


    <div class="row-fluid">

        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-edit"></i>Informe de Salarios  de Vacaciones x Empleados</h2>
                <div class="box-icon">

                    <a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>

                </div>
            </div>
            <div class="box-content">
                <!--Datos del Empleado-->
                <form class="form-horizontal">
                    <div class="row-fluid">            
                        <div class="span6">
                            <h3>Este informa brinda al usuario un listado de todos los empleados que estan en el sistema. El mismo aparecera ordenado alfabeticamente</h3>
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