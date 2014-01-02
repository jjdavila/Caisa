

<!-- inicio menu de los iconos Acumulados -->
<div id="content" class="span10">
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
        </div> 
    </div><!--/span-->


    <!--fin menu de los iconos Acumulados -->


    <div class="row-fluid">

        <div class="box span12">
            <div class="box-header">
                <h2><i class="icon-edit"></i>Acumulados Otros</h2>
                <div class="box-icon">
                    <a href="#" class="btn-setting"><i class="icon-wrench"></i></a>
                    <a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="icon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <!--<div id="MyWizard" class="wizard">
                    <ul class="steps">
                        <li data-target="#step1" class="active"><span class="badge badge-info">1</span></li>
                        <li data-target="#step2"><span class="badge">2</span></li>
                        <li data-target="#step3"><span class="badge">3</span></li>
                        <li data-target="#step4"><span class="badge">4</span></li>
                        <li data-target="#step5"><span class="badge">5</span></li>
                    </ul>
                    <div class="actions">
                        <button type="button" class="btn btn-prev"> <i class="icon-arrow-left"></i> Prev</button>
                        <button type="button" class="btn btn-success btn-next" data-last="Finish">Next <i class="icon-arrow-right"></i></button>
                    </div>
                </div>-->
                <div class="step-content">
                    <div class="step-pane active" id="step1">
                        <!--Datos del Empleado-->
                        <form class="form-horizontal">
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
                                <div class="row-fluid">            
                                    <div class="span6">             
                                        <h3>Salarios</h3>
                                        <div class="box-content">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>Mes</th>
                                                        <th>Salario</th>
                                                        <th>Renta</th>

                                                    </tr>
                                                </thead>   
                                                <tbody>
                                                    <tr>
                                                        <td>Enero</td>
                                                        <td class="center">1500</td>
                                                        <td class="center">55</td>

                                                    </tr>
                                                    <tr>
                                                        <td>Febrero</td>
                                                        <td class="center">1500</td>
                                                        <td class="center">55</td>                                                      
                                                    </tr>
                                                    <tr>
                                                        <td>Marzo</td>
                                                        <td class="center">1500</td>
                                                        <td class="center">55</td>

                                                    <tr>
                                                        <td>Abril</td>
                                                        <td class="center">1500</td>
                                                        <td class="center">55</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Mayo</td>
                                                        <td class="center">1500</td>
                                                        <td class="center">55</td>                              
                                                    </tr>
                                                    <tr>
                                                        <td>Junio</td>
                                                        <td class="center">1500</td>
                                                        <td class="center">55</td>                          
                                                    </tr>
                                                    <tr>
                                                        <td>Julio</td>
                                                        <td class="center">1500</td>
                                                        <td class="center">55</td>

                                                    </tr>
                                                    <tr>
                                                        <td>Agosto</td>
                                                        <td class="center">1500</td>
                                                        <td class="center">55</td>

                                                    </tr>
                                                    <tr>
                                                        <td>Septiembre</td>
                                                        <td class="center">1500</td>
                                                        <td class="center">55</td>

                                                    </tr>
                                                    <tr>
                                                        <td>Octubre</td>
                                                        <td class="center">1500</td>
                                                        <td class="center">55</td>

                                                    </tr>
                                                    <tr>
                                                        <td>Noviemore</td>
                                                        <td class="center">1500</td>
                                                        <td class="center">55</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Diciembre</td>
                                                        <td class="center">1500</td>
                                                        <td class="center">55</td>
                                                    </tr>

                                                    <tr>
                                                        <td><b>Totales</b></td>
                                                        <td class="center">1500</td>
                                                        <td class="center">55</td>
                                                    </tr>


                                                </tbody>
                                            </table>            
                                        </div>
                                    </div><!--/span-->

                                    <h3>Para Salario Promedio</h3>
                                    <div class="span6">
                                        <!--<div class="row-fluid">-->
                                        <div class="box span6">
                                            <div class="box-header">
                                                <h2><i class="icon-align-justify"></i><span class="break"></span>Ultimos 6 Meses</h2>
                                            </div>
                                            <div class="box-content">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th>Número mes</th>
                                                            <th>salario</th>

                                                        </tr>
                                                    </thead>   
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td class="center">1100</td>                                                                      
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td class="center">1100</td>                                         
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td class="center">1100</td>                                           
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td class="center">1100</td>                                          
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td class="center">1100</td>                                            
                                                        </tr>
                                                        <tr>
                                                            <td>6</td>
                                                            <td class="center">1100</td>                                            
                                                        </tr> 

                                                    </tbody>
                                                </table>  
                                            </div>

                                        </div><!--/span-->



                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="txtSalarioAcymulado">Salario acumulado</label>
                                        <div class="controls">
                                            <input type="text" id="txtSalarioAcymulado">
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="txtXIIMes">Para XII Mes</label>
                                            <div class="controls">
                                                <input type="text" id="txtXIIMes">
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="txtClaveRenta">Clave Renta</label>
                                                <div class="controls">
                                                    <input type="text" id="txtClaveRenta">
                                                </div>

                                            </div><!--/row-->



                                            </form>
                                        </div>



                                    </div><!--/row-->   

                                </div> 
                                </div> 

                                </div> 

                                </div> 

                                </div> 

                                </div> 

                                </div> 

