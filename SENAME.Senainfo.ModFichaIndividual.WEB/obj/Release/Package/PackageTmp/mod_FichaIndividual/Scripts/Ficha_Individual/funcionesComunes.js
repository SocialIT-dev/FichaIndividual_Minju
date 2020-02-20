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
