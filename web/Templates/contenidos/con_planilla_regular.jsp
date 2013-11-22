			
<!-- start: Content -->

<div id="content" class="span10">
    <!-- inicio menu de los iconos -->
    <div class="row-fluid">	
        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-folder-close-alt"></i>Planilla Regular</h2>
            </div>
            <div class="box-content">

                <a href="form_planilla_regular.jsp" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p>Calculo de planilla quincenal</p>
                    <!--<span class="notification blue">7</span>-->
                </a>
                <a href="#" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p></p>

                </a>
                <a href="#" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p></p>
                </a>
                <a href="#" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p></p>
                </a>
                <a href="#" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p></p>
                </a>
                <a href="#" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p></p>

                </a>
                <a href="#" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p> </p>
                </a>
                <a href="#" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p></p>

                </a>						
                <div class="clearfix"></div>
            </div>	
        </div><!--/span-->
    </div> <!--fin de iconos-->
    <div class="row-fluid">
    <div class="box span12">
        <div class="box-header">
            <h2><i class="icon-edit"></i>Calculo de planilla</h2>
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
                                <h3>Datos Generales</h3>
                                <fieldset>	
                                    <div class="control-group">
                                        <label class="control-label" for="txtnumquincena">Número de Quincena</label>
                                        <div class="controls">
                                            <input type="text" id="txtnumquincena">
                                            <!--<span class="help-inline">Something may have gone wrong</span>-->
                                        </div>
                                    </div>
                                    <div class="control-group">
                                            <label class="control-label" for="fechadepago">Fecha de Pago</label>
                                            <div class="controls">
                                                <input type="text" class="input-xlarge datepicker" id="fechadepago" value="">
                                            </div>
                                        </div>
                                     
                                    <div class="control-group">
                                        <label class="control-label" for="txttipodeplanilla">Tipo de planilla</label>
                                        <div class="controls">
                                            <input type="text" id="txttipodeplanilla">

                                        </div>
                                    </div>
                                    
                                         <div class="control-group">
                                            <label class="control-label" for="selectError0">Impresion x</label>
                                            <div class="controls">
                                                <select id="selectError0" data-rel="chosen">
                                                    <option>Pantalla</option>
                                                    <option>Impresora</option>
                                                                                                
                                                </select>
                                            </div>
                                        </div>
                                    
                                       <div class="form-actions">
                                    <button type="submit" class="btn btn-primary">OK</button>
                                    <button type="reset" class="btn">Cancelar</button>
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