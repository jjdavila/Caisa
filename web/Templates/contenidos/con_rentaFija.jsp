<!-- start: Content -->
<div id="content" class="span10">
    <div class="row-fluid">

        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-edit"></i>Mantenimiento de Empleado- Renta fija</h2>
                <div class="box-icon">
                   
                    <a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
                    
                </div>
            </div>
            <div class="box-content">
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
                            


                                        <div class="control-group">
                                            <label class="control-label" for="estadocivil">Estado Cicil</label>
                                            <div class="controls">
                                                <select id="estadocivil" data-rel="chosen">
                                                    <option>Casado</option>
                                                    <option>Soltero</option>
                                                    <option>Unido</option>  
                                                    <option>Divorciado</option>                                                         
                                                </select>
                                            </div>
                                        </div>
                                        
                                             <div class="control-group">
                                            <label class="control-label" for="cmbsexo">Sexo</label>
                                            <div class="controls">
                                                <select id="cmbsexo" data-rel="chosen">
                                                    <option>F</option>
                                                    <option>M</option>                                                     
                                                </select>
                                            </div>
                                        </div>
                                                           
                                </div>
                                <div class="span6">
                                 
                                    <fieldset>    

                                        <h3>Datos Laborales</h3>

                                        <div class="control-group">
                                            <label class="control-label" for="selectError0">Estado Actual</label>
                                            <div 
                                                class="controls">
                                                <select id="selectError0" data-rel="chosen">
                                                    <option>A</option>
                                                    <option>B</option>
                                                    <option>C</option>                                              
                                                </select>
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="cmbclavederenta">Clave de la Renta</label>
                                            <div class="controls">
                                                <select id="cmbclavederenta" data-rel="chosen">
                                                    <option>E-1</option>
                                                    <option>A-3</option>

                                                </select>
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="cmbformadepago">Forma de Pago</label>
                                            <div class="controls">
                                                <select id="cmbformadepago" data-rel="chosen">
                                                    <option>Cheque</option>
                                                    <option>Deposito</option>

                                                </select>
                                            </div>
                                        </div>
                                        
                                        
                                               <div class="control-group">
                                            <label class="control-label" for="cmbfrecuenciadepago">Frecuencia de Pago</label>
                                            <div class="controls">
                                                <select id="cmbfrecuenciadepago" data-rel="chosen">
                                                    <option>Quincenal</option>
                                                    <option>semanal</option>
                                                     <option>Mensual</option>

                                                </select>
                                            </div>
                                        </div>
                        
                                    </fieldset>                                     

                                   
                                </div>
                            </div><!--/row--> 
                            
                              <div class="span6">
                                 
                                    <fieldset>    

                                        <h3>Descuentos</h3>

                                     <div class="control-group">
                                            <label class="control-label" for="txtrentaadescontar">Renta a Descontar</label>
                                            <div class="controls">
                                                <input type="text" id="txtrentaadescontar">
                                                <!--<span class="help-inline">Something may have gone wrong</span>-->
                                            </div>
                                        </div>

                                     <div class="control-group">
                                            <label class="control-label" for="txtSegurosocial">Seguro Social</label>
                                            <div class="controls">
                                                <input type="text" id="txtSegurosocial">
                                                <!--<span class="help-inline">Something may have gone wrong</span>-->
                                            </div>
                                        </div>

                                    <div class="control-group">
                                            <label class="control-label" for="txtsefuroeducativo">Seguro Educativo</label>
                                            <div class="controls">
                                                <input type="text" id="txtsefuroeducativo">
                                                <!--<span class="help-inline">Something may have gone wrong</span>-->
                                            </div>
                                        </div>
                        
                                    </fieldset>                                     

                                   
                                </div>
                        </form>

            </div> 

        </div>  
    </div>   

</div>    
<!-- end: Content -->