<!-- start: Content -->
<div id="content" class="span10">
    <div class="row-fluid">

        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-edit"></i>Mantenimiento de Empleado</h2>
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
                                            <label class="control-label" for="numerodecedula">Número de Cédula</label>
                                            <div class="controls">
                                                <input type="text" readonly="readonly" id="numerodecedula">

                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="numSS">Número de Seguro Social</label>
                                            <div class="controls">
                                                <input type="text" id="numSS">

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
                                            <label class="control-label" for="nacionalidad">Nacionalidad</label>
                                            <div class="controls">
                                                <input type="text" id="nacionalidad">

                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="fechadenacimiento">Fecha de Nacimiento</label>
                                            <div class="controls">
                                                <input type="text" class="input-xlarge datepicker" id="fechadenacimiento" value="">
                                            </div>
                                        </div>


                                        <div class="control-group">
                                            <label class="control-label" for="tipodesangre">Tipo de Sangre</label>
                                            <div class="controls">
                                                <input type="text" id="tipodesangre">

                                            </div>
                                        </div>
                                </div>
                                <div class="span6">
                                    </fieldset>
                                    <fieldset>    

                                        <h3>Datos Laborales</h3>

                                        <div class="control-group">
                                            <label class="control-label" for="selectError0">Estado Actual</label>
                                            <div class="controls">
                                                <select id="selectError0" data-rel="chosen">
                                                    <option>A</option>
                                                    <option>B</option>
                                                    <option>C</option>                                              
                                                </select>
                                            </div>
                                        </div>


                                        <div class="control-group">
                                            <label class="control-label" for="horabase">Hora Base por Periodo</label>
                                            <div class="controls">
                                                <input type="text" id="horabase">

                                            </div>
                                        </div>



                                        <div class="control-group">
                                            <label class="control-label" for="seccion">Sección</label>
                                            <div class="controls">
                                                <input type="text" id="seccion">

                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="claveRenta">Clave de la Renta</label>
                                            <div class="controls">
                                                <input type="text" id="claveRenta">

                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="formadepago">Forma de Pago</label>
                                            <div class="controls">
                                                <input type="text" id="formadepago">

                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="frecuenciadepago">Frecuencia de Pago</label>
                                            <div class="controls">
                                                <input type="text" id="frecuenciadepago">

                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="salarioporperiodo">Salario por Periodo</label>
                                            <div class="controls">
                                                <input type="text" id="salarioporperiodo">

                                            </div>
                                        </div>


                                        <div class="control-group">
                                            <label class="control-label" for="cargo">Cargo</label>
                                            <div class="controls">
                                                <input type="text" id="cargo">

                                            </div>
                                        </div>


                                        <div class="control-group">
                                            <label class="control-label" for="vencecontrato">Vence Contrato</label>
                                            <div class="controls">
                                                <input type="text" class="input-xlarge datepicker" id="vencecontrato" value="">
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="vencecarnetdesalud">Vence Carnet de Salud</label>
                                            <div class="controls">
                                                <input type="text" class="input-xlarge datepicker" id="vencecarnetdesalud" value="">
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="pagoenefectivo">Pago en efectivo</label>
                                            <div class="controls">
                                                <select id="pagoenefectivo" data-rel="chosen">
                                                    <option>SI</option>
                                                    <option>NO</option>

                                                </select>
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="sindicato">Sindicato</label>
                                            <div class="controls">
                                                <select id="sindicato" data-rel="chosen">
                                                    <option>SI</option>
                                                    <option>NO</option>                                                     
                                                </select>
                                            </div>
                                        </div>


                                        <div class="control-group">
                                            <label class="control-label" for="fechadeingreso">Fecha de Ingreso</label>
                                            <div class="controls">
                                                <input type="text" class="input-xlarge datepicker" id="fechadeingreso" value="">
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="proximasvacaciones">Próximas Vacaiones</label>
                                            <div class="controls">
                                                <input type="text" class="input-xlarge datepicker" id="proximasvacaciones" value="">
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="proximasvacaciones">Próximas Vacaiones</label>
                                            <div class="controls">
                                                <input type="text" class="input-xlarge datepicker" id="proximasvacaciones" value="">
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="isr">Impuesto Sobre la Renta</label>
                                            <div class="controls">
                                                <select id="isr" data-rel="chosen">
                                                    <option>SI</option>
                                                    <option>NO</option>

                                                </select>
                                            </div>
                                        </div>
                                    </fieldset>                                     

                                   
                                </div>
                            </div><!--/row--> 
                        </form>

            </div> 

        </div>  
    </div>   

</div>    
<!-- end: Content -->