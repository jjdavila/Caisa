$(function() {
     
    $("#editUsuario").on("click" , function(){
        ocultar_banco();
    });
    $("#editBanco").on("click" , function(){
        ocultar_usuario();
    });
    $("#actualizar").on("click" , function(){
        mostrar_actualizar();        
    });
        
    function mostrar_actualizar() {
         $("#divActualizar").css("display", "block");
    }
    function ocultar_usuario(){
        $("#div_usuario").css("display", "none"); 
        $("#div_banco").css("display", "block");
    }
    
    function ocultar_banco(){
        $("#div_banco").css("display", "none"); 
        $("#div_usuario").css("display", "block");
    }
});