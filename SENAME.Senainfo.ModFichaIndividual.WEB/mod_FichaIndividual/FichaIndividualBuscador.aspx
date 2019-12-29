<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FichaIndividualBuscador.aspx.cs" Inherits="SENAME.Senainfo.ModFichaIndividual.WEB.ModFichaIndividual.FichaIndividualBuscador" %>

<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<%@ Register Src="~/menu_colgante.ascx" TagPrefix="uc2" TagName="menu_colgante" %>--%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BUSCADOR DE FICHA INDIVIDUAL  :: Senainfo :: Servicio Nacional de Menores</title>

<%--    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery-ui.js"></script>
    <link href="../css/jquery-ui.css" rel="stylesheet" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../css/theme.css" rel="stylesheet" />
    <link href="../css/themes/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/jquery-confirm.min.css" rel="stylesheet" />
    <script src="../js/moment.min.js"></script>
    <link href="../css/jquery.ui.theme.css" rel="stylesheet" />--%>

        <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="Content/css/fichaIndividual.css" />
    <link href="Scripts/sweetalert2/sweetalert2.min.css" rel="stylesheet" />
    <script type='text/javascript' src="Scripts/sweetalert2/sweetalert2.all.min.js"></script>
    <script type='text/javascript' src="Scripts/Ficha_Individual/funcionesComunes.js"></script>
    <script type='text/javascript' src="Scripts/Ficha_Individual/FI_Buscador.js"></script>

</head>
<body>

    <!-- estructura formulario principal -->
    <div class="container-fluid bgcontainerfluid">
        <form id="forminju" runat="server">
            <%--DESCOMENTAR SIGUIENTE LINEA PARA SU VERSIÓN EN SENAINFO --%>
            <%--<uc2:menu_colgante runat="server" ID="menu_colgante" />--%>
            <!-- Campos Ocultos -->
            <asp:HiddenField ID="idusuario_conect" runat="server" />
            <asp:HiddenField ID="tokensUsr" runat="server" />
        </form>
        <div class="container ctop">
            <h2 style="color: #0F69B4; margin-top: 10px;">Buscador de Ficha Individual</h2>
            <div class="row yellow-border">

                <!-- instituciones -->
                <div class="col-xs-12 col-md-3 mytop1 color-word-form">
                    <label for="Instituciones">Instituciones</label>
                </div>

                <div class="col-xs-12 col-md-9 mytop1 ">
                    <div class="input-group">
                        <select class="form-control"
                            id="cmbInstitucion"
                            onchange="CargaProyectosInstitucion(this.value);">
                        </select>

                        <div class="input-group-btn">
                            <button
                                type="button"
                                class="btn btn-primary dropdown-toggle "
                                data-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false"
                                id="botoninst"
                                style="font-size: 12px !important;">
                                <img src="images/pregunta_12png.png">
                            </button>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li>
                                    <a href="#">Información
                                            <br />
                                        Seleccione una Institución </a>
                                </li>
                            </ul>
                        </div>
                        <!-- /btn-group -->
                    </div>
                </div>

                <!-- proyecto -->
                <div class="col-xs-12 col-md-3 mytop1 color-word-form">
                    <label for="proyecto">Proyecto</label>
                </div>

                <div class="col-xs-12 col-md-9 mytop1">
                    <div class="input-group">
                        <select class="form-control"
                            id="cmbProyecto">
                            <%--<option disabled selected value="todas">Seleccione un Proyecto</option>--%>
                        </select>


                        <div class="input-group-btn">
                            <button
                                type="button"
                                class="btn btn-primary dropdown-toggle botoninst"
                                data-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false"
                                id="botoninst2"
                                style="font-size: 12px !important;">
                                <img src="images/pregunta_12png.png">
                            </button>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li>
                                    <a href="#">Información
                                            <br />
                                        Seleccione un Proyecto </a>
                                </li>
                            </ul>
                        </div>
                        <!-- /btn-group -->
                    </div>
                </div>

                <!-- run niño(a) -->
                <div class="col-xs-12 col-md-3 mytop1 color-word-form">
                    <label for="runino">RUN Niño(a)*</label>
                </div>

                <div class="col-xs-12 col-md-9 mytop1">
                    <input
                        type="text"
                        class="form-control"
                        id="txtRutnino" />
                </div>

                <!-- codigo niño(a) -->
                <div class="col-xs-12 col-md-3 mytop1 color-word-form">
                    <label for="codnino">Código Niño(a)*</label>
                </div>

                <div class="col-xs-12 col-md-9 mytop1 color-word-form">
                    <input
                        type="number"
                        class="form-control"
                        id="txtCodnino" />
                </div>

                <!-- Nombre niño(a) -->
                <div class="col-xs-12 col-md-3 mytop1 color-word-form">
                    <label for="nombrenino">Nombre Niño(a)*</label>
                </div>

                <div class="col-xs-12 col-md-9 mytop1">
                    <input
                        class="form-control"
                        id="txtNombnino" />
                </div>

                <!-- Apellido Paterno niño(a) -->
                <div class="col-xs-12 col-md-3 mytop1 color-word-form diflex">
                    <label for="apellidopatnino" class="textauto">Apellido Paterno*</label>
                </div>

                <div class="col-xs-12 col-md-9 mytop1">
                    <input
                        class="form-control"
                        id="txtApellidopatnino" />
                </div>

                <!-- Sexo niño(a) -->
                <div class="col-xs-12 col-md-3 mytop1 color-word-form">
                    <label for="sexonino">Sexo Niño(a)*</label>
                </div>

                <div class="col-xs-12 col-md-9 mytop1 diflex color-word-form">
                    <div class="form-check form-check-inline ">
                        <input
                            class="form-check-input "
                            name="OptSexo"
                            type="radio"
                            id="optFemenino"
                            value="F" />
                        <label class="form-check-label mright2" for="inlineRadio1">
                            Femenino</label>
                    </div>
                    <div class="form-check form-check-inline ">
                        <input
                            class="form-check-input"
                            name="OptSexo"
                            type="radio"
                            id="optMasculino"
                            value="M" />
                        <label class="form-check-label" for="inlineRadio2">
                            Masculino</label>
                    </div>
                </div>

                <div class="col-xs-12 col-md-12 mytop1 mensajeform" id="divMsjError">
                    <p class="mrlauto" id="lblMensaje" style="margin-top: 4px !important; margin-bottom: 4px !important; text-align: center;">
                    </p>
                </div>

                <div class="col-xs-12 col-sm-6 col-md-6 diflex mytop1">
                    <button type="button" id="btnBuscarFicha" class="btn btn-primary mrlauto botonw" onclick="BuscarFicha">Buscar Ficha</button>
                </div>

                <div class="col-xs-12 col-sm-6 col-md-6 diflex mytop1">
                    <button type="button" id="btnLimpiar" class="btn btn-narj mrlauto botonw" onclick="LimpiarFormularioBusquedaFI">Limpiar</button>
                </div>

                <!-- resultados de la Busqueda -->
                <div id="FichaIndividualResultadosBusqueda" class="mytop1y">
                </div>

            </div>
        </div>
        <div class="modal fade bd-example-modal-lg" data-backdrop="static" data-keyboard="false" tabindex="-1">
            <div class="modal-dialog modal-sm">
                <img src="images/loading.gif" style="width: 50%; display: block; margin: auto;" />
            </div>
        </div>
    </div>
</body>
</html>
