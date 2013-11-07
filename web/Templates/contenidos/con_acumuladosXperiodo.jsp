            
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
            <h2><i class="icon-edit"></i>Acumulados por Periodo</h2>
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
                                        <label class="control-label" for="txtPeriodoNumero">Periodo Numero</label>
                                        <div class="controls">
                                            <input type="text" id="txtPeriodoNumero">

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



	<div id="content" class="span10">
			<div class="row-fluid">	
				<div class="box span6">
					<div class="box-header">
						<h2><i class="icon-align-justify"></i><span class="break"></span>calculos</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="icon-wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table table-bordered">
							  <thead>
								  <tr>
									  <th>Tipo</th>
									  <th>horas</th>  
                                        <th>Salario</th>                                         
								  </tr>
							  </thead>   
							  <tbody>
								<tr>
									<td>Regulares</td>
									<td class="center">104.00</td>    
                                    <td class="center">300.00</td>                                 
								</tr>
								<tr>
									<td>Extras</td>
									<td class="center">0.00</td>
                                    <td class="center">600.00</td>
								                                      
								</tr>
								<tr>
									<td>Enfermedad</td>
									<td class="center">0.00</td>
                                    <td class="center">0.00</td>
								                                        
								</tr>
								<tr>
									<td>Hr Ajuste</td>
									<td class="center">0.00</td> 
                                    <td class="center">0.00</td>                                      
								</tr>
								<tr>
									<td>Hr Ausencia</td>
									<td class="center">0.00</td>  
                                    <td class="center">0.00</td>                                     
								</tr>
                                <tr>
                                    <td>Otros Ingresos</td>
                                     <td class="center"></td>
                                    <td class="center">0.00</td>  
                                                                        
                                </tr> 

                                    <tr>
                                    <td>vacaciones</td>
                                     <td class="center"></td>
                                    <td class="center">700.00</td>  
                                                                        
                                </tr>  

                                    <tr>
                                    <td>XII Mes</td>
                                     <td class="center"></td>
                                    <td class="center">0.00</td>  
                                                                        
                                </tr>   

                                      <tr>
                                    <td>Indemnización</td>
                                     <td class="center"></td>
                                    <td class="center">0.00</td>  
                                                                        
                                </tr>  

                                    <tr>
                                    <td>Preaviso</td>
                                     <td class="center"></td>
                                    <td class="center">0.00</td>  
                                                                        
                                </tr> 

                                    <tr>
                                    <td>Prima de antigüedad</td>
                                     <td class="center"></td>
                                    <td class="center">0.00</td>  
                                                                        
                                </tr>

                                    <tr>
                                    <td><b>Ingreso Bruto</b></td>
                                     <td class="center"></td>
                                     <td class="center"><b>1600.00</b></td>  
                                                                        
                                </tr>                              
							  </tbody>
						 </table>      
					</div>
				</div><!--/span-->
				
			<div class="box span6">
					<div class="box-header">
						<h2><i class="icon-align-justify"></i><span class="break"></span>Calculos x periodo</h2>
						<div class="box-icon">
							
							<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
							 
						</div>
					</div>
					<div class="box-content">
						<table class="table table-bordered">
							  <thead>
								  <tr>
									  <th>Tipo</th>
									  <th>Cantidad</th>                                          
								  </tr>
							  </thead>   
							  <tbody>
								<tr>
									<td><b>Ingreso Bruto</b></td>
                                  
                                                                     <td class="center"><b>1600.00</b></td>                                     
								</tr>
								<tr>
									<td>Seguro Social</td>
									<td class="center">109.00</td>
								                                      
								</tr>
								<tr>
									<td>Seguro Educativo</td>
									<td class="center">14.00</td>
								                                        
								</tr>
								<tr>
									<td>Impuesto sobre la Renta</td>
                                                                        <td class="center"><u>84.00</u></td>                                      
								</tr>
								<tr>
									<td>Descuentos Comerciales</td>
                                                                        <td class="center"><u>200.00</u></td>                                        
								</tr>
                                                                <tr>
									<td>Total de Descuentoa</td>
                                                                        <td class="center"><b><u>284.00</u></b></td>                                        
								</tr> 
                                                                   <tr>
                                                                       <td><B>INGRESO NETO</B></td>
                                                                        <td class="center"><b><u>800.00</u></b></td>                                        
								</tr>  
							  </tbody>
						 </table>     
					</div>
                            
                            
                               <div class="control-group">
                                        <label class="control-label" for="txtDto">Dto</label>
                                        <div class="controls">
                                            <input type="text" id="txtDto">

                                        </div>
                                    </div>
                            
                                <div class="control-group">
                                        <label class="control-label" for="txtSeccion">Sección</label>
                                        <div class="controls">
                                            <input type="text" id="txtSeccion">

                                        </div>
                                    </div>
				</div><!--/span-->
			
			</div><!--/row-->
			
	
    
					
			</div>