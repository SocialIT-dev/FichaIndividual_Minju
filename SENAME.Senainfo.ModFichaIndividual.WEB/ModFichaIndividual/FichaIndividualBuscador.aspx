<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FichaIndividualBuscador.aspx.cs" Inherits="SENAME.Senainfo.ModFichaIndividual.WEB.ModFichaIndividual.FichaIndividualBuscador" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BUSCADOR DE FICHA INDIVIDUAL  :: Senainfo :: Servicio Nacional de Menores</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="../Content/bootstrap.min.css">
    <link rel="stylesheet" href="../Content/css/fichaIndividual.css" />
    <script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

    <!-- Java Script -->

    <link href="../Scripts/sweetalert2/sweetalert2.min.css" rel="stylesheet" />

</head>
<body>

    <!-- estructura formulario principal -->
    <div class="container-fluid bgcontainerfluid">
        <div class="container ctop">
            <div class="row yellow-border">

                <form id="forminju" runat="server">

                    <%--DESCOMENTAR SIGUIENTE LINEA PARA SU VERSIÓN EN SENAINFO --%>
                    <%--<uc2:menu_colgante runat="server" ID="menu_colgante" />--%>
                    <!-- Campos Ocultos -->
                    <asp:HiddenField ID="idusuario_conect" runat="server" />
                    <asp:HiddenField ID="tokensUsr" runat="server" />


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
                                    <img src="../images/pregunta_12png.png">
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
                                    <img src="../images/pregunta_12png.png">
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
                                value="femenino" />
                            <label class="form-check-label mright2" for="inlineRadio1">
                                Femenino</label>
                        </div>
                        <div class="form-check form-check-inline ">
                            <input
                                class="form-check-input"
                                name="OptSexo"
                                type="radio"
                                id="optMasculino"
                                value="masculino" />
                            <label class="form-check-label" for="inlineRadio2">
                                Masculino</label>
                        </div>
                    </div>

                    <div class="col-xs-12 col-md-12 diflex mytop1 mensajeform">
                        <p class="mrlauto" id="lblMensaje" style="margin-top: 4px !important; margin-bottom: 4px !important;">
                            Ingrese al menos uno de los valores anteriores
                        </p>

                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 diflex mytop1">
                        <button type="submit" id="btnBuscarFicha" class="btn btn-primary mrlauto botonw" onclick="BuscarFicha">Buscar Ficha</button>
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 diflex mytop1">
                        <button type="submit" id="btnLimpiar" class="btn btn-narj mrlauto botonw" onclick="LimpiarFormularioBusquedaFI">Limpiar</button>
                    </div>

                </form>

                <!-- resultados de la Busqueda -->
                <div id="FichaIndividualResultadosBusqueda" class="mytop1y">
                </div>

            </div>
        </div>
    </div>


    <script type='text/javascript' src="../Scripts/fichaIndividual.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



    <!-- Importar Script-->
    <div id="divconfig" style="display: none;" onclick="InicializaKey();"></div>
    <script>
        function importarScript(nombre) {
            var s = document.createElement("script");
            s.src = nombre;
            document.querySelector("head").appendChild(s);
        }
        $(document).ready(function () {
            var d = new Date();
            importarScript("../Scripts/ficha_Individual/FI_Buscador.js?" + d.getTime());
            //importarScript("scripts/ficha/reportes.js?" + d.getTime());   
        });
    </script>

</body>
</html>
