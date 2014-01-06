<%@taglib uri="/WEB-INF/tlds/struts-template.tld" prefix="template"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
    </head>

    <body>	
        <!-- start: Header -->
    <template:get name="cabeza"/>
    <div class="container-fluid-full">
        <div class="row-fluid">
            <template:get name="menu"/>			
            <!-- end: Main Menu -->						
            <template:get name="contenido"/>
            <!-- end: Content -->			
        </div><!--/fluid-row-->

        <template:get name="modal"/>

        <div class="clearfix"></div>

        <template:get name="pie"/>

    </div><!--/.fluid-container-->


</body>
</html>
