			
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
            <h2><i class="icon-edit"></i>Acumulados XII Mes</h2>
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
                                        <label class="control-label" for="txtPeriodoFiscal">Periodo Fiscal</label>
                                        <div class="controls">
                                            <input type="text" id="txtPeriodoFiscal">

                                        </div>
                                    </div>
                                </fieldset>										

                              
                            </div>
                        </div>
                        
                        
                        
                        	<div class="box span6">
					<div class="box-header">
						<h2><i class="icon-align-justify"></i><span class="break"></span>Periodos</h2>
						<div class="box-icon">
							
							<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
							 
						</div>
					</div>
					<div class="box-content">
						<table class="table table-bordered">
							  <thead>
								  <tr>
									  <th>Partidas</th>
									  <th>Salario Acumulados</th>  
                                                                          <th>XII Mes Devengado</th> 
								  </tr>
							  </thead>   
							  <tbody>
								<tr>
									<td>1era Partida</td>
									<td class="center">$100.00</td>   
                                                                        <td class="center">$100.00</td> 
								</tr>
								
								<tr>
									<td>2da Partida</td>
									<td class="center">225</td>
                                                                        <td class="center">$100.00</td> 
								                                        
								</tr>
								<tr>
									<td>3era Partida</td>
									<td class="center">300</td>    
                                                                        <td class="center">$100.00</td> 
								</tr>
								<tr>
									<td>Proximo Periodo</td>
									<td class="center">212</td>
                                                                        <td class="center">$100.00</td> 
								</tr>                                   
							  </tbody>
						 </table>     
					</div>
				</div><!--/span-->
			
                          </form>

                </div>

            </div>
        </div> 
    </div> 
</div>
</div>    

<!-- end: Content -->