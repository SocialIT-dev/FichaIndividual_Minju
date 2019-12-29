$(document).ready(function () {
    $("#botonimprimir").mouseover(function (event) {
        $("#botonimprimir").click();
    });

    setTimeout(function () {
        var rolVisita = $("#ddlVisitante").val();
        var rolPernocta = $("#ddlPernoctacion").val();
        var cod_nino = $("#hdnCodNino").val();
        RefrescarVisitas(rolVisita);
        RefrescarPernoctacion(rolPernocta);
        CargarGrillaMaltrato(cod_nino);
        CargarGrillaAgresor(cod_nino);
        CargarGrillaMedidas(cod_nino);
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

function CargarGrillaMaltrato(cod_nino) {
    $('#divLoading').modal('show');
    var parametros = JSON.stringify({
        'codnino': cod_nino
    });
    $.ajax({
        type: "POST",
        dataType: "json",
        url: "FichaIndividual.aspx/ObtenerDatosMaltrato",
        data: parametros,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
        },
        error: function (r) {
            $('#divLoading').modal('hide');
            DesplegarExcepcionCriticaApp(r.responseText);
        }
    }).then(function (r) {
        var datatableVariable = $('#tblMaltrato').DataTable({
            paging: false,
            searching: false,
            ordering: false,
            info: false,
            language: {
                "emptyTable": "No existen datos"
            },
            data: r.d,
            columns: [
                { "data": "NumeroCaso" },
                { "data": "Circular" },
                { "data": "CodProyecto" },
                { "data": "NombreProyecto" },
                { "data": "Lugar" },
                { "data": "TipoVulneracion" },
                { "data": "TipoInvolucrado" }
            ]
        });
    });
}

function CargarGrillaAgresor(cod_nino) {
    $('#divLoading').modal('show');
    var parametros = JSON.stringify({
        'codnino': cod_nino
    });
    $.ajax({
        type: "POST",
        dataType: "json",
        url: "FichaIndividual.aspx/ObtenerDatosAgresor",
        data: parametros,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
        },
        error: function (r) {
            $('#divLoading').modal('hide');
            DesplegarExcepcionCriticaApp(r.responseText);
        }
    }).then(function (r) {
        var datatableVariable = $('#tblCasoAgresor').DataTable({
            paging: false,
            searching: false,
            ordering: false,
            info: false,
            language: {
                "emptyTable": "No existen datos"
            },
            data: r.d,
            columns: [
                { "data": "NumeroCaso" },
                { "data": "TipoInvolucrado" },
                { "data": "TipoAgredido" },
                { "data": "TipoRelacion" },
                { "data": "CantidadInvolucrados" }
            ]
        });
    });
}

function CargarGrillaMedidas(cod_nino) {
    $('#divLoading').modal('show');
    var parametros = JSON.stringify({
        'codnino': cod_nino
    });
    $.ajax({
        type: "POST",
        dataType: "json",
        url: "FichaIndividual.aspx/ObtenerDatosMedidas",
        data: parametros,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
        },
        error: function (r) {
            $('#divLoading').modal('hide');
            DesplegarExcepcionCriticaApp(r.responseText);
        }
    }).then(function (r) {
        var datatableVariable = $('#tblMedidas').DataTable({
            paging: false,
            searching: false,
            ordering: false,
            info: false,
            language: {
                "emptyTable": "No existen datos"
            },
            data: r.d,
            columns: [
                { "data": "NumeroCaso" },
                { "data": "MedidaImplementada" },
                { "data": "TipoInvolucrado" }
            ]
        });
    });
}