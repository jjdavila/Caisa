<%@taglib uri="/WEB-INF/tlds/struts-template.tld" prefix="template"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>  
            Sistema de Planilla Caisa
        </title>
        <!-- start: Meta -->
        <meta charset="utf-8">
       
        <meta name="description" content="SimpliQ - Flat & Responsive Bootstrap Admin Template.">
        <meta name="author" content="Lukasz Holeczek">
        <meta name="keyword" content="SimpliQ, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <!-- end: Meta -->

        <!-- start: Mobile Specific -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- end: Mobile Specific -->

        <!-- start: CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.min.css" rel="stylesheet">
        <link href="css/retina.css" rel="stylesheet">
        <!-- end: CSS -->	
        <!-- start: Favicon and Touch Icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
        <link rel="shortcut icon" href="ico/favicon.png">
        <!-- end: Favicon and Touch Icons -->	

    </head>
       <body>
    <template:insert template="/Templates/template.jsp">
        <template:put name="title" content="Sistema de Planilla Caisa" direct="true"/>
        <template:put name="keywords" content="aplicacion portal struts" direct="true"/>
        <template:put name="description" content="Utilizacion de Templates  en Struts" direct="true"/>
        <template:put name="contenido" content="/Templates/contenidos/con_acumuladosXperiodo.jsp"/>
        <template:put name="pie" content="/Templates/footer.html"/>
        <template:put name="cabeza" content="/Templates/header.jsp"/>
        <template:put name="menu" content="/Templates/menu.jsp"/>
        <template:put name="modal" content="/Templates/modal.jsp"/>
    </template:insert>
            <!-- start: JavaScript-->
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/jquery-migrate-1.0.0.min.js"></script>	
    <script src="js/jquery-ui-1.10.3.custom.min.js"></script>	
    <script src="js/jquery.ui.touch-punch.js"></script>	
    <script src="js/modernizr.js"></script>	
    <script src="js/bootstrap.min.js"></script>	
    <script src="js/jquery.cookie.js"></script>	
    <script src='js/fullcalendar.min.js'></script>	
    <script src='js/jquery.dataTables.min.js'></script>
    <script src="js/excanvas.js"></script>
    <script src="js/jquery.flot.js"></script>
    <script src="js/jquery.flot.pie.js"></script>
    <script src="js/jquery.flot.stack.js"></script>
    <script src="js/jquery.flot.resize.min.js"></script>
    <script src="js/jquery.flot.time.js"></script>
    <script src="js/gauge.min.js"></script>
    <script src="js/jquery.chosen.min.js"></script>	
    <script src="js/jquery.uniform.min.js"></script>		
    <script src="js/jquery.cleditor.min.js"></script>	
    <script src="js/jquery.noty.js"></script>	
    <script src="js/jquery.elfinder.min.js"></script>	
    <script src="js/jquery.raty.min.js"></script>	
    <script src="js/jquery.iphone.toggle.js"></script>	
    <script src="js/jquery.uploadify-3.1.min.js"></script>	
    <script src="js/jquery.gritter.min.js"></script>	
    <script src="js/jquery.imagesloaded.js"></script>	
    <script src="js/jquery.masonry.min.js"></script>	
    <script src="js/jquery.knob.modified.js"></script>	
    <script src="js/jquery.sparkline.min.js"></script>	
    <script src="js/counter.min.js"></script>	
    <script src="js/raphael.2.1.0.min.js"></script>
    <script src="js/justgage.1.0.1.min.js"></script>	
    <script src="js/jquery.autosize.min.js"></script>	
    <script src="js/retina.js"></script>
    <script src="js/jquery.placeholder.min.js"></script>
    <script src="js/wizard.min.js"></script>
    <script src="js/core.min.js"></script>	
    <script src="js/charts.min.js"></script>	
    <script src="js/custom.min.js"></script>
    <!-- end: JavaScript-->

</body>
</html>
