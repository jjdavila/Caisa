$(function() {

    $("#editUsuario").on("click", function() {
        ocultar_banco();
        ocultar_departamento();
        ocultar_cargo();
    });
    $("#editBanco").on("click", function() {
        ocultar_usuario();
        ocultar_departamento();
        ocultar_cargo();
    });
    $("#editDepartamento").on("click", function() {
     mostrar_departamento();
    });
      $("#editCargos").on("click", function() {
        mostrar_cargos();
    });
    $("#actualizar").on("click", function() {
        mostrar_actualizar();
    });

    function mostrar_actualizar() {
        $("#divActualizar").css("display", "block");
    }
    function ocultar_usuario() {
        $("#div_usuario").css("display", "none");
        $("#div_banco").css("display", "block");
    }

    function ocultar_banco() {
        $("#div_banco").css("display", "none");
        $("#div_usuario").css("display", "block");
    }
      function mostrar_departamento() {
        $("#div_banco").css("display", "none");
        $("#div_usuario").css("display", "none");
        $("#div_cargo").css("display", "none");;
        $("#div_departamento").css("display", "block");
    }
       function ocultar_departamento() {
        $("#div_departamento").css("display", "none");;
       }
       
            function mostrar_cargos() {
        $("#div_banco").css("display", "none");
        $("#div_usuario").css("display", "none");
          $("#div_departamento").css("display", "none");
        $("#div_cargo").css("display", "block");
    }
    
      function ocultar_cargo() {
        $("#div_cargo").css("display", "none");;
       }
});