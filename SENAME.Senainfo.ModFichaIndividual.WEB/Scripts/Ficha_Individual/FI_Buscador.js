//Autor: C.G 
//Fecha: 18-11-2019
//Objetivo:
//Funciones para el formulario de Busqueda de Ficha Individual

var IdUsuarioActualizacion;

$(document).ready(function () {
    CargaInicial();

});

function CargaInicial() {
    IdUsuarioActualizacion = $("#idusuario_conect").val();
    CargaDatosInstitucionesUsuario();

    $(document).on('click', '#btnBuscarFicha', function () {
        BuscarFicha();
    });


    $(document).on('click', '#btnLimpiar', function () {
        LimpiarFormularioBusquedaFI();
    });

}







//******************************************* Funciones Botones y Carga de Combos ****************************//

//Boton: Buscar Fichas 
function BuscarFicha() {

    var idusuario = IdUsuarioActualizacion;

    //Validar 
    var institucion = document.getElementById("cmbInstitucion").value;
    var proyecto = document.getElementById("cmbProyecto").value;
    var rutnino = document.getElementById("txtRutnino").value;
    var nombnino = document.getElementById("txtNombnino").value;
    var apellidonino = document.getElementById("txtApellidopatnino").value;
    var sexofemenino = document.getElementById("optFemenino");
    var sexoMasculino = document.getElementById("optMasculino");


    //Falta Validar la selección del Radio 

    if (institucion == 0 && proyecto == 0 && rutnino.length == 0 && nombnino.length == 0 && apellidonino.length == 0) {
        alert("Seleccione al menos un valor para realizar la busqueda");
    }
    else {
        //Realizar la consulta a nivel de Base de datos
        var codinstitucion = $("#cmbInstitucion").val();
        var codproyecto = $("#cmbProyecto").val();
        alert(codproyecto);
        ListarNinosConsulta(codproyecto);
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
        institucion.append("<option value='0'>Seleccione una Institucion</option>");

        var proyecto = $("#cmbProyecto");
        InicializaCombo("#cmbProyecto");
        proyecto.append("<option value='0'>Seleccione un Proyecto</option>");

        if (r.d[0] != null)
            if ((r.d[0].error) == "") {
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

                DesplegarExcepcionCriticaApp(r.d[0].error);
            }
    });
}

function CargaProyectosInstitucion(codigoInstitucion) {
    //alert(codigoInstitucion + " - " + IdUsuarioActualizacion);
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

function ListarNinosConsulta(codProyecto) {
    //alert(codigoInstitucion + " - " + IdUsuarioActualizacion);

    $.ajax({
        type: "POST",
        url: "FichaIndividualBuscador.aspx/ObtenerNiñosVigentes",
        data: "{'CodProyecto':'" + codProyecto + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
            // Ajax OK !                   
        },
        error: function (r) {
            DesplegarExcepcionCriticaApp(r.responseText);
        }
    }).then(function (r) {
        var proyecto = $("#FichaIndividualResultadosBusqueda");

        proyecto.append("<div class='col - xs - 12 col - sm - 12 mytop1y'>< hr class= 'hrmin' /></div >");

        if (r.d[0] != null)
            if (r.d != "") {
                $.each(r.d,
                    function () {
                        //$("#FichaIndividualResultadosBusqueda").append("<option value='" + this.CodProyecto + "'>" + this.NombreProyecto + "</option>");
                        $("#FichaIndividualResultadosBusqueda").append("<div class='col - xs - 12 col - md - 2 mytop1 diflex colnombre mytop1y'> <p class= 'mrlautoinput'> Nombre</p> </div >");
                        $("#FichaIndividualResultadosBusqueda").append("<div class='col - xs - 12 col - md - 3 mytop1 colnombreinput'> <input type='text' class='form - control inputnombre' value = '" + this.Nombres + "'></option>");
                    }
                );
                //document.getElementById("FichaIndividualResultadosBusqueda").disabled = false;
            }
    });
}
//**************************************** FIN Funciones Botones y Carga de Combos ****************************//




//*********************************************** Funciones Miscelaneas *******************************//
function InicializaCombo(cmb) {
    $(cmb).html("");
}

function replaceAll(text, busca, reemplaza) {
    while (text.toString().indexOf(busca) != -1) {
        text = text.toString().replace(busca, reemplaza);
    }
    return text;
}

function MensajeERROR_App_Critico(mensaje_) {
    var d = new Date();

    swal({
        title: "<table style='margin:auto;font-size:18px;'>" +
            "<tr>" +
            "<td style='font-size:24px;'>" + cabmodal + " " + d.getFullYear() + "</td>" +
            "</tr>" +
            "</table>",
        html: mensaje_,
        type: "error",
        allowOutsideClick: true,
        showCancelButton: false,
        showConfirmButton: true,
        confirmButtonText: "cerrar",
        confirmButtonColor: "#DF0101",
        padding: '20px',
        width: '600px'
    });
}

function DesplegarExcepcionCriticaApp(responseText) {
    //alert("DesplegarExcepcionCriticaApp: " + responseText);
    var jsonObj;
    var mensaje;
    var traza;
    var tipoExcepcion;
    var strError;
    if (responseText == undefined)
        responseText = "Se ha perdido conexión con el servidor de la aplicación. Esto puede deberse a una falla de comunicación o acceso a la red, o bien el servicio WEB al que trata de acceder está detenido.";

    try {
        jsonObj = JSON.parse(responseText);
        mensaje = jsonObj.Message;
        traza = jsonObj.StackTrace;
        tipoExcepcion = jsonObj.ExceptionType;

        strError = "<table style='width:600px;'>" +
            "<tr><td style='text-align:left;font-size:14px;'>Ha sucedido la siguiente excepción:<br /></td></tr>" +
            "<tr><td class='ajustar' style='text-align:left;font-size:14px;width: 555px;'><br /><b>MENSAJE: </b>" + mensaje + "</td></tr>" +
            "<tr><td class='ajustar' style='text-align:left;font-size:14px;width: 555px;'><br /><b>TRAZA: </b>" +
            "<div class='scrollbar2' id='style-12' style='height: 150px;'>" +
            "<div class='force-overflow2' style='text-align:left;'>" +
            traza +
            "</div></div>" +
            "</td></tr>" +
            "<tr><td class='ajustar' style='text-align:left;font-size:14px;width: 555px;'><br /><b>TIPO DE EXCEPCIÓN: </b>" + tipoExcepcion + "</td></tr>" +
            "<tr><td class='ajustar' style='text-align:left;font-size:14px;width: 555px;'><br />Por favor reintentar, si el problema persiste, comunicarse con el administrador. </td></tr>" +
            "</table>";
        var strError = replaceAll(replaceAll(strError, "\n", ""), "\r", "");

        MensajeERROR_App_Critico(strError);
    }
    catch (e) {
        traza = responseText;
        mensaje = "";
        tipoExcepcion = "";
        strError = "<table style='width:600px;'>" +
            "<tr><td style='text-align:left;font-size:14px;'>Ha sucedido la siguiente excepción:<br /></td></tr>" +
            "<tr><td class='ajustar' style='text-align:left;font-size:14px;width: 555px;'><br /><b>MENSAJE: </b>Error del servidor</td></tr>" +
            "<tr><td class='ajustar' style='text-align:left;font-size:14px;width: 555px;'><br /><b>TRAZA: </b>" +
            "<div class='scrollbar2' id='style-12' style='height: 150px;'>" +
            "<div class='force-overflow2' style='text-align:left;'>" +
            traza +
            "</div></div>" +
            "</td></tr>" +
            "<tr><td class='ajustar' style='text-align:left;font-size:14px;width: 555px;'><br /><b>TIPO DE EXCEPCIÓN: </b>" + tipoExcepcion + "</td></tr>" +
            "<tr><td class='ajustar' style='text-align:left;font-size:14px;width: 555px;'><br />Por favor reintentar, si el problema persiste, comunicarse con el administrador. </td></tr>" +
            "</table>";
        var strError = replaceAll(replaceAll(strError, "\n", ""), "\r", "");

        MensajeERROR_App_Critico(strError);
    }
    //.substring(0, 400) + 
}



//******************************************** Fin Funciones Miscelaneas *****************************//
