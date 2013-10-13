<%@taglib uri='/WEB-INF/tlds/struts-template.tld' prefix='template'%>

<template:insert  id="tm" base="/jsp" template="/Templates/template.jsp">
    <template:put name="title" content="Templates" direct="true"/>
    <template:put name="keywords" content="aplicacion portal struts" direct="true"/>
    <template:put name="description" content="Utilizacion de Templates  en Struts" direct="true"/>
    <template:put name="contenido" content="calendar.html"/>
    <template:put name="pie" content="/Templates/footer.html"/>
    <template:put name="cabeza" content="/Templates/header.html"/>
    <template:put name="costado_i" content="calendar.html"/>  
</template:insert>
