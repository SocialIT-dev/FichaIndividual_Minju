//Autor: C.G 
//Fecha: 18-11-2019
//Objetivo:
//Funciones para el formulario de Busqueda de Ficha Individual

var IdUsuarioActualizacion;
var cabmodal = "SENAINFO ";

$(document).ready(function () {
    CargaInicial();
    $("#divTabla").hide();
});

function CargaInicial() {
    IdUsuarioActualizacion = $("#idusuario_conect").val();
    CargaDatosInstitucionesUsuario();
	$("#divMsjError").hide();

    $('#btnBuscarFicha').on('click', function () {   
        $('.modal').modal('show');
        BuscarFicha();
    });

	$('#btnLimpiar').on('click', function () {
        LimpiarFormularioBusquedaFI();
    });    

}

//******************************************* Funciones Botones y Carga de Combos ****************************//

//Boton: Buscar Fichas 
function BuscarFicha() {
   // var idusuario = IdUsuarioActualizacion;
    //Validar 
	var institucion = $("#cmbInstitucion").val(); // document.getElementById("cmbInstitucion").value;
	var proyecto = $("#cmbProyecto").val(); // document.getElementById("cmbProyecto").value;
	var rutnino = $("#txtRutnino").val(); // document.getElementById("txtRutnino").value;
	var codnino = $("#txtCodnino").val();
	var nombnino = $("#txtNombnino").val(); // document.getElementById("txtNombnino").value;
    var apellidonino = $("#txtApellidopatnino").val(); // document.getElementById("txtApellidopatnino").value;
    var contadorFiltro = 5;
	if ($("#cmbInstitucion").val() == "0") {
        institucion = 0;
        contadorFiltro--;
	}
	if ($("#cmbProyecto").val() == "0") {
        proyecto = 0;
        contadorFiltro--;
	}
	if ($("#txtCodnino").val() == "") {
        codnino = 0;
        contadorFiltro--;
    }
    if ($("#txtNombnino").val() == "") {
        contadorFiltro--;
    }
    if ($("#txtApellidopatnino").val() == "") {
        contadorFiltro--;
    }

	var sexonino = "";
	if ($("#optFemenino").is(':checked')) {
		sexonino = "F";
	}
	if ($("#optMasculino").is(':checked')) {
		sexonino = "M";
	}
  /** Exigir al menos dos criterios de búsqueda  **/
    if (contadorFiltro < 2) { 
        $("#lblMensaje").text("Ingrese al menos dos de los valores anteriores");
        $('.modal').modal('hide');
        $("#divMsjError").show();
    }
	else {
		$("#divMsjError").hide();
        //Realizar la consulta a nivel de Base de datos
		ListarNinosConsulta(institucion, proyecto, rutnino, codnino, nombnino, apellidonino, sexonino);
    }
 
}

//Boton: Limpiar
function LimpiarFormularioBusquedaFI() {
    document.getElementById("cmbInstitucion").selectedIndex = 0;
    document.getElementById("cmbProyecto").selectedIndex = 0;
    document.getElementById("txtRutnino").value = "";
    document.getElementById("txtNombnino").value = "";
    document.getElementById("txtApellidopatnino").value = "";
    document.getElementById("optFemenino").value = "";
	document.getElementById("optMasculino").value = "";
	$("#optFemenino").prop('checked', false);
	$("#optMasculino").prop('checked', false);
    $("#lblMensaje").text("");
    $("#divMsjError").hide();
    $("#divTabla").hide();

}


function CargaDatosInstitucionesUsuario() {

    $.ajax({
        type: "POST",
        url: "FichaIndividualBuscador.aspx/ObtenerInstitucionesUsuario",
        data: "{'IdUsuario': '" + IdUsuarioActualizacion + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
            // Ajax OK !                   
        },
        error: function (r) {
            DesplegarExcepcionCriticaApp(r.responseText);
        }
    }).then(function (r) {

        var institucion = $("#cmbInstitucion");
        InicializaCombo("#cmbInstitucion");
        institucion.append("<option value='0'>Seleccione una Institución</option>");

        var proyecto = $("#cmbProyecto");
        InicializaCombo("#cmbProyecto");
        proyecto.append("<option value='0'>Seleccione un Proyecto</option>");

        if (r.d[0] != null)
            if ((r.d[0].Error) == "") {
                if (r.d != "") {

                    $.each(r.d,
                        function () {
                            institucion.append("<option value='" + this.CodInstitucion + "'>" + this.NombreInstitucion + "</option>");
                        }
                    );
                    document.getElementById("cmbInstitucion").disabled = false;
                    if (r.d.length == 1) {

                        $("#cmbInstitucion").prop('selectedIndex', 1);
                        CargaProyectosInstitucion($("#cmbInstitucion").val());
                    }
                }
            }
            else {
                document.getElementById("cmbInstitucion").selectedIndex = 0;
                document.getElementById("cmbInstitucion").disabled = true;

                DesplegarExcepcionCriticaApp(r.d[0].Error);
            }
    });
}

function CargaProyectosInstitucion(codigoInstitucion) {
    document.getElementById("cmbProyecto").disabled = false;
    $.ajax({
        type: "POST",
        url: "FichaIndividualBuscador.aspx/ObtenerProyectosXInstitucionYUsuario",
        data: "{'IdUsuario':'" + IdUsuarioActualizacion + "','codigoInstitucion':'" + codigoInstitucion + "' }",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
            // Ajax OK !                   
        },
        error: function (r) {
            DesplegarExcepcionCriticaApp(r.responseText);
        }
    }).then(function (r) {
        var proyecto = $("#cmbProyecto");
        InicializaCombo("#cmbProyecto");
        proyecto.append("<option value='0'>Seleccione un Proyecto</option>");

        if (r.d[0] != null)
            if (r.d != "") {
                $.each(r.d,
                    function () {
                        $("#cmbProyecto").append("<option value='" + this.CodProyecto + "'>" + this.NombreProyecto + "</option>");
                    }
                );
                document.getElementById("cmbProyecto").disabled = false;
            }
    });
}

function ListarNinosConsulta(codInstitucion, codProyecto, rut, codNino, nombNino, apellPaterno, sexoNino) {
    $("#lblMensaje").text("");
    $("#divMsjError").hide();
	var parametros = JSON.stringify({
		'CodInstitucion': codInstitucion,
		'CodProyecto': codProyecto,
		'Rut': rut,
		'CodNino': codNino,
		'NombNino': nombNino,
		'ApellPaterno': apellPaterno,
		'SexoNino': sexoNino
	});
	// int CodInstitucion, int CodProyecto, string Rut, int CodNino, string NombNino, string ApellPaterno, string SexoNino
	$.ajax({
		type: "POST",
		url: "FichaIndividualBuscador.aspx/ObtenerNiños",
		data: parametros,
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success: function (r) {
            if (r.d[0] != null) {
                if (r.d != "") {
                    if (r.d[0].Error == "" || r.d[0].Error == undefined) {
                        if (r.d.length > 400000) {
                            $('.modal').modal('hide');
                            $("#lblMensaje").text("Hay demasiadas filas para procesar. Agregue más criterios de búsqueda para disminuir la muestra.");
                            $("#divMsjError").show();
                        }
                        else {
                            $("#divTabla").show();
                            var datatableBusqueda = $('#FichaIndividualResultadosBusqueda').DataTable({
                                destroy: true,
                                paging: true,
                                pageLength: 20,
                                pagingType: "full_numbers",
                                searching: false,
                                lengthChange: false,
                                ordering: false,
                                info: false,
                                language: {                                   
                                    "emptyTable": "No existen datos",
                                    "paginate": {                        
                                        "infoEmpty": "No se encontraron registros",
                                        "first": "Primera",
                                        "last": "Última",
                                        "previous": "Anterior",
                                        "next": "Siguiente"
                                    }
                                },
                                data: r.d,
                                columns: [
                                    { "data": "Nombres" },
                                    { "data": "Rut" },
                                    { "data": "Boton" }
                                ]
                            });

                        }
                    }
                    else {
                        $('.modal').modal('hide');
                        $("#divTabla").hide();
                        $("#lblMensaje").text("Existe un problema con la conexión a la base de datos, se agotó el tiempo de espera. Reintente nuevamente.");
                        $("#divMsjError").show();
                    }
                }
                $('.modal').modal('hide');
            }
            else {
                $('.modal').modal('hide');
                $("#lblMensaje").text("No se han encontrado datos para la búsqueda");
                $("#divMsjError").show();
            }
		},
        error: function (r) {
            $('.modal').modal('hide');
			DesplegarExcepcionCriticaApp(r.responseText);
		}
	});
}
//**************************************** FIN Funciones Botones y Carga de Combos ****************************//




//*********************************************** Funciones Miscelaneas *******************************//
function InicializaCombo(cmb) {
    $(cmb).html("");
}

//******************************************** Fin Funciones Miscelaneas *****************************//

function AbrirFicha(codnino, codproyecto) {
    $('.modal').modal('show');
    window.location.replace('FichaIndividual.aspx?codnino=' + codnino.toString() + '&codproy=' + codproyecto.toString() );
}