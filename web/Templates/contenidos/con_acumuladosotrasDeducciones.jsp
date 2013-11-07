            
<!-- start: Content -->

<div id="content" class="span10">
    <!-- inicio menu de los iconos Acumulados -->
    <div class="row-fluid"> 
        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-folder-close-alt"></i>Acumulados</h2>
            </div>
            <div class="box-content">

                <a href="formAcumuladosBasicos.jsp" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p>Acumulados Basicos</p>
                    <!--<span class="notification blue">7</span>-->
                </a>
                <a href="formAcumuladosOtros.jsp" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p>Acumulados Otros</p>

                </a>
                <a href="formAcumuladosVacaciones.jsp" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p>Acumulados Vacaciones</p>
                </a>
                <a href="formAcumuladosXIIMes.jsp" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p>Acumulados XIII Mes</p>
                </a>
                <a href="formAcumuladosXperiodos.jsp" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p>Acumulados x Periodos</p>
                </a>
                <a href="formAcumuladosXmes.jsp" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p>Acumulados por Mes</p>

                </a>
                <a href="formAcumuladosOtrasDeducciones.jsp" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p>Acumulados -Otras Deducciones</p>
                </a>
                <a href="formAcumuladosAdicionDelSalario.jsp" class="quick-button-small span1">
                    <i class="icon-folder-close-alt"></i>
                    <p>Adicion de Salarios</p>

                </a>                        
                <div class="clearfix"></div>
            </div>  
        </div><!--/span-->
    </div> <!--fin de iconos-->
    <div class="row-fluid">
    <div class="box span12">
        <div class="box-header">
            <h2><i class="icon-edit"></i>Otras deducciones</h2>
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
                            </div>
                            <div class="span6">
                                <fieldset>
                                     <h3>.</h3>
                                     <div class="control-group">
                                         <label class="control-label" for="date01">Fecha</label>
                                         <div class="controls">
                                             <input type="text" class="input-xlarge datepicker" id="date01" value="">
                                         </div>
                                     </div>
                                </fieldset>                                     

                              
                            </div>
                            
                            
                             
                        </div>
                        
                        <h3>Aplica a:</h3>
                        
                        
                        <div class="control-group success">
                            <label class="control-label" for="txtInteresesHipotecarios">Intereses Hipotecarios</label>
                            <div class="controls">
                                <input type="text" id="txtInteresesHipotecarios">
                                <span class="help-inline">(-) Rebaja</span>
                            </div>
                        </div>
                        
                             <div class="control-group success">
                            <label class="control-label" for="txtInteresesEducativos">Intereses Educativos</label>
                            <div class="controls">
                                <input type="text" id="txtInteresesEducativos">
                                <span class="help-inline">(-) Rebaja</span>
                            </div>
                        </div>
                        
                             <div class="control-group success">
                            <label class="control-label" for="txtgastosmedicos">Gastos Medicos</label>
                            <div class="controls">
                                <input type="text" id="txtgastosmedicos">
                                <span class="help-inline">(-) Rebaja</span>
                            </div>
                        </div>
                        
                             <div class="control-group success">
                            <label class="control-label" for="txtcreditofiscal">Credito Fiscal</label>
                            <div class="controls">
                                <input type="text" id="txtcreditofiscal">
                                <span class="help-inline">(-) Rebaja</span>
                            </div>
                        </div>
                        
                        <div class="control-group hidden-phone">
                            <label class="control-label" for="textarea2">Explicacion</label>
                            <div class="controls">
                                <textarea class="cleditor" id="textarea2" rows="3"></textarea>
                            </div>
                        </div>
                        
                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">OK</button>
                            <button type="reset" class="btn">Cancelar</button>
                        </div>

                        
                        
                          </form>

                </div>

            </div>
        </div> 
    </div> 
</div>
</div>    

<!-- end: Content -->
