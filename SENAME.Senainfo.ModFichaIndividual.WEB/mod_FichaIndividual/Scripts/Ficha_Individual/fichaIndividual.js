$(document).ready(function () {
    $("#boton").click(function (event) {
        $("#FichaIndividualResultadosBusqueda").load('FichaIndividualResultadosBusqueda.aspx');
    });

    $('.tituloarrow').on("click", function () {
        var $arrows = $(this).find("span");
        $arrows.toggle();
        $arrows.removeClass("noned");
    });
    $("#botonimprimir").mouseover(function (event) {
        $("#botonimprimir").click();
    });
    var rolVisita = $("#ddlVisitante").val();
    var rolPernocta = $("#ddlPernoctacion").val();
    setTimeout(function () {
        RefrescarVisitas(rolVisita);
        RefrescarPernoctacion(rolPernocta);
    }, 200);
    
});

function RefrescarVisitas(tipo) {
    $('#divLoading').modal('show');
    var parametros = JSON.stringify({
        'anio': $("#hdnAnioVisita").val(),
        'tipo': tipo,
        'codproyecto': $("#hdnCodProyecto").val(),
        'codnino': $("#hdnCodNino").val()
    });
    $.ajax({
        type: "POST",
        url: "FichaIndividual.aspx/ObtenerDetalleVisitas",
        data: parametros,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
            // Ajax OK !                   
        },
        error: function (r) {
            $('#divLoading').modal('hide');
            DesplegarExcepcionCriticaApp(r.responseText);
        }
    }).then(function (r) {
        $('#divLoading').modal('hide');
        if (r.d != null) {
            $("#txtEne").text(r.d.Enero);
            $("#txtFeb").text(r.d.Febrero);
            $("#txtMar").text(r.d.Marzo);
            $("#txtAbr").text(r.d.Abril);
            $("#txtMay").text(r.d.Mayo);
            $("#txtJun").text(r.d.Junio);
            $("#txtJul").text(r.d.Julio);
            $("#txtAgo").text(r.d.Agosto);
            $("#txtSep").text(r.d.Septiembre);
            $("#txtOct").text(r.d.Octubre);
            $("#txtNov").text(r.d.Noviembre);
            $("#txtDic").text(r.d.Diciembre);
            $("#txtTotalVisitas").text(r.d.Total);
            $("#txtCantidadVisitas").val(r.d.Total);
        }
    });
}

function RefrescarPernoctacion(tipo) {
    $('#divLoading').modal('show');
    var parametros = JSON.stringify({
        'anio': $("#hdnAnioPernocta").val(),
        'tipo': tipo,
        'codproyecto': $("#hdnCodProyecto").val(),
        'codnino': $("#hdnCodNino").val()
    });
    $.ajax({
        type: "POST",
        url: "FichaIndividual.aspx/ObtenerDetallePernoctacion",
        data: parametros,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
            // Ajax OK !                   
        },
        error: function (r) {
            $('#divLoading').modal('hide');
            DesplegarExcepcionCriticaApp(r.responseText);
        }
    }).then(function (r) {
        $('#divLoading').modal('hide');
        if (r.d != null) {
            $("#txtEneP").text(r.d.Enero);
            $("#txtFebP").text(r.d.Febrero);
            $("#txtMarP").text(r.d.Marzo);
            $("#txtAbrP").text(r.d.Abril);
            $("#txtMayP").text(r.d.Mayo);
            $("#txtJunP").text(r.d.Junio);
            $("#txtJulP").text(r.d.Julio);
            $("#txtAgoP").text(r.d.Agosto);
            $("#txtSepP").text(r.d.Septiembre);
            $("#txtOctP").text(r.d.Octubre);
            $("#txtNovP").text(r.d.Noviembre);
            $("#txtDicP").text(r.d.Diciembre);
            $("#txtTotalPernoctacion").text(r.d.Total);
            $("#txtCantidadPernoctacion").val(r.d.Total);
        }
    });
}