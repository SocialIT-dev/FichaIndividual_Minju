<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FichaIndividual.aspx.cs" Inherits="SENAME.Senainfo.ModFichaIndividual.WEB.ModFichaIndividual.FichaIndividual" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<%@ Register Src="~/menu_colgante.ascx" TagPrefix="uc2" TagName="menu_colgante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Proyecto Minju</title>

    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery-ui.js"></script>
    <link href="../css/jquery-ui.css" rel="stylesheet" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../css/theme.css" rel="stylesheet" />
    <link href="../css/themes/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/jquery-confirm.min.css" rel="stylesheet" />
    <script src="../js/moment.min.js"></script>
    <link href="../css/jquery.ui.theme.css" rel="stylesheet" />

    <%--<script src="scripts/jquery-3.2.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <link href="content/bootstrap.min.css" rel="stylesheet" />
    <link href="content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="content/bootstrap.min.css" rel="stylesheet" />--%>


    <link rel="stylesheet" href="content/css/fichaindividual.css" />
    <link href="scripts/datatables-1.10.20/css/jquery.datatables.min.css" rel="stylesheet" />
    <script src="scripts/datatables-1.10.20/js/jquery.datatables.min.js"></script>
    <link href="Scripts/sweetalert2/sweetalert2.min.css" rel="stylesheet" />
    <script type='text/javascript' src="Scripts/sweetalert2/sweetalert2.all.min.js"></script>
    <script type='text/javascript' src="Scripts/Ficha_Individual/funcionesComunes.js"></script>
    <script type='text/javascript' src="Scripts/Ficha_Individual/fichaIndividual.js"></script>
</head>

<body>

    <!-- titulo ficha, botones -->
    <div class="container-fluid" style="background: #F8F8F8;">
        <form id="forminju" runat="server">
            <%--DESCOMENTAR SIGUIENTE LINEA PARA SU VERSIÓN EN SENAINFO --%>
            <uc2:menu_colgante runat="server" ID="menu_colgante" />
            <asp:HiddenField ID="idusuario_conect" runat="server" />
            <asp:HiddenField ID="tokensUsr" runat="server" />
            <asp:HiddenField ID="hdnCodProyecto" runat="server" Value="" />
            <asp:HiddenField ID="hdnCodNino" runat="server" Value="" />
            <asp:HiddenField ID="hdnAnioVisita" runat="server" Value="" />
            <asp:HiddenField ID="hdnAnioPernocta" runat="server" Value="" />
        </form>

        <div class="container mytop1">

            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6">
                    <h2 style="color: #0F69B4; margin-top: 10px;">FICHA INDIVIDUAL</h2>
                </div>
                <div class="col-xs-6 col-sm-3 col-md-4 diflex mytop1">
                    <div class="btn-group mlficha">
                        <button type="button" class="btn btn-primary mlficha botonw2 dropdown-toggle" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false" id="botonimprimir">
                            <img src="images/pdf.svg" style="margin-left: -10px; margin-right: 2rem;" />
                            IMPRIMIR
                        </button>
                        <div class="dropdown-menu"
                            style="min-width: 280px; padding: 20px; text-align: center; border: 1px solid black;">
                            <p>Secciones a Imprimir</p>
                            <div class="checkbox" style="text-align: left; font-size: 9px;">
                                <label for="antecedentes" class="ntop1">
                                    <input type="checkbox" name="antecedentes" id="chkGenerales" />I. ANTECEDENTES GENERALES DEL NIÑO, NIÑA O ADOLESCENTE
                                </label>
                                <br />
                                <label for="antecedentes2" class="ntop1">
                                    <input type="checkbox" name="antecedentes2" id="chkProcesales" />II. ANTECEDENTES PROCESALES
                                </label>
                                <br />
                                <label for="antecedentes3" class="ntop1">
                                    <input type="checkbox" name="antecedentes3" id="chkSalud" />III. ANTECEDENTES DE SALUD
                                </label>
                                <br />
                                <label for="antecedentes4" class="ntop1">
                                    <input type="checkbox" name="antecedentes4" id="chkEscolares" />IV. ANTECEDENTES ESCOLARES
                                </label>
                                <br />
                                <label for="antecedentes5" class="ntop1">
                                    <input type="checkbox" name="antecedentes5" id="chkConsumo" />V. ANTECEDENTES DE COSUMO
                                </label>
                                <br />
                                <label for="antecedentes6" class="ntop1">
                                    <input type="checkbox" name="antecedentes6" id="chkFamiliar" />VI. SITUACIÓN FAMILIAR
                                </label>
                                <br />
                                <label for="antecedentes7" class="ntop1">
                                    <input type="checkbox" name="antecedentes7" id="chkVisitas" />VII. VISITAS
                                </label>
                                <br />
                                <label for="antecedentes8" class="ntop1">
                                    <input type="checkbox" name="antecedentes8" id="chkIntervencion" />VIII. PROCESO DE INVTERVENCIÓN
                                </label>
                                <br />
                                <label for="antecedentes9" class="ntop1">
                                    <input type="checkbox" name="antecedentes9" id="chkSugerenciaTribunal" />SUGERENCIAS AL TRIBUNAL DE ORIGEN
                                </label>
                                <br />
                                <label for="antecedentes10" class="ntop1">
                                    <input type="checkbox" name="antecedentes10" id="chkSugerenciaSename" />SUGERENCIAS A SENAME
                                </label>
                                <br />
                                <label for="antecedentes11" class="ntop1">
                                    <input type="checkbox" name="antecedentes11" id="chkTodo" />Todo el documento
                                </label>
                                <br />
                                <div class="diflex">
                                    <button type="button" class="btn btn-primary mrlauto botonw2" id="btnImprimirFicha">
                                        IMPRIMIR</button>.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-3 col-md-2 diflex mytop1">
                    <a href="FichaIndividualBuscador.aspx" type="submit" class="btn btn-narj mlficha botonw2 textauto">
                        <img src="images/volver.svg" style="margin-left: -10px; margin-right: 2rem;" />VOLVER
                    </a>
                </div>
            </div>
        </div>
        <!-- Modal Alert -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title"><span class="glyphicon glyphicon-alert"></span>&nbsp;Atención!</h4>
                    </div>
                    <div class="modal-body">
                        <p id="msgError"></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- primer cuadro de informacion principal -->
    <div class="container mytop1 yellow-border2" style="background: #F8F8F8;">
        <div class="row ">
            <div class="col-xs-12 col-md-1" style="margin-top: 8px; margin-top: .8rem; margin-bottom: .8rem;">
                <p style="color: #0F69B4; font-weight: 600;">Rit</p>
            </div>
            <div class="col-xs-12 col-md-5 ">
                <input type="text" class="inputficha" style="width: 100%;" id="txtRit" runat="server" readonly="true" />
            </div>
            <div class="col-xs-12 col-md-1" style="margin-top: 8px; margin-top: .8rem; margin-bottom: .8rem;">
                <p style="color: #0F69B4; font-weight: 600;">Otros Rit</p>
            </div>
            <div class="col-xs-12 col-md-5 ">
                <input type="text" class="inputficha" style="width: 100%;" id="txtOtrosRit" runat="server" readonly="true" />
            </div>
        </div>
        <div class="row ntop1">
            <div class="col-xs-12 col-md-1" style="margin-top: 8px; margin-top: .8rem; margin-bottom: .8rem;">
                <p style="color: #0F69B4; font-weight: 600;">Tribunal</p>
            </div>
            <div class="col-xs-12 col-md-5">
                <input type="text" class="inputficha" style="width: 100%;" id="txtTribunal" runat="server" readonly="true" />
            </div>
            <div class="col-xs-12 col-md-1" style="margin-top: 8px; margin-top: .8rem; margin-bottom: .8rem;">
                <p style="color: #0F69B4; font-weight: 600;">Tribunal</p>
            </div>
            <div class="col-xs-12 col-md-5">
                <input type="text" class="inputficha" style="width: 100%;" id="txtOtroTribunal" runat="server" readonly="true" />
            </div>
        </div>
    </div>

    <!-- segundo cuadro de informacion secundaria -->
    <div class="container yellow-border3">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-2 colfechavisita hcol">
                <p>FECHA VISITA</p>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 colpfecha hcol">
                <%--  <p class="inputficha2" style="margin-top: 5px; margin-bottom: 5px;" id="P1" runat="server"></p>--%>
                <input type="text" class="inputficha2" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtFechaVisita" runat="server" readonly="true" />
            </div>
            <div class="col-xs-12 col-sm-12 col-md-2 colhoravisita hcol">
                <p>HORA VISITA</p>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 colphora hcol">
                <input type="text" class="inputficha2" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtHoraVisita" runat="server" readonly="true" />
            </div>

            <div class="col-xs-12 col-sm-12 col-md-2 coljuezvisita hcol diflex">
                <p>JUEZ VISITADOR</p>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-3 colpjuez hcol">
                <input type="text" class="inputficha2" style="margin-top: 5px; margin-bottom: 6px; width: 100%;" id="txtJuezVisitador" runat="server" readonly="true" />
            </div>
            <div class="col-xs-12 col-sm-12 col-md-3 colconsejero hcol">
                <p>CONSEJERO TÉCNICO</p>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 colptecnico hcol">
                <input type="text" class="inputficha2" style="margin-top: 5px; margin-bottom: 6px; width: 100%;" id="txtConsejeroTecnico" runat="server" readonly="true" />
            </div>
        </div>
    </div>

    <!-- antecedentes generales del niño, niña o adolescente -->

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading " role="tab" id="headingOne" style="background: #0690F5;">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#ANTECEDENTES1"
                                    aria-expanded="true" aria-controls="ANTECEDENTES1" style="color: white; text-decoration: none; text-decoration: none;" class="diflex tituloarrow">I. ANTECEDENTES GENERALES DEL NIÑO, NIÑA o ADOLESCENTE 
                    <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display: none;">&#9650;</span>

                                </a>
                            </h4>
                        </div>
                        <!-- 
              Para dejar una sección desplegada se debe agregar la clase "in" 
              class="panel-collapse collapse in"
               -->
                        <div id="ANTECEDENTES1" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body">
                                <div class="row" style="margin-right: 0px; margin-left: 0px;">
                                    <!-- info personal niño -->
                                    <div class="col-xs-12 col-sm-12 col-md-2 colfechavisita hcol">
                                        <p>NOMBRE DEL NIÑO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtNombreNino" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                                        <p class="textauto">RUT</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidtop hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtRutNino" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                                        <p class="textauto">FILIACIÓN</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtFilacion" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                                        <p class="textauto">SEXO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtSexoNino" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                                        <p class="textauto">FECHA DE NACIMIENTO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtFechaNacimientoNino" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                                        <p class="textauto">EDAD</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidmbot hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtEdadNino" runat="server" readonly="true" />
                                    </div>
                                    <!-- info nacionalidad niño -->
                                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 nt3 colnacionalidad hcol diflex">
                                        <p class="textauto">NACIONALIDAD</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtNacionalidadNino" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 colmidgene hcol diflex">
                                        <p class="textauto">N. PASAPORTE</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtPasaporteNino" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 colmidgene hcol diflex">
                                        <p class="textauto">COD. NIÑO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 colcodnino hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtCodNino" runat="server" readonly="true" />
                                    </div>

                                    <!-- infor proyecto -->
                                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 nt3 colfechavisita hcol diflex">
                                        <p>NOMBRE DEL PROYECTO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtNombreProyecto" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colmidgene hcol diflex">
                                        <p class="textauto">COMUNA DEL PROYECTO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colgeneralesmidtop hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtComunaProyecto" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgenebot hcol diflex">
                                        <p class="textauto">TIPO DE PROYECTO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-10 colgeneralesmidmbot hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtTipoProyecto" runat="server" readonly="true" />
                                    </div>

                                    <!-- infomadre -->
                                    <div class="col-xs-12 col-sm-12 col-md-3 nt3 colfechavisita ntop2 hcol">
                                        <p>NOMBRE DE LA MADRE</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid ntop2 hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtNombreMadre" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene ntop2 hcol diflex">
                                        <p class="textauto">RUT</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidtop ntop2 hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtRutMadre" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                                        <p class="textauto">DIRECCIÓN</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtDireccionMadre" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                                        <p class="textauto">ESTADO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtEstadoMadre" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgenebot hcol diflex">
                                        <p class="textauto">NACIONALIDAD</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtNacionalidadMadre" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                                        <p class="textauto">N. PASAPORTE</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidmbot hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtPasaporteMadre" runat="server" readonly="true" />
                                    </div>

                                    <!-- info padre -->
                                    <div class="col-xs-12 col-sm-12 col-md-3  nt3 colfechavisita ntop2 hcol">
                                        <p class="textauto">NOMBRE DEL PADRE</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid ntop2 hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtNombrePadre" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene ntop2 hcol diflex">
                                        <p class="textauto">RUT</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidtop ntop2 hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtRutPadre" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                                        <p class="textauto">DIRECCIÓN</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtDireccionPadre" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                                        <p class="textauto">ESTADO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtEstadoPadre" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgenebot hcol diflex">
                                        <p class="textauto">NACIONALIDAD</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtNacionalidadPadre" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                                        <p class="textauto">N. PASAPORTE</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidmbot hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtPasaportePadre" runat="server" readonly="true" />
                                    </div>

                                    <!-- infor ingreso residencia -->

                                    <div class="col-xs-12 col-sm-12 col-md-5 ntop2 nt3 colnacionalidad hcol diflex">
                                        <p style="margin-top: auto; margin-bottom: auto;">
                                            COMUNA DE RESIDENCIA AL INGRESO DEL NNA
                                        </p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-7 ntop2 colcodnino hcol ">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtComunaResidencia" runat="server" readonly="true" />
                                    </div>

                                    <!-- info ayuda comunal -->

                                    <div class="col-xs-12 col-sm-12 col-md-3 colfechavisita nt3 ntop2 hcol">
                                        <p class="textauto">AYUDA COMUNAL</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid ntop2 hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtAyudaComunal" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene ntop2 hcol diflex">
                                        <p class="textauto">CUAL O CUALES?</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid ntop2 hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtCuales" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene  hcol diflex">
                                        <p class="textauto">APOYO COMUNITARIO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmidtop hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtApoyoComunitario" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene  hcol diflex">
                                        <p class="textauto">CHILE SOLIDARIO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtChileSolidario" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">CHILE CRECE CONTIGO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtChileCrece" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">FPS</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtFps" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene  hcol diflex">
                                        <p class="textauto">PUNTAJE</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmidmbot hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtPuntaje" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene  hcol diflex">
                                        <p class="textauto">FECHA APLICACIÓN</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtFechaAplicacion" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot  hcol diflex">
                                        <p class="textauto">ABRIENDO CAMINOS</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-9 colgeneralesmidmbot hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtAbriendoCaminos" runat="server" readonly="true" />
                                    </div>

                                    <!-- otros -->
                                    <div class="col-xs-12 col-sm-12 col-md-2 colnacionalidad nt3 ntop2 hcol diflex">
                                        <p class="textauto">OTROS</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-10 ntop2 colcodnino hcol ">
                                        <input text="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtOtros" runat="server" readonly="true" />
                                    </div>

                                    <!-- observacion -->
                                    <div class="col-xs-12 col-sm-12 col-md-2 colnacionalidad nt3 ntop2 hcol diflex">
                                        <p class="textauto">OBSERVACIÓN</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-10 ntop2 colcodnino hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtObsGenerales" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                                        <h4 style="color: #0F69B4;">Datos obtenidos de PJUD
                                        </h4>
                                    </div>

                                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2 diflex"
                                        style="padding-left: 0px; padding-right: 0px;">
                                        <h6 style="color: #0F69B4;" class="mlficha2">Ultima actualización <%= DateTime.Now.ToString("dd/MM/yyyy") %>
                                        </h6>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 mytop1y" style="padding-left: 0px; padding-right: 0px !important;">
                                        <hr class="hrmin" />
                                    </div>

                                    <p style="color: #666363;">
                                        <img src="images/pdf_gray.svg" />
                                        ANTECEDENTES GENERALES Provenientes del sistema SENAINFO
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- antecedentes procesales -->

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading " role="tab" id="colapso2" style="background: #0690F5;">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#ANTECEDENTES2"
                                    aria-expanded="true" aria-controls="ANTECEDENTES2" class="diflex tituloarrow" style="color: white; text-decoration: none;">II. ANTECEDENTES PROCESALES

                     <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display: none;">&#9650;</span>
                                </a>

                            </h4>
                        </div>
                        <div id="ANTECEDENTES2" class="panel-collapse collapse " role="tabpanel" aria-labelledby="colapso2">
                            <div class="panel-body">
                                <div class="row" style="margin-right: 0px; margin-left: 0px;">
                                    <!-- Fecha ingreso -->
                                    <div class="col-xs-12 col-sm-12 col-md-6 colfechavisita hcol">
                                        <p>FECHA DE INGRESO EFECTIVO RESIDENCIA ACTUAL</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtFechaIngresoActual" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 colmidgene hcol diflex">
                                        <p class="textauto">
                                            FECHA DEL 1er. INGRESO AL SISTEMA RESIDENCIAL
                                        </p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 colgeneralesmidtop hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtFechaPrimerIngreso" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colmidgene hcol diflex">
                                        <p class="textauto">FECHA DE ÚLTIMA MEDIDA</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtFechaUltimaMedida" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">CLASE DE LA MEDIDA</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtClaseMedida" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-4 colmidgenebot hcol diflex">
                                        <p class="textauto">DURACIÓN DE LA ÚLTIMA MEDIDA</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtDuracionMedida" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">CAUSAL DE INGRESO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidmid hcol">
                                        <div class="input-group hcol">
                                            <div class="input-group-btn">
                                                <div class="btn-group mlficha">
                                                    <button type="button" class="btn btn-narj botondetallesform dropdown-toggle" data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false" id="btnDetalleCausal">
                                                        <p class="botondetalles">
                                                            <img src="images/calendario.svg"
                                                                style="margin-left: -10px; margin-bottom: 5px; margin-right: .5rem;" />
                                                            VER DETALLE
                                                        </p>
                                                    </button>
                                                    <div class="dropdown-menu"
                                                        style="min-width: 280px; padding: 20px; text-align: center; border: 1px solid black;">
                                                        <div class="row">
                                                            <p>Causales de Ingreso</p>
                                                            <div class="checkbox" style="text-align: left; font-size: 9px;">
                                                                <label for="causal1" class="ntop1">
                                                                    <input type="checkbox" id="causal1" disabled="disabled" runat="server" />Maltrato y/o violencia
                                                                </label>
                                                                <br />
                                                                <label for="causal2" class="ntop1">
                                                                    <input type="checkbox" id="causal2" disabled="disabled" runat="server" />Transgresión en la esfera de la sexualidad
                                                                </label>
                                                                <br />
                                                                <label for="causal3" class="ntop1">
                                                                    <input type="checkbox" id="causal3" disabled="disabled" runat="server" />Explotación sexual comercial infantil ESCNNA
                                                                </label>
                                                                <br />
                                                                <label for="causal4" class="ntop1">
                                                                    <input type="checkbox" id="causal4" disabled="disabled" runat="server" />Abandono
                                                                </label>
                                                                <br />
                                                                <label for="causal5" class="ntop1">
                                                                    <input type="checkbox" id="causal5" disabled="disabled" runat="server" />Consumo Droga del adulto a cargo
                                                                </label>
                                                                <br />
                                                                <label for="causal6" class="ntop1">
                                                                    <input type="checkbox" id="causal6" disabled="disabled" runat="server" />Consumo Alcohol del adulto a cargo
                                                                </label>
                                                                <br />
                                                                <label for="causal7" class="ntop1">
                                                                    <input type="checkbox" id="causal7" disabled="disabled" runat="server" />Falta de habilidades parentales
                                                                </label>
                                                                <br />
                                                                <label for="causal8" class="ntop1">
                                                                    <input type="checkbox" id="causal8" disabled="disabled" runat="server" />Situación de Calle
                                                                </label>
                                                                <br />
                                                                <label for="causal9" class="ntop1">
                                                                    <input type="checkbox" id="causal9" disabled="disabled" runat="server" />Negligencia Grave
                                                                </label>
                                                                <br />
                                                                <label for="causal10" class="ntop1">
                                                                    <input type="checkbox" id="causal10" disabled="disabled" runat="server" />Trastornos de salud inhabilitantes del adulto a cargo
                                                                </label>
                                                                <br />
                                                                <label for="causal11" class="ntop1">
                                                                    <input type="checkbox" id="causal11" disabled="disabled" runat="server" />Ser testigo de VIF
                                                                </label>
                                                                <br />
                                                                <label for="causal12" class="ntop1">
                                                                    <input type="checkbox" id="causal12" disabled="disabled" runat="server" />Peores formas de trabajo infantil (PFTI)
                                                                </label>

                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Button trigger modal -->

                                    <!-- Requirente de medida de proteccion -->
                                    <div class="col-xs-12 col-sm-12 col-md-6 ntop2 nt3 colnacionalidad hcol diflex">
                                        <p class="textauto">
                                            REQUIRENTE DE MEDIDA DE PROTECCIÓN
                                        </p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 ntop2 colcodnino hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtRequirente" runat="server" readonly="true" />
                                    </div>

                                    <!-- Hermanos en sistema -->
                                    <div class="col-xs-12 col-sm-12 col-md-7 nt3 colfechavisita ntop2 hcol">
                                        <p>HERMANOS EN SISTEMA RESIDENCIAL</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-5 colgeneralesmidtop ntop2 hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtHnosEnSistema" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-7 colmidgene  hcol diflex">
                                        <p class="textauto">
                                            HERMANOS FUERA DEL SISTEMA MENORES 18 AÑOS
                                        </p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-5 colgeneralesmid  hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtHnosFueraSistema" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-7 colmidgene hcol diflex">
                                        <p class="textauto">HERMANOS EN SISTEMA RESIDENCIAL</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-5 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtHnosEnSistemaR" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-7 colmidgene hcol diflex">
                                        <p class="textauto">
                                            NIÑO, NIÑA O ADOLESCENTE HA SIDO ESCUCHADO POR EL JUEZ
                        DE LA CAUSA
                                        </p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-5 colgeneralesmidmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtEscuchado" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-7 colmidgene hcol diflex">
                                        <p class="textauto">FECHA ÚLTIMA ENTREVISTA</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-5 colgeneralesmidmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtFechaUltimaEntrevista" runat="server" readonly="true" />
                                    </div>

                                    <!-- observacion II -->
                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgenebot hcol diflex">
                                        <p class="textauto">OBSERVACIÓN</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-10 colgeneralesmidmbot hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtObsProcesales" runat="server" readonly="true" />
                                    </div>

                                    <!-- datos obtenidos -->
                                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                                        <h4 style="color: #0F69B4;">Datos obtenidos de PJUD
                                        </h4>
                                    </div>

                                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2 diflex"
                                        style="padding-left: 0px; padding-right: 0px;">
                                        <h6 style="color: #0F69B4;" class="mlficha2">Ultima actualización <%= DateTime.Now.ToString("dd/MM/yyyy") %>
                                        </h6>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- antecedentes de salud -->

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading " role="tab" id="ANTECEDENTESCOLAPSE3" style="background: #0690F5;">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#ANTECEDENTES3"
                                    aria-expanded="true" class="diflex tituloarrow" aria-controls="ANTECEDENTES3" style="color: white; text-decoration: none;">III. ANTECEDENTES DE SALUD
                    <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display: none;">&#9650;</span>
                                </a>
                            </h4>
                        </div>
                        <div id="ANTECEDENTES3" class="panel-collapse collapse" role="tabpanel"
                            aria-labelledby="ANTECEDENTESCOLAPSE3">
                            <div class="panel-body">
                                <div class="row" style="margin-right: 0px; margin-left: 0px;">
                                    <!-- Definicion de enfermedades -->
                                    <div class="col-xs-12 col-sm-12 col-md-3 colfechavisita hcol">
                                        <p>INSCRITO EN CONSULTORIO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtInscritoConsultorio" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">FECHA ÚLTIMO CONTROL</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidtop hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtFechaUltControl" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 colmidgene hcol diflex">
                                        <p class="textauto">
                                            ENFERMEDAD CRÓNICA CON DIAGNÓSTICO MÉDICO
                                        </p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtDiagnostico" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">ENFERMEDAD CRÓNICA</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtCronica" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">RECIBE TRATAMIENTO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtTratamiento" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 colmidgenebot hcol diflex">
                                        <p class="textauto">
                                            PRESENTA PROBLEMA DE SALUD MENTAL
                                        </p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 colgeneralesmidmbot hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtSaludMental" runat="server" readonly="true" />
                                    </div>

                                    <!--  diagnostico y discapacidad-->
                                    <div class="col-xs-12 col-sm-12 col-md-3 nt3 colfechavisita ntop2 hcol">
                                        <p>FUE DIAGNOSTICADO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid ntop2 hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtDiagnosticado" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-5 colmidgene ntop2 hcol diflex">
                                        <p class="textauto">
                                            RECIBE TRATAMIENTO DE ACUERDO AL DIAGNÓSTICO
                                        </p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmidtop ntop2 hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtTratamientoDiagnostico" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">TIENE DISCAPACIDAD</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtTieneDiscapacidad" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-5 colmidgene hcol diflex">
                                        <p class="textauto">QUIÉN REALIZA EL TRATAMIENTO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmidmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtTratadoPor" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                                        <p class="textauto">RECIBE TRATAMIENTO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmidmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtTratamientoDiscapacidad" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">REGISTRO DE DISCAPACIDAD</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtRegistroDiscapacidad" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                                        <p class="textauto">TIPO DE DISCAPACIDAD</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmidmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtTipoDiscapacidad" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">NIVEL DE DISCAPACIDAD</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidmbot hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtNivelDiscapacidad" runat="server" readonly="true" />
                                    </div>

                                    <!-- observacion III -->
                                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 nt3 colnacionalidad hcol diflex">
                                        <p class="textauto">OBSERVACIÓN</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-10 ntop2 colcodnino hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtObsDiscapacidad" runat="server" readonly="true" />
                                    </div>

                                    <!-- datos obtenidos -->
                                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                                        <h4 style="color: #0F69B4;">Datos obtenidos del Sename
                                        </h4>
                                    </div>

                                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2 diflex"
                                        style="padding-left: 0px; padding-right: 0px;">
                                        <h6 style="color: #0F69B4;" class="mlficha2">Ultima actualización <%= DateTime.Now.ToString("dd/MM/yyyy") %>
                                        </h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- antecedentes escolares -->

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading " role="tab" id="ANTECEDENTESCOLAPSE4" style="background: #0690F5;">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#ANTECEDENTES4"
                                    aria-expanded="true" class="diflex tituloarrow" aria-controls="ANTECEDENTES4" style="color: white; text-decoration: none;">IV. ANTECEDENTES ESCOLARES
                       <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display: none;">&#9650;</span>
                                </a>
                            </h4>
                        </div>
                        <div id="ANTECEDENTES4" class="panel-collapse collapse " role="tabpanel"
                            aria-labelledby="ANTECEDENTESCOLAPSE4">
                            <div class="panel-body">
                                <div class="row" style="margin-right: 0px; margin-left: 0px;">
                                    <!-- informacion del curso y cursos aprobados -->
                                    <div class="col-xs-12 col-sm-12 col-md-3 colfechavisita hcol">
                                        <p>CURSO ACTUAL</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtCursoActual" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">ÚLTIMO CURSO APROBADO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidtop hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtUltimoCurso" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 colmidgene hcol diflex">
                                        <p class="textauto">AÑO ULTIMO CURSO APROBADO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtUltimoAgnoAprobado" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 colmidgene hcol diflex">
                                        <p class="textauto">ASISTENCIA ESCOLAR</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 colgeneralesmid hcol">
                                        <div class="input-group hcol">
                                            <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 98%;" id="txtAsistenciaEscolar" runat="server" readonly="true" />
                                            <div class="input-group-btn ">
                                                <!-- Button trigger modal -->

                                                <button type="button" class="btn btn-narj botondetallesform" data-toggle="modal"
                                                    data-target="#detalles_asistencia">
                                                    <p class="botondetalles">
                                                        <img src="images/calendario.svg" id="btnDetalleAsistencia"
                                                            style="margin-left: -10px; margin-bottom: 5px; margin-right: .5rem;" />VER DETALLES
                                                    </p>
                                                </button>

                                                <!-- Modal Asistencia  -->
                                                <div class="modal fade " id="detalles_asistencia" tabindex="-1" role="dialog"
                                                    aria-labelledby="myModalLabel">
                                                    <div class="modal-dialog " role="document" style="width: 100%; padding: 5rem;">
                                                        <div class="modal-content ">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>

                                                            <div class="container calendariowidth">
                                                                <div class="row" style="margin-top: 1rem; margin-bottom: 1rem;">
                                                                    <div class="col-xs-12 col-md-12">
                                                                        <h2 style="color: #0F69B4;" class="detallemes">DETALLES POR MES
                                                                        </h2>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1  hcol diflex col-ene1" style="height: 36px;">
                                                                        <h6 class="textauto">ENE</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                                                        <h6>
                                                                            <input type="text" id="txtEscEne" runat="server" style="border: none;" /></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex" style="height: 36px;">
                                                                        <h6 class="textauto">FEB</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2 col-feb">
                                                                        <h6>
                                                                            <input type="text" id="txtEscFeb" runat="server" style="border: none;" /></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex" style="height: 36px;">
                                                                        <h6 class="textauto">MAR</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                                                        <h6>
                                                                            <input type="text" id="txtEscMar" runat="server" style="border: none;" /></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex" style="height: 36px;">
                                                                        <h6 class="textauto">ABR</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2 col-abr">
                                                                        <h6>
                                                                            <input type="text" id="txtEscAbr" runat="server" style="border: none;" /></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex" style="height: 36px;">
                                                                        <h6 class="textauto">MAY</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                                                        <h6>
                                                                            <input type="text" id="txtEscMay" runat="server" style="border: none;" /></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex" style="height: 36px;">
                                                                        <h6 class="textauto">JUN</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2 col-jun">
                                                                        <h6>
                                                                            <input type="text" id="txtEscJun" runat="server" style="border: none;" /></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex" style="height: 36px;">
                                                                        <h6 class="textauto">JUL</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                                                        <h6>
                                                                            <input type="text" id="txtEscJul" runat="server" style="border: none;" /></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex" style="height: 36px;">
                                                                        <h6 class="textauto">AGO</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2 col-ago">
                                                                        <h6>
                                                                            <input type="text" id="txtEscAgo" runat="server" style="border: none;" /></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgenebot hcol diflex" style="height: 36px;">
                                                                        <h6 class="textauto">SEPT</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2"
                                                                        style="border-top: 1px solid #E1E1E1; border-bottom: 1px solid #E1E1E1;">
                                                                        <h6>
                                                                            <input type="text" id="txtEscSep" runat="server" style="border: none;" /></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex" style="height: 36px;">
                                                                        <h6 class="textauto">OCT</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2 col-oct">
                                                                        <h6>
                                                                            <input type="text" id="txtEscOct" runat="server" style="border: none;" /></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex col-nov1" style="height: 36px;">
                                                                        <h6 class="textauto">NOV</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2"
                                                                        style="border-top: 1px solid #E1E1E1; border-bottom: 1px solid #E1E1E1;">
                                                                        <h6>
                                                                            <input type="text" id="txtEscNov" runat="server" style="border: none;" /></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex" style="height: 36px;">
                                                                        <h6 class="textauto">DIC</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2 col-dic">
                                                                        <h6>
                                                                            <input type="text" id="txtEscDic" runat="server" style="border: none;" /></h6>
                                                                    </div>

                                                                    <div class="col-xs-6 col-sm-6 col-md-3 hcol diflex ntop2 ntop3 col-total" style="background-color: #F59806 !important;">
                                                                        <h6 class="textauto" style="margin-left: auto; margin-right: auto;">TOTAL
                                                                        </h6>
                                                                    </div>
                                                                    <div class="col-xs-6 col-sm-6 col-md-9 ntop2 hcol diflex ntop3" style="border-top: 1px solid #E1E1E1; border-bottom: 1px solid #E1E1E1; border-right: 1px solid #E1E1E1; border-radius: 0px 5px 5px 0px;">
                                                                        <h6 class="textauto" style="margin-left: auto; margin-right: auto;">
                                                                            <input type="text" id="txtEscTotal" runat="server" style="border: none;" /></h6>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="modal-footer">
                                                                <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button> -->
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /btn-group -->
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-6 colmidgene hcol diflex">
                                        <p class="textauto">RAZÓN INASISTENCIA Y/O DESERCIÓN</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtRazonInasistencia" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">PRESENTA RETRASO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtPresentaRetraso" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">NIVEL DIFERENCIAL</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtNivelDiferencial" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                                        <p class="textauto">OBSERVACIÓN</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-9 colgeneralesmidmbot hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtObservEducacion" runat="server" readonly="true" />
                                    </div>

                                    <!-- datos obtenidos -->
                                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                                        <h4 style="color: #0F69B4;">Datos obtenidos del Sename
                                        </h4>
                                    </div>

                                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2 diflex"
                                        style="padding-left: 0px; padding-right: 0px;">
                                        <h6 style="color: #0F69B4;" class="mlficha2">Ultima actualización <%= DateTime.Now.ToString("dd/MM/yyyy") %>
                                        </h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- antecedentes DE COSUMO -->

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading " role="tab" id="ANTECEDENTESCOLAPSE5" style="background: #0690F5;">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#ANTECEDENTES5"
                                    aria-expanded="true" class="diflex tituloarrow" aria-controls="ANTECEDENTES5" style="color: white; text-decoration: none;">V. ANTECEDENTES DE CONSUMO
                    <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display: none;">&#9650;</span>
                                </a>
                            </h4>
                        </div>
                        <div id="ANTECEDENTES5" class="panel-collapse collapse" role="tabpanel"
                            aria-labelledby="ANTECEDENTESCOLAPSE5">
                            <div class="panel-body">
                                <div class="row" style="margin-right: 0px; margin-left: 0px;">
                                    <!-- info de cosumo de drogas -->
                                    <div class="col-xs-12 col-sm-12 col-md-3 colfechavisita hcol">
                                        <p>CONSUME DROGAS</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtConsumeDrogas" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">TIPO DE DROGA</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidtop hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtTipoDroga" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">TIPO CONSUMO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtTipoConsumo" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colmidgene hcol diflex">
                                        <p class="textauto">TIENE EVALUACIÓN DE CONSUMO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmidmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtTieneEvaluacion" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                                        <p class="textauto">TIENE TRATAMIENTO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtTieneTratamiento" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">TIENE REHABILITACIÓN</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidmbot hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtTieneRehabilitacion" runat="server" readonly="true" />
                                    </div>

                                    <!-- informe sobre quien realiza la rehabilitacion, tratamiento y observacion -->
                                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colfechavisita hcol">
                                        <p>INSTITUCIÓN QUE LO REALIZA</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-9 ntop2 colgeneralesmidtop hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtInstitucionRehab" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-5 colmidgene hcol diflex">
                                        <p class="textauto">
                                            CONCLUSIONES DE ÚLTIMO INFORME DEL TRATAMIENTO
                                        </p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-7 colgeneralesmidtop hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtConclusiones" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgenebot hcol diflex">
                                        <p class="textauto">OBSERVACIÓN</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-10 colgeneralesmidmbot hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtObservConsumo" runat="server" readonly="true" />
                                    </div>

                                    <!-- datos obtenidos -->
                                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                                        <h4 style="color: #0F69B4;">Datos obtenidos del Sename
                                        </h4>
                                    </div>

                                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2 diflex"
                                        style="padding-left: 0px; padding-right: 0px;">
                                        <h6 style="color: #0F69B4;" class="mlficha2">Ultima actualización <%= DateTime.Now.ToString("dd/MM/yyyy") %>
                                        </h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- SITUACIÓN FAMILIAR -->

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading " role="tab" id="ANTECEDENTESCOLAPSE6" style="background: #0690F5;">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#ANTECEDENTES6"
                                    aria-expanded="true" class="diflex tituloarrow" aria-controls="ANTECEDENTES6" style="color: white; text-decoration: none;">VI. SITUACIÓN FAMILIAR
                       <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display: none;">&#9650;</span>
                                </a>
                            </h4>
                        </div>
                        <div id="ANTECEDENTES6" class="panel-collapse collapse " role="tabpanel"
                            aria-labelledby="ANTECEDENTESCOLAPSE6">
                            <div class="panel-body">
                                <div class="row" style="margin-right: 0px; margin-left: 0px;">
                                    <!-- info sobre el trabajo de egreso familiar -->
                                    <div class="col-xs-12 col-sm-12 col-md-5 colfechavisita hcol">
                                        <p>CON QUIEN EXISTE TRABAJO PARA EL EGRESO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-7 colgeneralesmidtop hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtTrabajoEgreso" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">DESDE CUANDO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtDesdeCuando" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">COMUNA</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtComunaSitFam" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">QUIEN REALIZA EL TRABAJO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-9 colgeneralesmidmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtRealizaTrabajo" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgenebot hcol diflex">
                                        <p class="textauto">OBSERVACIÓN</p>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-10 colgeneralesmidmbot hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtObservSitFam" runat="server" readonly="true" />
                                    </div>

                                    <!-- datos obtenidos -->
                                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                                        <h4 style="color: #0F69B4;">Datos obtenidos del Sename
                                        </h4>
                                    </div>

                                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2 diflex"
                                        style="padding-left: 0px; padding-right: 0px;">
                                        <h6 style="color: #0F69B4;" class="mlficha2">Ultima actualización <%= DateTime.Now.ToString("dd/MM/yyyy") %>
                                        </h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- VISITAS -->

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading " role="tab" id="ANTECEDENTESCOLAPSE7" style="background: #0690F5;">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#ANTECEDENTES7"
                                    aria-expanded="true" class="diflex tituloarrow" aria-controls="ANTECEDENTES7" style="color: white; text-decoration: none;">VII. VISITAS
                       <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display: none;">&#9650;</span>
                                </a>
                            </h4>
                        </div>
                        <div id="ANTECEDENTES7" class="panel-collapse collapse " role="tabpanel"
                            aria-labelledby="ANTECEDENTESCOLAPSE7">
                            <div class="panel-body">
                                <div class="row" style="margin-right: 0px; margin-left: 0px;">
                                    <!-- info personal niño -->
                                    <div class="col-xs-12 col-sm-12 col-md-3 colfechavisita hcol">
                                        <p>RECIBE VISITAS</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidtop hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtRecibeVisitas" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">QUIEN LA REALIZA</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidtop hcol">
                                        <select class="form-control inputfichaante" id="ddlVisitante" runat="server"
                                            style="height: 27px !important; font-size: 12px !important; margin-top: 3px;"
                                            onchange="RefrescarVisitas(this.value);">
                                            <option value="Madre">Madre</option>
                                            <option value="Padre">Padre</option>
                                            <option value="Hermana">Hermana</option>
                                            <option value="Hermano">Hermano</option>
                                            <option value="Otro">Otro</option>
                                            <option value="OtroMasculino">Otro Masculino</option>
                                            <option value="OtroExtensaFemenino">Otro Extensa Femenino</option>
                                            <option value="OtroExtensaMasculino">Otro Extensa Masculino</option>
                                        </select>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colmidgenebot hcol diflex">
                                        <p class="textauto">CANTIDAD</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-8 colgeneralesmidmbot hcol">
                                        <div class="input-group hcol">
                                            <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 98%;" id="txtCantidadVisitas" runat="server" readonly="true" />
                                            <div class="input-group-btn ">
                                                <!-- Button trigger modal -->

                                                <button type="button" class="btn btn-narj botondetallesform" data-toggle="modal"
                                                    data-target="#detalles1">
                                                    <p class="botondetalles">
                                                        <img src="images/calendario.svg"
                                                            style="margin-left: -10px; margin-bottom: 5px; margin-right: .5rem;" id="btnDetallesVisita" />VER DETALLES
                                                    </p>
                                                </button>

                                                <!-- Modal   -->
                                                <div class="modal fade " id="detalles1" tabindex="-1" role="dialog"
                                                    aria-labelledby="myModalLabel">
                                                    <div class="modal-dialog " role="document" style="width: 100%; padding: 5rem;">
                                                        <div class="modal-content ">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>

                                                            <div class="container calendariowidth">
                                                                <div class="row" style="margin-top: 1rem; margin-bottom: 1rem;">
                                                                    <div class="col-xs-12 col-md-12">
                                                                        <h2 style="color: #0F69B4;" class="detallemes">DETALLES POR MES
                                                                        </h2>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1  hcol diflex col-ene1">
                                                                        <h6 class="textauto">ENE</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                                                        <h6><span id="txtEne">0</span></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                        <h6 class="textauto">FEB</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2 col-feb">
                                                                        <h6><span id="txtFeb">0</span></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                        <h6 class="textauto">MAR</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                                                        <h6><span id="txtMar">0</span></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                        <h6 class="textauto">ABR</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2 col-abr">
                                                                        <h6><span id="txtAbr">0</span></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                        <h6 class="textauto">MAY</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                                                        <h6><span id="txtMay">0</span></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                        <h6 class="textauto">JUN</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2 col-jun">
                                                                        <h6><span id="txtJun">0</span></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                        <h6 class="textauto">JUL</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                                                        <h6><span id="txtJul">0</span></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                        <h6 class="textauto">AGO</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2 col-ago">
                                                                        <h6><span id="txtAgo">0</span></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgenebot hcol diflex">
                                                                        <h6 class="textauto">SEPT</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2"
                                                                        style="border-top: 1px solid #E1E1E1; border-bottom: 1px solid #E1E1E1;">
                                                                        <h6><span id="txtSep">0</span></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                        <h6 class="textauto">OCT</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2 col-oct">
                                                                        <h6><span id="txtOct">0</span></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex col-nov1">
                                                                        <h6 class="textauto">NOV</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2"
                                                                        style="border-top: 1px solid #E1E1E1; border-bottom: 1px solid #E1E1E1;">
                                                                        <h6><span id="txtNov">0</span></h6>
                                                                    </div>

                                                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                        <h6 class="textauto">DIC</h6>
                                                                    </div>
                                                                    <div class="col-xs-3 col-sm-3 col-md-2 col-dic">
                                                                        <h6><span id="txtDic">0</span></h6>
                                                                    </div>

                                                                    <div class="col-xs-6 col-sm-6 col-md-3 hcol diflex ntop2 ntop3 col-total" style="background-color: #F59806 !important;">
                                                                        <h6 class="textauto" style="margin-left: auto; margin-right: auto;">TOTAL
                                                                        </h6>
                                                                    </div>
                                                                    <div class="col-xs-6 col-sm-6 col-md-9 ntop2 hcol diflex ntop3"
                                                                        style="border-top: 1px solid #E1E1E1; border-bottom: 1px solid #E1E1E1; border-right: 1px solid #E1E1E1; border-radius: 0px 5px 5px 0px;">
                                                                        <h6 class="textauto" style="margin-left: auto; margin-right: auto;">
                                                                            <span id="txtTotalVisitas">0</span>
                                                                        </h6>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <%--                                                                <div class="modal-footer">
                                                                     <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button> 
                                                                </div>--%>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /btn-group -->
                                        </div>
                                    </div>

                                    <!--  <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">PERIOCIDAD</p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        NO
                      </p>
                    </div> -->

                                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colfechavisita hcol diflex">
                                        <p class="textauto">SALIDA CON PERNOTACIÓN</p>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmid hcol ntop2">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtSalidaPernoctacion" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colmidgene hcol diflex">
                                        <p class="textauto">¿CON QUIÉN?</p>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmidtop hcol ntop2">
                                        <select class="form-control inputfichaante" id="ddlPernoctacion" runat="server"
                                            style="height: 27px !important; font-size: 12px !important; margin-top: 3px;"
                                            onchange="RefrescarPernoctacion(this.value);">
                                            <option value="Madre">Madre</option>
                                            <option value="Padre">Padre</option>
                                            <option value="Hermana">Hermana</option>
                                            <option value="Hermano">Hermano</option>
                                            <option value="Otro">Otro</option>
                                            <option value="OtroMasculino">Otro Masculino</option>
                                            <option value="OtroExtensaFemenino">Otro Extensa Femenino</option>
                                            <option value="OtroExtensaMasculino">Otro Extensa Masculino</option>
                                        </select>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                                        <p class="textauto">CANTIDAD</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-9 colgeneralesmidmbot hcol">
                                        <div class="input-group hcol">
                                            <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 98%;" id="txtCantidadPernoctacion" runat="server" readonly="true" />
                                            <div class="input-group-btn ">
                                                <!-- Button trigger modal -->

                                                <button type="button" class="btn btn-narj botondetallesform" data-toggle="modal" id="btnDetallePernoctacion"
                                                    data-target="#detalles2">
                                                    <p class="botondetalles">
                                                        <img src="images/calendario.svg"
                                                            style="margin-left: -10px; margin-bottom: 5px; margin-right: .5rem;" />VER DETALLES
                                                    </p>
                                                </button>

                                                <!-- Modal -->
                                                <div class="modal fade" id="detalles2" tabindex="-1" role="dialog"
                                                    aria-labelledby="myModalLabel">
                                                    <div class="modal-dialog" role="document" style="width: 100%; padding: 5rem;">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>

                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="container calendariowidth">
                                                                    <div class="row" style="margin-top: 1rem; margin-bottom: 1rem;">
                                                                        <div class="col-xs-12 col-md-12">
                                                                            <h2 style="color: #0F69B4;" class="detallemes">DETALLES POR MES
                                                                            </h2>
                                                                        </div>

                                                                        <div class="col-xs-3 col-sm-3 col-md-1  hcol diflex col-ene1">
                                                                            <h6 class="textauto">ENE</h6>
                                                                        </div>
                                                                        <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                                                            <h6><span id="txtEneP">0</span></h6>
                                                                        </div>

                                                                        <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                            <h6 class="textauto">FEB</h6>
                                                                        </div>
                                                                        <div class="col-xs-3 col-sm-3 col-md-2 col-feb">
                                                                            <h6><span id="txtFebP">0</span></h6>
                                                                        </div>

                                                                        <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                            <h6 class="textauto">MAR</h6>
                                                                        </div>
                                                                        <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                                                            <h6><span id="txtMarP">0</span></h6>
                                                                        </div>

                                                                        <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                            <h6 class="textauto">ABR</h6>
                                                                        </div>
                                                                        <div class="col-xs-3 col-sm-3 col-md-2 col-abr">
                                                                            <h6><span id="txtAbrP">0</span></h6>
                                                                        </div>

                                                                        <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                            <h6 class="textauto">MAY</h6>
                                                                        </div>
                                                                        <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                                                            <h6><span id="txtMayP">0</span></h6>
                                                                        </div>

                                                                        <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                            <h6 class="textauto">JUN</h6>
                                                                        </div>
                                                                        <div class="col-xs-3 col-sm-3 col-md-2 col-jun">
                                                                            <h6><span id="txtJunP">0</span></h6>
                                                                        </div>

                                                                        <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                            <h6 class="textauto">JUL</h6>
                                                                        </div>
                                                                        <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                                                            <h6><span id="txtJulP">0</span></h6>
                                                                        </div>

                                                                        <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                            <h6 class="textauto">AGO</h6>
                                                                        </div>
                                                                        <div class="col-xs-3 col-sm-3 col-md-2 col-ago">
                                                                            <h6><span id="txtAgoP">0</span></h6>
                                                                        </div>

                                                                        <div class="col-xs-3 col-sm-3 col-md-1 colmidgenebot hcol diflex">
                                                                            <h6 class="textauto">SEPT</h6>
                                                                        </div>
                                                                        <div class="col-xs-3 col-sm-3 col-md-2"
                                                                            style="border-top: 1px solid #E1E1E1; border-bottom: 1px solid #E1E1E1;">
                                                                            <h6><span id="txtSepP">0</span></h6>
                                                                        </div>

                                                                        <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                            <h6 class="textauto">OCT</h6>
                                                                        </div>
                                                                        <div class="col-xs-3 col-sm-3 col-md-2 col-oct">
                                                                            <h6><span id="txtOctP">0</span></h6>
                                                                        </div>

                                                                        <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex col-nov1">
                                                                            <h6 class="textauto">NOV</h6>
                                                                        </div>
                                                                        <div class="col-xs-3 col-sm-3 col-md-2"
                                                                            style="border-top: 1px solid #E1E1E1; border-bottom: 1px solid #E1E1E1;">
                                                                            <h6><span id="txtNovP">0</span></h6>
                                                                        </div>
                                                                        <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                                                            <h6 class="textauto">DIC</h6>
                                                                        </div>
                                                                        <div class="col-xs-3 col-sm-3 col-md-2 col-dic">
                                                                            <h6><span id="txtDicP">0</span></h6>
                                                                        </div>
                                                                        <div class="col-xs-6 col-sm-6 col-md-3 hcol diflex ntop2 ntop3 col-total" style="background-color: #F59806 !important;">
                                                                            <h6 class="textauto" style="margin-left: auto; margin-right: auto;">TOTAL
                                                                            </h6>
                                                                        </div>
                                                                        <div class="col-xs-6 col-sm-6 col-md-9 ntop2 hcol diflex ntop3"
                                                                            style="border-top: 1px solid #E1E1E1; border-bottom: 1px solid #E1E1E1; border-right: 1px solid #E1E1E1; border-radius: 0px 5px 5px 0px;">
                                                                            <h6 class="textauto" style="margin-left: auto; margin-right: auto;">
                                                                                <span id="txtTotalPernoctacion">0</span>
                                                                            </h6>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <%--    <div class="modal-footer">
                                                                </div>--%>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /btn-group -->
                                        </div>
                                    </div>
                                </div>

                                <!-- datos obtenidos -->
                                <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                                    <h4 style="color: #0F69B4;">Datos obtenidos del Sename
                                    </h4>
                                </div>

                                <div class="col-xs-12 col-sm-6 col-md-6 ntop2 diflex" style="padding-left: 0px; padding-right: 0px;">
                                    <h6 style="color: #0F69B4;" class="mlficha2">Ultima actualización <%= DateTime.Now.ToString("dd/MM/yyyy") %>
                                    </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- PROCESO DE INTEVENCIÓN -->

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading " role="tab" id="ANTECEDENTESCOLAPSE8" style="background: #0690F5;">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#ANTECEDENTES8"
                                    aria-expanded="true" class="diflex tituloarrow" aria-controls="ANTECEDENTES8" style="color: white; text-decoration: none;">VIII. PROCESO DE INTEVENCIÓN
                       <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display: none;">&#9650;</span>
                                </a>
                            </h4>
                        </div>
                        <div id="ANTECEDENTES8" class="panel-collapse collapse" role="tabpanel"
                            aria-labelledby="ANTECEDENTESCOLAPSE8">
                            <div class="panel-body">
                                <div class="row" style="margin-right: 0px; margin-left: 0px;">
                                    <!-- info sobre intervencion -->
                                    <div class="col-xs-12 col-sm-12 col-md-3 colfechavisita hcol">
                                        <p>EVALUACIÓN DIAGNOSTICADA</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-9 colgeneralesmidtop hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtEvalDiagnosticada" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colmidgene hcol diflex">
                                        <p class="textauto">CONCLUSIÓN DEL DIAGNOSTICO</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-8 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtConclusionDiagnostico" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colmidgene hcol diflex">
                                        <p class="textauto">
                                            OBJETIVO DEL PLAN DE INTERVENCIÓN
                                        </p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-8 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtObjetivoPlanInterv" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-7 colmidgene hcol diflex">
                                        <p class="textauto">
                                            SE VISUALIZA POSIBILIDAD DE RESTITUIR EL DERECHO A VIVIR EN FAMILIA
                                        </p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-5 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtRestituir" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                                        <p class="textauto">FECHA ÚLTIMO INFORME</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtFechaUltimoInforme" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                                        <p class="textauto">CONCLUSIÓN DEL INFORME</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidmbot hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtConclusionInforme" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-4 colnacionalidad nt3 ntop2 hcol diflex">
                                        <p class="textauto">TIENE INTERVENCIÓN ESPECIALIZADA</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 colgeneralesmid hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtIntervEpecializada" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colmidgene hcol diflex">
                                        <p class="textauto">¿QUIÉN LA REALIZA?</p>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colcodnino hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtRealizaIntervencion" runat="server" readonly="true" />
                                    </div>

                                    <!-- ANTECEDENTES DE MALTRATO INTRARESIDENCIAL RESULTADOS-->
                                    <div class="col-xs-12 col-sm-12 col-md-12 ntop2" style="padding-left: 0px;">
                                        <h4 style="color: #0F69B4;">ANTECEDENTES DE MALTRATO INTRARESIDENCIAL
                                        </h4>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-12 ntop2" style="padding-left: 0px;">
                                        <table id="tblMaltrato" class="table table-responsive cell-border" style="width: 100%; font-size: 10px;">
                                            <thead>
                                                <tr>
                                                    <th class="casocol col-xs-6 col-sm-6 col-md-2 colmidgene hcol textauto" style="font-size: 10px; height: 10px !important;" id="NumeroCaso">Número de Caso</th>
                                                    <th class="circularcol col-xs-12 col-sm-12 col-md-1 colmidgene hcol textauto" style="font-size: 10px; height: 10px !important;" id="Circular">Circular</th>
                                                    <th class="proyectocol col-xs-12 col-sm-12 col-md-1 colmidgene hcol textauto" style="font-size: 10px; height: 10px !important;" id="CodProyecto">Proyecto</th>
                                                    <th class="nombrecol col-xs-12 col-sm-12 col-md-2 colmidgene hcol textauto" style="font-size: 10px; height: 10px !important;" id="NompreProyecto">Nombre</th>
                                                    <th class="lugarcol col-xs-12 col-sm-12 col-md-2 colmidgene  hcol textauto" style="font-size: 10px; height: 10px !important;" id="Lugar">Lugar</th>
                                                    <th class="tipovulneracioncol col-xs-12 col-sm-12 col-md-2 colmidgene  hcol textauto" style="font-size: 10px; height: 10px !important;" id="TipoVulneracion">Tipo Vulneración</th>
                                                    <th class="tipoinvolucradocol col-xs-6 col-sm-6 col-md-2 colmidgene hcol textauto" style="font-size: 10px; height: 10px !important;" id="TipoInvolucrado">Tipo Involucrado</th>
                                                </tr>
                                            </thead>
                                            <tfoot>
                                            </tfoot>
                                        </table>
                                    </div>


                                    <%--                                        <div class="col-xs-6 col-sm-6 col-md-2 colfechavisita diflex hcol ">
                                            <p class="textauto" style="font-size: 10px;">Numero de Caso</p>
                                        </div>
                                        <div class="circularcol">
                                            <div class="col-xs-12 col-sm-12 col-md-1 colmidgene  diflex hcol">
                                                <p class="textauto" style="font-size: 10px;">Circular</p>
                                            </div>
                                        </div>
                                        <div class="proyectocol">
                                            <div class="col-xs-12 col-sm-12 col-md-1 colmidgene  diflex hcol">
                                                <p class="textauto" style="font-size: 10px;">Proyecto</p>
                                            </div>
                                        </div>
                                        <div class="nombrecol">
                                            <div class="col-xs-12 col-sm-12 col-md-2 colmidgene  diflex hcol">
                                                <p class="textauto" style="font-size: 10px;">Nombre</p>
                                            </div>
                                        </div>
                                        <div class="lugarcol">
                                            <div class="col-xs-12 col-sm-12 col-md-2 colmidgene  diflex hcol">
                                                <p class="textauto" style="font-size: 10px;">Lugar</p>
                                            </div>
                                        </div>
                                        <div class="tipovulneracioncol">
                                            <div class="col-xs-12 col-sm-12 col-md-2 colmidgene  diflex hcol"
                                                style="border-radius: 0px 5px 0px 0px;">
                                                <p class="textauto" style="font-size: 10px;">Tipo Vulneración</p>
                                            </div>
                                        </div>
                                        <div class="col-xs-6 col-sm-6 col-md-2 colmidgene diflex hcol"
                                            style="border-radius: 0px 5px 0px 0px;">
                                            <p class="textauto" style="font-size: 10px;">Tipo Involucrado</p>
                                        </div>

                                        <div id="divcaso1" class="divtipo" data-value="Agresor">

                                            <div class="col-xs-6 col-sm-6 col-md-2 colgeneralesmid hcol diflex ">
                                                <input style="border: 0px solid black; background: transparent; font-size: 10px; width: 100%;"
                                                    class="form-check-input agresor textauto" type="text" id="txtNumeroCaso" runat="server"
                                                    readonly="readonly" />
                                            </div>

                                            <div class="circularcol">
                                                <div class="col-xs-12 col-sm-12 col-md-1 colgeneralesmid hcol diflex circularcol">
                                                    <input style="border: 0px solid black; background: transparent; font-size: 10px; width: 100%;"
                                                        class="form-check-input agresor textauto" type="text" id="txtCircular" runat="server"
                                                        readonly="readonly" />
                                                </div>
                                            </div>
                                            <div class="proyectocol">
                                                <div class="col-xs-12 col-sm-12 col-md-1 colgeneralesmid hcol diflex proyectocol">
                                                    <input style="border: 0px solid black; background: transparent; font-size: 10px; width: 100%;"
                                                        class="form-check-input agresor textauto" type="text" id="txtCodProyectoMaltrato" runat="server"
                                                        readonly="readonly" />
                                                </div>
                                            </div>
                                            <div class="nombrecol">
                                                <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol diflex nombrecol">
                                                    <input style="border: 0px solid black; background: transparent; font-size: 10px; width: 100%;"
                                                        class="form-check-input agresor textauto" type="text" id="txtNombreProyectoMaltrato" runat="server"
                                                        readonly="readonly" />
                                                </div>
                                            </div>
                                            <div class="lugarcol">
                                                <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol diflex lugarcol">
                                                    <input style="border: 0px solid black; background: transparent; font-size: 10px; width: 100%;"
                                                        class="form-check-input agresor textauto" type="text" id="txtLugarMaltrato" runat="server"
                                                        readonly="readonly" />
                                                </div>
                                            </div>
                                            <div class="tipovulneracioncol">
                                                <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol diflex tipovulneracioncol">
                                                    <input style="border: 0px solid black; background: transparent; font-size: 10px; width: 100%;"
                                                        class="form-check-input agresor textauto" type="text" id="txtTipoVulneracion" runat="server"
                                                        readonly="readonly" />
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-2 colgeneralesmid hcol diflex">
                                                <input style="border: 0px solid black; background: transparent; font-size: 10px; width: 100%;"
                                                    class="form-check-input agresor textauto" type="text" id="txtTipoInvolucrado" runat="server"
                                                    readonly="readonly" />
                                            </div>

                                        </div>--%>

                                    <div id="agresor">
                                        <div class="col-xs-12 col-sm-12 col-md-12 ntop2" style="padding-left: 0px;">
                                            <h4 style="color: #0F69B4;">DATOS DEL CASO INVOLUCRADO COMO AGRESOR
                                            </h4>
                                        </div>

                                        <div class="col-xs-12 col-sm-12 col-md-12 ntop2" style="padding-left: 0px;">
                                            <table id="tblCasoAgresor" class="table table-responsive cell-border" style="width: 100%; font-size: 10px;">
                                                <thead>
                                                    <tr>
                                                        <th class="casocol col-xs-6 col-sm-6 col-md-2 colmidgene hcol textauto" style="font-size: 10px; height: 10px !important;" id="NumeroCasoAgresor">Número de Caso</th>
                                                        <th class="tipoinvolucradocol col-xs-6 col-sm-6 col-md-2 colmidgene hcol textauto" style="font-size: 10px; height: 10px !important;" id="TipoInvolucradoAgresor">Tipo Involucrado</th>
                                                        <th class="tipoagredidocol col-xs-6 col-sm-6 col-md-2 colmidgene hcol textauto" style="font-size: 10px; height: 10px !important;" id="TipoAgredidoAgresor">Tipo Ageredido</th>
                                                        <th class="tiporelacioncol col-xs-6 col-sm-6 col-md-2 colmidgene hcol textauto" style="font-size: 10px; height: 10px !important;" id="TipoRelacionAgresor">Tipo Relación</th>
                                                        <th class="cantidadInvolucradoscol col-xs-6 col-sm-6 col-md-2 colmidgene hcol textauto" style="font-size: 10px; height: 10px !important;" id="CantidadInvolucradosAgresor">Cantidad Involucrados</th>
                                                    </tr>
                                                </thead>
                                                <tfoot>
                                                </tfoot>
                                            </table>
                                        </div>

                                        <%--                                            <div class="col-numerocaso-agresor">
                                                <div class="col-xs-12 col-sm-12 col-md-2 colfechavisita diflex hcol">
                                                    <p class="textauto" style="font-size: 10px;">
                                                        Numero de Caso
                                                    </p>
                                                </div>
                                            </div>

                                            <div class="col-numerocaso-involucrado">
                                                <div class="col-xs-12 col-sm-12 col-md-2 colmidgene  diflex hcol">
                                                    <p class="textauto" style="font-size: 10px;">
                                                        Tipo Involucrado
                                                    </p>
                                                </div>
                                            </div>

                                            <div class="col-xs-4 col-sm-4 col-md-2 colmidgene  diflex hcol">
                                                <p class="textauto" style="font-size: 10px;">
                                                    Tipo Agredido
                                                </p>
                                            </div>

                                            <div class="col-xs-4 col-sm-4 col-md-3 colmidgene  diflex hcol">
                                                <p class="textauto" style="font-size: 10px;">
                                                    Tipo Relación
                                                </p>
                                            </div>

                                            <div class="col-xs-4 col-sm-4 col-md-3 colmidgene  diflex hcol"
                                                style="border-radius: 0px 5px 0px 0px; font-size: 10px;">
                                                <p class="textauto" style="font-size: 10px;">
                                                    Cantidad Involucrados
                                                </p>
                                            </div>

                                            <div class="col-numerocaso-agresor">
                                                <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol">
                                                    <input type="text" class="" style="margin-top: 5px; margin-bottom: 5px; font-size: 10px; width: 100%;" id="txtNumCasoAgresor" runat="server" readonly="true" />
                                                </div>
                                            </div>

                                            <div class="col-numerocaso-involucrado">
                                                <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol">
                                                    <input type="text" class="" style="margin-top: 5px; margin-bottom: 5px; font-size: 10px; width: 100%;" id="txtTipoInvolAgresor" runat="server" readonly="true" />
                                                </div>
                                            </div>

                                            <div class="col-xs-4 col-sm-4 col-md-2 colgeneralesmid hcol">
                                                <input type="text" class="" style="margin-top: 5px; margin-bottom: 5px; font-size: 10px; width: 100%;" id="txtTipoAgredido" runat="server" readonly="true" />
                                            </div>

                                            <div class="col-xs-4 col-sm-4 col-md-3 colgeneralesmid hcol">
                                                <input type="text" class="" style="margin-top: 5px; margin-bottom: 5px; font-size: 10px; width: 100%;" id="txtTipoRelacionAgresor" runat="server" readonly="true" />
                                            </div>

                                            <div class="col-xs-4 col-sm-4 col-md-3 colgeneralesmid hcol">
                                                <input type="text" class="" style="margin-top: 5px; margin-bottom: 5px; font-size: 10px; width: 100%;" id="txtCantInvolucrados" runat="server" readonly="true" />
                                            </div>--%>

                                        <!-- informacion como agresor medidas implementadas y tipo involucrado-->
                                        <div class="col-xs-12 col-sm-12 col-md-12 ntop2" style="padding-left: 0px;">
                                            <h4 style="color: #0F69B4;">MEDIDAS IMPLEMENTADAS
                                            </h4>
                                        </div>

                                        <div class="col-xs-12 col-sm-12 col-md-12 ntop2" style="padding-left: 0px;">
                                            <table id="tblMedidas" class="table table-responsive cell-border" style="width: 100%; font-size: 10px;">
                                                <thead>
                                                    <tr>
                                                        <th class="casocol col-xs-6 col-sm-6 col-md-2 colmidgene hcol textauto" style="font-size: 10px; height: 10px !important;" id="NumeroCasoMedidas">Número de Caso</th>
                                                        <th class="medidaimplementadacol col-xs-6 col-sm-6 col-md-2 colmidgene hcol textauto" style="font-size: 10px; height: 10px !important;" id="MedidaImplementada">Medida Implementada</th>
                                                        <th class="tipoInvolucradocol col-xs-6 col-sm-6 col-md-2 colmidgene hcol textauto" style="font-size: 10px; height: 10px !important;" id="TipoInvolucradoMedida">Tipo Involucrado</th>
                                                    </tr>
                                                </thead>
                                                <tfoot>
                                                </tfoot>
                                            </table>
                                        </div>

                                        <%--           <div class="col-numerocaso-involucrado">
                                                <div class="col-xs-4 col-sm-4 col-md-4 colfechavisita diflex hcol">
                                                    <p class="textauto" style="font-size: 10px;">
                                                        Numero de Caso
                                                    </p>
                                                </div>
                                            </div>

                                            <div class="col-xs-6 col-sm-6 col-md-4 colmidgene  diflex hcol">
                                                <p class="textauto" style="font-size: 10px;">
                                                    Medidas Implementadas
                                                </p>
                                            </div>

                                            <div class="col-xs-6 col-sm-6 col-md-4 colmidgene  diflex hcol"
                                                style="border-radius: 0px 5px 0px 0px; font-size: 10px;">
                                                <p class="textauto" style="font-size: 10px;">
                                                    Tipo Involucrado
                                                </p>
                                            </div>

                                            <div class="col-numerocaso-involucrado">
                                                <div class="col-xs-4 col-sm-4 col-md-4 colgeneralesmid hcol">
                                                    <input type="text" class="" style="margin-top: 5px; margin-bottom: 5px; font-size: 10px; width: 100%;" id="txtNumCasoMedidas" runat="server" readonly="true" />
                                                </div>

                                                <div class="col-xs-6 col-sm-6 col-md-4 colgeneralesmid hcol">
                                                    <input type="text" class="" style="margin-top: 5px; margin-bottom: 5px; font-size: 10px; width: 100%;" id="txtMedidasImpl" runat="server" readonly="true" />
                                                </div>

                                                <div class="col-xs-6 col-sm-6 col-md-4 colgeneralesmid hcol diflex">
                                                    <input type="text" class="" style="margin-top: 5px; margin-bottom: 5px; font-size: 10px; width: 100%;" id="txtTipoInvolMedidas" runat="server" readonly="true" />
                                                </div>
                                            </div>--%>
                                    </div>

                                    <!-- datos obtenidos -->
                                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                                        <h4 style="color: #0F69B4;">Datos obtenidos del Sename
                                        </h4>
                                    </div>

                                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2 diflex" style="padding-left: 0px; padding-right: 0px;">
                                        <h6 style="color: #0F69B4;" class="mlficha2">Ultima actualización <%= DateTime.Now.ToString("dd/MM/yyyy") %>
                                        </h6>
                                    </div>

                                    <%--     </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- SUGERENCIAS AL TRIBUNAL DE ORIGEN -->

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading " role="tab" id="ANTECEDENTESCOLAPSE9" style="background: #0690F5;">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#ANTECEDENTES9"
                                    aria-expanded="true" class="diflex tituloarrow" aria-controls="ANTECEDENTES9" style="color: white; text-decoration: none;">SUGERENCIAS AL TRIBUNAL DE ORIGEN
                       <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display: none;">&#9650;</span>
                                </a>
                            </h4>
                        </div>
                        <div id="ANTECEDENTES9" class="panel-collapse collapse " role="tabpanel"
                            aria-labelledby="ANTECEDENTESCOLAPSE9">
                            <div class="panel-body">
                                <div class="row" style="margin-right: 0px; margin-left: 0px;">
                                    <!-- info sobre intervencion -->

                                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colfechavisita hcol diflex">
                                        <p class="textauto">CITA A AUDIENCIA</p>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmid hcol ntop2">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtCitaAudiencia" runat="server" readonly="true" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colmidgene hcol diflex">
                                        <p class="textauto">AUDIENCIA INMEDIATA</p>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmidtop hcol ntop2">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtAudienciaInmediata" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                                        <p class="textauto">OBSERVACIÓN</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-9 colgeneralesmidmbot hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtObservSugTribunal" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                                        <h4 style="color: #0F69B4;">Datos obtenidos de PJUD
                                        </h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- SUGERENCIAS A SENAME -->

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading " role="tab" id="ANTECEDENTESCOLAPSE10" style="background: #0690F5;">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#ANTECEDENTES10"
                                    aria-expanded="true" class="diflex tituloarrow" aria-controls="ANTECEDENTES10" style="color: white; text-decoration: none;">SUGERENCIAS A SENAME
                       <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display: none;">&#9650;</span>
                                </a>
                            </h4>
                        </div>
                        <div id="ANTECEDENTES10" class="panel-collapse collapse " role="tabpanel"
                            aria-labelledby="ANTECEDENTESCOLAPSE10">
                            <div class="panel-body">
                                <div class="row" style="margin-right: 0px; margin-left: 0px;">
                                    <!-- info sobre intervencion -->
                                    <!-- observacion III -->
                                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 nt3 colnacionalidad hcol diflex">
                                        <p class="textauto">OBSERVACIÓN</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-10 ntop2 colcodnino hcol">
                                        <input type="text" class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; width: 100%;" id="txtObservSugSename" runat="server" readonly="true" />
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                                        <h4 style="color: #0F69B4;">Datos obtenidos de PJUD
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade bd-example-modal-lg" data-backdrop="static" data-keyboard="false" tabindex="-1" id="divLoading">
        <div class="modal-dialog modal-sm">
            <img src="images/loading.gif" style="width: 50%; display: block; margin: auto;" />
        </div>
    </div>
    </div>
</body>
</html>
