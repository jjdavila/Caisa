			
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
            <h2><i class="icon-edit"></i>Acumulados Básicos</h2>
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
                                    <h3>HORAS</h3>
                                    <div class="control-group">
                                        <label class="control-label" for="horaregulares">Regulares</label>
                                        <div class="controls">
                                            <input type="text" id="horaregulares">

                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="extras">Extras</label>
                                        <div class="controls">
                                            <input type="text" id="extras">

                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label" for="enfermedad">Enfermedad</label>
                                        <div class="controls">
                                            <input type="text" id="enfermedad">

                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="horasAjustes">Horas Ajustes</label>
                                        <div class="controls">
                                            <input type="text" id="horasAjustes">

                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label" for="horasAusencias">Ausencias</label>
                                        <div class="controls">
                                            <input type="text" id="horasAusencias">

                                        </div>
                                    </div>

                                    <h3>IMPUESTO SOBRE LA RENTA</h3>

                                    <div class="control-group">
                                        <label class="control-label" for="isr">I.S.R.</label>
                                        <div class="controls">
                                            <input type="text" id="isr">

                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="segSocial">Seg. Social</label>
                                        <div class="controls">
                                            <input type="text" id="segSocial">

                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="segEdu">Seg. Educativo</label>
                                        <div class="controls">
                                            <input type="text" id="segEdu">

                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label" for="isrdecimo">I.S.R. XII</label>
                                        <div class="controls">
                                            <input type="text" id="isrdecimo">

                                        </div>
                                    </div>






                            </div>
                            <div class="span6">
                                <fieldset>	

                                    <h3>Salarios</h3>									

                                    <div class="control-group">
                                        <label class="control-label" for="regularesSalarios">Regulares</label>
                                        <div class="controls">
                                            <input type="text" id="regularesSalarios">

                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label" for="extraSalarios">Extras</label>
                                        <div class="controls">
                                            <input type="text" id="extraSalarios">

                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label" for="salarioBruto">Bruto</label>
                                        <div class="controls">
                                            <input type="text" id="salarioBruto">

                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label" for="enfermedadSalarios">Enfermadad</label>
                                        <div class="controls">
                                            <input type="text" id="enfermedadSalarios">

                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label" for="horasAjustesSalarios">Horas Ajustes</label>
                                        <div class="controls">
                                            <input type="text" id="horasAjustesSalarios">

                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label" for="horasAusenciasSalarios">Ausencias</label>
                                        <div class="controls">
                                            <input type="text" id="horasAusenciasSalarios">

                                        </div>
                                    </div>	

                                                 <h3>Vaciones</h3>                                  

                                    <div class="control-group">
                                        <label class="control-label" for="vacacionesdev">Vacaciones dev</label>
                                        <div class="controls">
                                            <input type="text" id="vacacionesdev">

                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label" for="decimodev">XII mes dev</label>
                                        <div class="controls">
                                            <input type="text" id="decimodev">

                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label" for="indemnizaciondev">Indemnizacion dev</label>
                                        <div class="controls">
                                            <input type="text" id="indemnizaciondev">

                                        </div>
                                    </div>	

                                    <div class="control-group">
                                        <label class="control-label" for="preavisodev">Preaviso dev</label>
                                        <div class="controls">
                                            <input type="text" id="preavisodev">

                                        </div>
                                    </div>  

                                    <div class="control-group">
                                        <label class="control-label" for="primadev">Prima de Antiguedad dev</label>
                                        <div class="controls">
                                            <input type="text" id="primadev">

                                        </div>
                                    </div>  

                                       <div class="control-group">
                                        <label class="control-label" for="otrosingresos">Otros Ingresos</label>
                                        <div class="controls">
                                            <input type="text" id="otrosingresos">

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