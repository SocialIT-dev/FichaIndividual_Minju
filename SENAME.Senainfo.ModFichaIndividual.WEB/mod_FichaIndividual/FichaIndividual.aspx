<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FichaIndividual.aspx.cs" Inherits="SENAME.Senainfo.ModFichaIndividual.WEB.ModFichaIndividual.FichaIndividual" %>

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
  <link rel="stylesheet" href="Content/css/fichaIndividual.css" />
  <link href="Scripts/sweetalert2/sweetalert2.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="Content/minju.css" />
  <script type='text/javascript' src="Scripts/sweetalert2/sweetalert2.all.min.js"></script>
  <script type='text/javascript' src="Scripts/Ficha_Individual/fichaIndividual.js"></script>
  <script type="text/javascript" src="Scripts/js/minju.js"></script>
</head>

<body>
  <!-- titulo ficha, botonoes -->
  <div class="container-fluid" style="background: #F8F8F8;">
    <div class="container mytop1">
      <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-6">
          <h2 style="color: #0F69B4; margin-top: 10px;">FICHA INDIVIDUAL</h2>
        </div>
        <div class="col-xs-6 col-sm-3 col-md-4 diflex mytop1">
          <div class="btn-group mlficha">
            <button type="button" class="btn btn-primary mlficha botonw2 dropdown-toggle" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false" id="botonimprimir">
              <img src="img/pdf.svg" style="margin-left: -10px; margin-right: 2rem;"> IMPRIMIR
            </button>
            <div class="dropdown-menu"
              style="min-width: 280px; padding: 20px; text-align: center; border: 1px solid black;">
              <p>Secciones a Imprimir</p>
              <div class="checkbox" style="text-align: left; font-size: 9px;">
                <label for="antecedentes" class="ntop1">
                  <input type="checkbox" name="antecedentes" />I. ANTECEDENTES
                  GENERALES DEL NIÑO, NIÑA O ADOLESCENTE
                </label>
                <label for="antecedentes2" class="ntop1">
                  <input type="checkbox" name="antecedentes2" />II.
                  ANTECEDENTES PROCESALES
                </label>
                <label for="antecedentes3" class="ntop1">
                  <input type="checkbox" name="antecedentes3" />III.
                  ANTECEDENTES DE SALUD
                </label>
                <label for="antecedentes4" class="ntop1">
                  <input type="checkbox" name="antecedentes4" />IV.
                  ANTECEDENTES ESCOLARES
                </label>
                <label for="antecedentes5" class="ntop1">
                  <input type="checkbox" name="antecedentes5" />V.
                  ANTECEDENTES DE COSUMO
                </label>
                <label for="antecedentes6" class="ntop1">
                  <input type="checkbox" name="antecedentes6" />VI.
                  ANTECEDENTES DE COSUMO
                </label>
                <label for="antecedentes7" class="ntop1">
                  <input type="checkbox" name="antecedentes7" />VII. VISITAS
                </label>
                <label for="antecedentes8" class="ntop1">
                  <input type="checkbox" name="antecedentes8" />VIII. PROCESO
                  DE INVTERVENCIÓN
                </label>
                <label for="antecedentes9" class="ntop1">
                  <input type="checkbox" name="antecedentes9" />SUGERENCIAS AL
                  TRIBUNAL DE ORIGEN
                </label>
                <label for="antecedentes10" class="ntop1">
                  <input type="checkbox" name="antecedentes10" />SUGERENCIAS A
                  SENAME
                </label>
                <label for="antecedentes11" class="ntop1">
                  <input type="checkbox" name="antecedentes11" />Todos los
                  documentos
                </label>
                <div class="diflex">
                  <button type="submit" class="btn btn-primary mrlauto botonw2">
                    IMPRIMIR</button>.
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xs-6 col-sm-3 col-md-2 diflex mytop1">
          <a href="index.html" type="submit" class="btn btn-narj mlficha botonw2 textauto">
            <img src="img/volver.svg" style="margin-left: -10px; margin-right: 2rem;">VOLVER
          </a>
        </div>
      </div>
    </div>

    <!-- primer cuadro de informacion principal -->
    <div class="container mytop1 yellow-border2" style="background: #F8F8F8;">
      <div class="row ">
        <div class="col-xs-12 col-md-1" style="margin-top: 8px;margin-top: .8rem;margin-bottom: .8rem;">
          <p style="color: #0F69B4; font-weight: 600;">Rit</p>
        </div>
        <div class="col-xs-12 col-md-5 ">
          <p class="inputficha">P-117-2013</p>
        </div>
        <div class="col-xs-12 col-md-1" style="margin-top: 8px;margin-top: .8rem;margin-bottom: .8rem;">
          <p style="color: #0F69B4; font-weight: 600;">Otros</p>
        </div>
        <div class="col-xs-12 col-md-5 ">
          <p class="inputficha">lorem1</p>
        </div>
      </div>
      <div class="row ntop1">
        <div class="col-xs-12 col-md-1" style="margin-top: 8px;margin-top: .8rem;margin-bottom: .8rem;">
          <p style="color: #0F69B4; font-weight: 600;">Tribunal</p>
        </div>
        <div class="col-xs-12 col-md-5">
          <p class="inputficha">Juzgado de Familia de Prueba</p>
        </div>
        <div class="col-xs-12 col-md-1" style="margin-top: 8px;margin-top: .8rem;margin-bottom: .8rem;">
          <p style="color: #0F69B4; font-weight: 600;">Tribunal</p>
        </div>
        <div class="col-xs-12 col-md-5">
          <p class="inputficha">lorem1</p>
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
          <p class="inputficha2" style="margin-top: 5px; margin-bottom: 5px;">
            29/10/2013
          </p>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-2 colhoravisita hcol">
          <p>HORA VISITA</p>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-4 colphora hcol">
          <p class="inputficha2" style="margin-top: 5px; margin-bottom: 5px;">
            11:11
          </p>
        </div>

        <div class="col-xs-12 col-sm-12 col-md-2 coljuezvisita hcol diflex">
          <p>JUEZ VISITADOR</p>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 colpjuez hcol">
          <p class="inputficha2" style="margin-top: 5px; margin-bottom: 6px;">
            ABC
          </p>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 colconsejero hcol">
          <p>CONSEJERO TÉCNICO</p>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-4 colptecnico hcol">
          <p class="inputficha2" style="margin-top: 5px; margin-bottom: 6px;">
            Prueba
          </p>
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
                    aria-expanded="true" aria-controls="ANTECEDENTES1" style="color: white; text-decoration:none; text-decoration: none;" class="diflex tituloarrow">
                    I. ANTECEDENTES GENERALES DEL NIÑO, NIÑA o ADOLESCENTE 
                    <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display:none;">&#9650;</span>
            
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
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        Jorge
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                      <p class="textauto">RUT</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidtop hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        14.412.121-4
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                      <p class="textauto">FILACIÓN</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        ABC
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                      <p class="textauto">SEXO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        MASCULINO
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                      <p class="textauto">FECHA DE NACIMIENTO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        20/10/2005
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                      <p class="textauto">EDAD</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        24
                      </p>
                    </div>

                    <!-- info nacionalidad niño -->
                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 nt3 colnacionalidad hcol diflex">
                      <p class="textauto">NACIONALIDAD</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        Venezolano
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 colmidgene hcol diflex">
                      <p class="textauto">N. PASAPORTE</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        149521021
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 colmidgene hcol diflex">
                      <p class="textauto">COD. NIÑO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 colcodnino hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        149521021
                      </p>
                    </div>

                    <!-- infor proyecto -->
                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 nt3 colfechavisita hcol diflex">
                      <p>NOMBRE DEL PROYECTO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        abc
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colmidgene hcol diflex">
                      <p class="textauto">COMUNA DEL PROYECTO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colgeneralesmidtop hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        providencia
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgenebot hcol diflex">
                      <p class="textauto">TIPO DE PROYECTO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-10 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        Proyecto 1
                      </p>
                    </div>

                    <!-- infomadre -->
                    <div class="col-xs-12 col-sm-12 col-md-3 nt3 colfechavisita ntop2 hcol">
                      <p>NOMBRE DE LA MADRE</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid ntop2 hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        Madre
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene ntop2 hcol diflex">
                      <p class="textauto">RUT</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidtop ntop2 hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        14.412.121-4
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                      <p class="textauto">DIRECCIÓN</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        jose antonio soffia
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                      <p class="textauto">ESTADO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        asd
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgenebot hcol diflex">
                      <p class="textauto">NACIONALIDAD</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        Chileno
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                      <p class="textauto">N. PASAPORTE</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        14541214
                      </p>
                    </div>

                    <!-- info padre -->
                    <div class="col-xs-12 col-sm-12 col-md-3  nt3 colfechavisita ntop2 hcol">
                      <p class="textauto">NOMBRE DEL PADRE</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid ntop2 hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        Padre
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene ntop2 hcol diflex">
                      <p class="textauto">RUT</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidtop ntop2 hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        14.412.121-4
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                      <p class="textauto">DIRECCIÓN</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        jose antonio soffia
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                      <p class="textauto">ESTADO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        asd
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgenebot hcol diflex">
                      <p class="textauto">NACIONALIDAD</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        Haitiano
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgene hcol diflex">
                      <p class="textauto">N. PASAPORTE</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        14541214
                      </p>
                    </div>

                    <!-- infor ingreso residencia -->

                    <div class="col-xs-12 col-sm-12 col-md-5 ntop2 nt3 colnacionalidad hcol diflex">
                      <p style="margin-top: auto; margin-bottom: auto;">
                        COMUNA DE RESIDENCIA AL INGRESO DEL NNA
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-7 ntop2 colcodnino hcol ">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        Venezolano
                      </p>
                    </div>

                    <!-- info ayuda comunal -->

                    <div class="col-xs-12 col-sm-12 col-md-3 colfechavisita nt3 ntop2 hcol">
                      <p class="textauto">AYUDA COMUNAL</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid ntop2 hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        Ayuda
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene ntop2 hcol diflex">
                      <p class="textauto">CUAL O CUALES?</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid ntop2 hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        este
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene  hcol diflex">
                      <p class="textauto">APOYO COMUNITARIO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmidtop hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        Apoyo
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene  hcol diflex">
                      <p class="textauto">CHILE SOLIDARIO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        solidario
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">CHILE CRECE CONTIGO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        crece
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">FPS</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        FPS
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene  hcol diflex">
                      <p class="textauto">PUNTAJE</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        20
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene  hcol diflex">
                      <p class="textauto">FECHA APLICACIÓN</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        29/10/2010
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot  hcol diflex">
                      <p class="textauto">ABRIENDO CAMINOS</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-9 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        No
                      </p>
                    </div>

                    <!-- otros -->
                    <div class="col-xs-12 col-sm-12 col-md-2 colnacionalidad nt3 ntop2 hcol diflex">
                      <p class="textauto">OTROS</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-10 ntop2 colcodnino hcol ">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; ">
                        Otros
                      </p>
                    </div>

                    <!-- observacion -->
                    <div class="col-xs-12 col-sm-12 col-md-2 colnacionalidad nt3 ntop2 hcol diflex">
                      <p class="textauto">OBSERVACIÓN</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-10 ntop2 colcodnino hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; ">
                        Observando
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                      <h4 style="color: #0F69B4;">
                        Datos obtenidos de PJUD
                      </h4>
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2 diflex"
                      style="padding-left: 0px; padding-right: 0px;">
                      <h6 style="color: #0F69B4;" class="mlficha2">
                        Ultima actualización 20/07/2019
                      </h6>
                    </div>
                     <div class="col-xs-12 col-sm-12 mytop1y" style="padding-left: 0px; padding-right: 0px !important;">
                      <hr  class="hrmin" />
                    </div>

                    <p style="color: #666363;">
                  <img src="img/pdf_gray.svg" >
              ANTECEDENTES GENERALES Provenientes del sistema SENAINFO </p>
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
                    aria-expanded="true" aria-controls="ANTECEDENTES2" class="diflex tituloarrow" style="color: white; text-decoration:none;">
                    II. ANTECEDENTES PROCESALES

                     <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display:none;">&#9650;</span>
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
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        10/01/2008
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 colmidgene hcol diflex">
                      <p class="textauto">
                        FECHA DEL 1er. INGRESO AL SISTEMA RESIDENCIAL
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 colgeneralesmidtop hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        10/01/2008
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colmidgene hcol diflex">
                      <p class="textauto">FECHA DE ÚLTIMA MEDIDA</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        10/01/2008
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">CLASE DE LA MEDIDA</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-4 colmidgenebot hcol diflex">
                      <p class="textauto">DURACIÓN DE LA ÚLTIMA MEDIDA</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        20 dias
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">CAUSAL DE INGRESO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        9
                      </p>
                    </div>

                    <!-- Requirente de medida de proteccion -->
                    <div class="col-xs-12 col-sm-12 col-md-6 ntop2 nt3 colnacionalidad hcol diflex">
                      <p class="textauto">
                        REQUIRENTE DE MEDIDA DE PROTECCIÓN
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 ntop2 colcodnino hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        Se Desconoce
                      </p>
                    </div>

                    <!-- Hermanos en sistema -->
                    <div class="col-xs-12 col-sm-12 col-md-7 nt3 colfechavisita ntop2 hcol">
                      <p>HERMANOS EN SISTEMA RESIDENCIAL</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-5 colgeneralesmidtop ntop2 hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        5
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-7 colmidgene  hcol diflex">
                      <p class="textauto">
                        HERMANOS FUERA DEL SISTEMA MENORES 18 AÑOS
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-5 colgeneralesmid  hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        14
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-7 colmidgene hcol diflex">
                      <p class="textauto">HERMANOS EN SISTEMA RESIDENCIAL</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-5 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        1
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-7 colmidgene hcol diflex">
                      <p class="textauto">
                        NIÑO, NIÑA O ADOLESCENTE HA SIDO ESCUCHADO POR EL JUEZ
                        DE LA CAUSA
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-5 colgeneralesmidmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        1
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-7 colmidgene hcol diflex">
                      <p class="textauto">FECHA ÚLTIMA ENTREVISTA</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-5 colgeneralesmidmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>

                    <!-- observacion II -->
                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgenebot hcol diflex">
                      <p class="textauto">OBSERVACIÓN</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-10 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        SIN OBSERVACIONES
                      </p>
                    </div>

                    <!-- datos obtenidos -->
                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                      <h4 style="color: #0F69B4;">
                        Datos obtenidos de PJUD
                      </h4>
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2 diflex"
                      style="padding-left: 0px; padding-right: 0px;">
                      <h6 style="color: #0F69B4;" class="mlficha2">
                        Ultima actualización 20/07/2019
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
                    aria-expanded="true" class="diflex tituloarrow" aria-controls="ANTECEDENTES3" style="color: white; text-decoration: none;">
                    III. ANTECEDENTES DE SALUD
                    <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display:none;">&#9650;</span>
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
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        10/01/2008
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">FECHA ÚLTIMO CONTROL</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidtop hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        10/01/2008
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 colmidgene hcol diflex">
                      <p class="textauto">
                        ENFERMEDAD CRONICA CON DIAGNOSTICO MEDICO
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">ENFERMEDAD CRONICA</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">RECIBE TRATAMIENTO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        20 dias
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 colmidgenebot hcol diflex">
                      <p class="textauto">
                        PRESENTA PROBLEMA DE SALUD MENTAL
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        9
                      </p>
                    </div>

                    <!--  diagnostico y discapacidad-->
                    <div class="col-xs-12 col-sm-12 col-md-3 nt3 colfechavisita ntop2 hcol">
                      <p>FUE DIAGNOSTICADO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid ntop2 hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        SI
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-5 colmidgene ntop2 hcol diflex">
                      <p class="textauto">
                        RECIBE TRATAMIENTO DE ACUERDO AL DIAGNOSTICO
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmidtop ntop2 hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        SI
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">TIENE DISCAPACIDAD</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        SI
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-5 colmidgene hcol diflex">
                      <p class="textauto">QUIEN REALIZA EL TRATAMIENTO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmidmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                      <p class="textauto">RECIBE TRATAMIENTO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmidmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">REGISTRO DE DISCAPACIDAD</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                      <p class="textauto">TIPO DE DISCAPACIDAD</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmidmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">NIVEL DE DISCAPACIDAD</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        SIN OBSERVACIONES
                      </p>
                    </div>

                    <!-- observacion III -->
                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 nt3 colnacionalidad hcol diflex">
                      <p class="textauto">OBSERVACIÓN</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-10 ntop2 colcodnino hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>

                    <!-- datos obtenidos -->
                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                      <h4 style="color: #0F69B4;">
                        Datos obtenidos del Sename
                      </h4>
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2 diflex"
                      style="padding-left: 0px; padding-right: 0px;">
                      <h6 style="color: #0F69B4;" class="mlficha2">
                        Ultima actualización 20/07/2019
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
                    aria-expanded="true" class="diflex tituloarrow" aria-controls="ANTECEDENTES4" style="color: white; text-decoration:none;">
                    IV. ANTECEDENTES ESCOLARES
                       <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display:none;">&#9650;</span>
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
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        4AÑO
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">ÚLTIMO CURSO APROBADO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidtop hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        3AÑO
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 colmidgene hcol diflex">
                      <p class="textauto">AÑO ULTIMO CURSO APROBADO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        2019
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 colmidgene hcol diflex">
                      <p class="textauto">ASISTENCIA ESCOLAR</p>
                    </div>
                       <div class="col-xs-12 col-sm-12 col-md-6 colgeneralesmid hcol">
                      <div class="input-group hcol">
                        <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                          IDK
                        </p>
                        <div class="input-group-btn ">
                          <!-- Button trigger modal -->

                          <button type="button" class="btn btn-narj botondetallesform" data-toggle="modal"
                            data-target="#detalles_asistencia">
                            <p class="botondetalles"><img src="img/calendario.svg"
                                style="margin-left: -10px; margin-bottom: 5px; margin-right:.5rem;">VER DETALLES</p>
                          </button>

                          <!-- Modal   -->
                          <div class="modal fade " id="detalles_asistencia" tabindex="-1" role="dialog"
                            aria-labelledby="myModalLabel">
                            <div class="modal-dialog " role="document" style="    width: 100%; padding: 5rem;">
                              <div class="modal-content ">
                                <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>

                                <div class="container calendariowidth">
                                  <div class="row" style="margin-top: 1rem; margin-bottom: 1rem;">
                                    <div class="col-xs-12 col-md-12">
                                      <h2 style="color: #0F69B4;" class="detallemes">
                                        DETALLES POR MES
                                      </h2>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1  hcol diflex col-ene1">
                                      <h6 class="textauto">ENE</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                      <h6>3</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">FEB</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2 col-feb">
                                      <h6>10</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">MAR</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                      <h6>7</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">ABR</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2 col-abr">
                                      <h6>5</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">MAY</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                      <h6>1</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">JUN</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2 col-jun">
                                      <h6>-</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">JUL</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                      <h6>16</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">AGO</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2 col-ago">
                                      <h6>5</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgenebot hcol diflex">
                                      <h6 class="textauto">SEPT</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2"
                                      style="border-top: 1px solid #E1E1E1;border-bottom: 1px solid #E1E1E1;">
                                      <h6>-</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">OCT</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2 col-oct">
                                      <h6>8</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex col-nov1">
                                      <h6 class="textauto">NOV</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2"
                                      style="border-top: 1px solid #E1E1E1;border-bottom: 1px solid #E1E1E1;">
                                      <h6>5</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">DIC</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2 col-dic">
                                      <h6>1</h6>
                                    </div>

                                    <div class="col-xs-6 col-sm-6 col-md-3 hcol diflex ntop2 ntop3 col-total" style="
                            background-color: #F59806 !important;">
                                      <h6 class="textauto" style="margin-left: auto; margin-right: auto;">
                                        TOTAL
                                      </h6>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-9 ntop2 hcol diflex ntop3"
                                      style="border-top: 1px solid #E1E1E1;;border-bottom: 1px solid #E1E1E1;; border-right: 1px solid #E1E1E1;; border-radius: 0px 5px 5px 0px;">
                                      <h6 class="textauto" style="margin-left: auto; margin-right: auto;">
                                        1
                                      </h6>
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
                      <p class="textauto">RAZÓN INASISTENCIA Y/O DESERCION</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">PRESENTA RETRASO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">NIVEL DIFERENCIAL</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                      <p class="textauto">OBSERVACIÓN</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-9 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        9
                      </p>
                    </div>

                    <!-- datos obtenidos -->
                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                      <h4 style="color: #0F69B4;">
                        Datos obtenidos del Sename
                      </h4>
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2 diflex"
                      style="padding-left: 0px; padding-right: 0px;">
                      <h6 style="color: #0F69B4;" class="mlficha2">
                        Ultima actualización 20/07/2019
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
                    aria-expanded="true" class="diflex tituloarrow" aria-controls="ANTECEDENTES5" style="color: white; text-decoration:none;">
                    V. ANTECEDENTES DE CONSUMO
                    <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display:none;">&#9650;</span>
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
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        indefinido
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">TIPO DE DROGA</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidtop hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        indefinido
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">TIPO CONSUMO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colmidgene hcol diflex">
                      <p class="textauto">TIENE EVALUACIÓN DE CONSUMO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmidmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        NO
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                      <p class="textauto">TIENE TRATAMIENTO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        NO
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">TIENE REHABILITACIÓN</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        NO
                      </p>
                    </div>

                    <!-- informe sobre quien realiza la rehabilitacion, tratamiento y observacion -->
                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colfechavisita hcol">
                      <p>INSTITUCIÓN QUE LO REALIZA</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-9 ntop2 colgeneralesmidtop hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-5 colmidgene hcol diflex">
                      <p class="textauto">
                        CONCLUSIONES DE ÚLTIMO INFORME DEL TRATAMIENTO
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-7 colgeneralesmidtop hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        indefinido
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgenebot hcol diflex">
                      <p class="textauto">OBSERVACIÓN</p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-10 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        NO
                      </p>
                    </div>

                    <!-- datos obtenidos -->
                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                      <h4 style="color: #0F69B4;">
                        Datos obtenidos del Sename
                      </h4>
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2 diflex"
                      style="padding-left: 0px; padding-right: 0px;">
                      <h6 style="color: #0F69B4;" class="mlficha2">
                        Ultima actualización 20/07/2019
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
                    aria-expanded="true" class="diflex tituloarrow" aria-controls="ANTECEDENTES6" style="color: white; text-decoration:none;">
                    VI. SITUACIÓN FAMILIAR
                       <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display:none;">&#9650;</span>
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
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">DESDE CUANDO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">COMUNA</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        PROVIDENCIA
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">QUIEN REALIZA EL TRABAJO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-9 colgeneralesmidmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        NO
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-2 colmidgenebot hcol diflex">
                      <p class="textauto">OBSERVACIÓN</p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-10 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        NO
                      </p>
                    </div>

                    <!-- datos obtenidos -->
                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                      <h4 style="color: #0F69B4;">
                        Datos obtenidos del Sename
                      </h4>
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2 diflex"
                      style="padding-left: 0px; padding-right: 0px;">
                      <h6 style="color: #0F69B4;" class="mlficha2">
                        Ultima actualización 20/07/2019
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
                    aria-expanded="true" class="diflex tituloarrow" aria-controls="ANTECEDENTES7" style="color: white; text-decoration:none;">
                    VII. VISITAS
                       <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display:none;">&#9650;</span>
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
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">QUIEN LA REALIZA</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidtop hcol">
                      <select class="form-control" class="inputfichaante"
                        style="height: 27px !important; font-size: 12px !important; margin-top: 3px;">
                        <option>SERGIO</option>
                        <option>FELIPE</option>
                        <option>JAVIER</option>
                      </select>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colmidgenebot hcol diflex">
                      <p class="textauto">CANTIDAD</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-8 colgeneralesmidmbot hcol">
                      <div class="input-group hcol">
                        <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                          IDK
                        </p>
                        <div class="input-group-btn ">
                          <!-- Button trigger modal -->

                          <button type="button" class="btn btn-narj botondetallesform" data-toggle="modal"
                            data-target="#detalles1">
                            <p class="botondetalles"><img src="img/calendario.svg"
                                style="margin-left: -10px; margin-bottom: 5px; margin-right:.5rem;">VER DETALLES</p>
                          </button>

                          <!-- Modal   -->
                          <div class="modal fade " id="detalles1" tabindex="-1" role="dialog"
                            aria-labelledby="myModalLabel">
                            <div class="modal-dialog " role="document" style="    width: 100%; padding: 5rem;">
                              <div class="modal-content ">
                                <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>

                                <div class="container calendariowidth">
                                  <div class="row" style="margin-top: 1rem; margin-bottom: 1rem;">
                                    <div class="col-xs-12 col-md-12">
                                      <h2 style="color: #0F69B4;" class="detallemes">
                                        DETALLES POR MES
                                      </h2>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1  hcol diflex col-ene1">
                                      <h6 class="textauto">ENE</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                      <h6>3</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">FEB</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2 col-feb">
                                      <h6>10</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">MAR</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                      <h6>7</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">ABR</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2 col-abr">
                                      <h6>5</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">MAY</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                      <h6>1</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">JUN</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2 col-jun">
                                      <h6>-</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">JUL</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                      <h6>16</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">AGO</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2 col-ago">
                                      <h6>5</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgenebot hcol diflex">
                                      <h6 class="textauto">SEPT</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2"
                                      style="border-top: 1px solid #E1E1E1;border-bottom: 1px solid #E1E1E1;">
                                      <h6>-</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">OCT</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2 col-oct">
                                      <h6>8</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex col-nov1">
                                      <h6 class="textauto">NOV</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2"
                                      style="border-top: 1px solid #E1E1E1;border-bottom: 1px solid #E1E1E1;">
                                      <h6>5</h6>
                                    </div>

                                    <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                      <h6 class="textauto">DIC</h6>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-2 col-dic">
                                      <h6>1</h6>
                                    </div>

                                    <div class="col-xs-6 col-sm-6 col-md-3 hcol diflex ntop2 ntop3 col-total" style="
                            background-color: #F59806 !important;">
                                      <h6 class="textauto" style="margin-left: auto; margin-right: auto;">
                                        TOTAL
                                      </h6>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-9 ntop2 hcol diflex ntop3"
                                      style="border-top: 1px solid #E1E1E1;;border-bottom: 1px solid #E1E1E1;; border-right: 1px solid #E1E1E1;; border-radius: 0px 5px 5px 0px;">
                                      <h6 class="textauto" style="margin-left: auto; margin-right: auto;">
                                        1
                                      </h6>
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
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        NO
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colmidgene hcol diflex">
                      <p class="textauto">¿CON QUIEN?</p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmidtop hcol ntop2">
                      <select class="form-control" class="inputfichaante"
                        style="height: 27px !important; font-size: 12px !important; margin-top: 3px;">
                        <option>SERGIO</option>
                        <option>FELIPE</option>
                        <option>JAVIER</option>
                      </select>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                      <p class="textauto">CANTIDAD</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-9 colgeneralesmidmbot hcol">
                      <div class="input-group hcol">
                        <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                          IDK
                        </p>
                        <div class="input-group-btn ">
                          <!-- Button trigger modal -->

                          <button type="button" class="btn btn-narj botondetallesform" data-toggle="modal"
                            data-target="#detalles2">
                            <p class="botondetalles"><img src="img/calendario.svg"
                                style="margin-left: -10px; margin-bottom: 5px; margin-right:.5rem;">VER DETALLES</p>
                          </button>

                          <!-- Modal -->
                          <div class="modal fade" id="detalles2" tabindex="-1" role="dialog"
                            aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document" style="    width: 100%; padding: 5rem;">
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
                                        <h2 style="color: #0F69B4;" class="detallemes">
                                          DETALLES POR MES
                                        </h2>
                                      </div>

                                      <div class="col-xs-3 col-sm-3 col-md-1  hcol diflex col-ene1">
                                        <h6 class="textauto">ENE</h6>
                                      </div>
                                      <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                        <h6>3</h6>
                                      </div>

                                      <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                        <h6 class="textauto">FEB</h6>
                                      </div>
                                      <div class="col-xs-3 col-sm-3 col-md-2 col-feb">
                                        <h6>10</h6>
                                      </div>

                                      <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                        <h6 class="textauto">MAR</h6>
                                      </div>
                                      <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                        <h6>7</h6>
                                      </div>

                                      <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                        <h6 class="textauto">ABR</h6>
                                      </div>
                                      <div class="col-xs-3 col-sm-3 col-md-2 col-abr">
                                        <h6>5</h6>
                                      </div>

                                      <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                        <h6 class="textauto">MAY</h6>
                                      </div>
                                      <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                        <h6>1</h6>
                                      </div>

                                      <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                        <h6 class="textauto">JUN</h6>
                                      </div>
                                      <div class="col-xs-3 col-sm-3 col-md-2 col-jun">
                                        <h6>-</h6>
                                      </div>

                                      <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                        <h6 class="textauto">JUL</h6>
                                      </div>
                                      <div class="col-xs-3 col-sm-3 col-md-2" style="border-top: 1px solid #E1E1E1;">
                                        <h6>16</h6>
                                      </div>

                                      <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                        <h6 class="textauto">AGO</h6>
                                      </div>
                                      <div class="col-xs-3 col-sm-3 col-md-2 col-ago">
                                        <h6>5</h6>
                                      </div>

                                      <div class="col-xs-3 col-sm-3 col-md-1 colmidgenebot hcol diflex">
                                        <h6 class="textauto">SEPT</h6>
                                      </div>
                                      <div class="col-xs-3 col-sm-3 col-md-2"
                                        style="border-top: 1px solid #E1E1E1;border-bottom: 1px solid #E1E1E1;">
                                        <h6>-</h6>
                                      </div>

                                      <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                        <h6 class="textauto">OCT</h6>
                                      </div>
                                      <div class="col-xs-3 col-sm-3 col-md-2 col-oct">
                                        <h6>8</h6>
                                      </div>

                                      <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex col-nov1">
                                        <h6 class="textauto">NOV</h6>
                                      </div>
                                      <div class="col-xs-3 col-sm-3 col-md-2"
                                        style="border-top: 1px solid #E1E1E1;border-bottom: 1px solid #E1E1E1;">
                                        <h6>5</h6>
                                      </div>

                                      <div class="col-xs-3 col-sm-3 col-md-1 colmidgene hcol diflex">
                                        <h6 class="textauto">DIC</h6>
                                      </div>
                                      <div class="col-xs-3 col-sm-3 col-md-2 col-dic">
                                        <h6>1</h6>
                                      </div>

                                      <div class="col-xs-6 col-sm-6 col-md-3 hcol diflex ntop2 ntop3 col-total" style="
                                background-color: #F59806 !important;">
                                        <h6 class="textauto" style="margin-left: auto; margin-right: auto;">
                                          TOTAL
                                        </h6>
                                      </div>
                                      <div class="col-xs-6 col-sm-6 col-md-9 ntop2 hcol diflex ntop3"
                                        style="border-top: 1px solid #E1E1E1;;border-bottom: 1px solid #E1E1E1;; border-right: 1px solid #E1E1E1;; border-radius: 0px 5px 5px 0px;">
                                        <h6 class="textauto" style="margin-left: auto; margin-right: auto;">
                                          1
                                        </h6>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="modal-footer">
                                  <!-- <button
                                      type="button"
                                      class="btn btn-default"
                                      data-dismiss="modal"
                                    >
                                      Close
                                    </button>
                                    <button
                                      type="button"
                                      class="btn btn-primary"
                                    >
                                      Save changes
                                    </button> -->
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- /btn-group -->
                      </div>
                    </div>

                   <!--  <div class="col-xs-12 col-sm-12 col-md-4 ntop2 colfechavisita hcol">
                      <p>SITUACIÓN DE COMPLETO ABANDONO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 colgeneralesmidtop hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 ntop2 colmidgene hcol diflex">
                      <p class="textauto">SITUACIÓN DE SUSCEPTIBILIDAD</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2  colgeneralesmidtop hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">FECHA DE SENTENCIA</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        PROVIDENCIA
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">EJECUTORIADA</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        NO
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                      <p class="textauto">ENLACE CON FAMILIA</p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        NO
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-4 colmidgene hcol diflex">
                      <p class="textauto">
                        INSTITUCIÓN QUE REALIZA EL ENLACE
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        NO
                      </p>
                    </div> -->

                    <!-- observacion -->
                 <!--    <div class="col-xs-12 col-sm-12 col-md-2 colnacionalidad nt3 ntop2 hcol diflex">
                      <p class="textauto">OBSERVACIÓN</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-10 ntop2 colcodnino hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; ">
                        Observando
                      </p>
                    </div> -->
                  </div>

                  <!-- datos obtenidos -->
                  <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                    <h4 style="color: #0F69B4;">
                      Datos obtenidos del Sename
                    </h4>
                  </div>

                  <div class="col-xs-12 col-sm-6 col-md-6 ntop2 diflex" style="padding-left: 0px; padding-right: 0px;">
                    <h6 style="color: #0F69B4;" class="mlficha2">
                      Ultima actualización 20/07/2019
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
                    aria-expanded="true" class="diflex tituloarrow" aria-controls="ANTECEDENTES8" style="color: white; text-decoration:none;">
                    VIII. PROCESO DE INTEVENCIÓN
                       <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display:none;">&#9650;</span>
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
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colmidgene hcol diflex">
                      <p class="textauto">CONCLUSIÓN DEL DIAGNOSTICO</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-8 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colmidgene hcol diflex">
                      <p class="textauto">
                        OBJETIVO DEL PLAN DE INTERVENCIÓN
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-8 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-7 colmidgene hcol diflex">
                      <p class="textauto">
                        SE VISUALIZA POSIBILIDAD DE RESTITUIR EL DERECHO A
                        VIVIR EN FAMILIA
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-5 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                      <p class="textauto">FECHA ÚLTIMO INFORME</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgene hcol diflex">
                      <p class="textauto">CONCLUSIÓN DEL INFORME</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-4 colnacionalidad nt3 ntop2 hcol diflex">
                      <p class="textauto">TIENE INTERVENCIÓN ESPECIALIZADA</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-2 ntop2 colgeneralesmid hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colmidgene hcol diflex">
                      <p class="textauto">¿QUIEN LA REALIZA?</p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colcodnino hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px; ">
                        Observando
                      </p>
                    </div>

                    <!-- ANTECEDENTES DE MALTRATO INTRARESIDENCIAL RESULTADOS-->
                    <div class="col-xs-12 col-sm-12 col-md-12 ntop2" style="padding-left: 0px;">
                      <h4 style="color: #0F69B4;">
                        ANTECEDENTES DE MALTRATO INTRARESIDENCIAL
                      </h4>
                    </div>

                    <div class="col-xs-6 col-sm-6 col-md-2 colfechavisita diflex hcol ">
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

                      <form method="post" action="#" id="formu">
                        <div class="col-xs-6 col-sm-6 col-md-2 colgeneralesmid hcol diflex ">
                          <input style="border: 0px solid black; background: transparent; font-size: 10px;"
                            class="form-check-input agresor textauto" type="text" name="numerocaso00" id="numerocaso00"
                            value=" 1070053-20191002" readonly="readonly" />
                        </div>

                        <div class="circularcol">
                          <div class="col-xs-12 col-sm-12 col-md-1 colgeneralesmid hcol diflex circularcol">
                            <input style="border: 0px solid black; background: transparent; font-size: 10px;"
                              class="form-check-input agresor textauto" type="text" name="circular0" id="circular0"
                              value=" 2309" readonly="readonly" />
                          </div>
                        </div>
                        <div class="proyectocol">
                          <div class="col-xs-12 col-sm-12 col-md-1 colgeneralesmid hcol diflex proyectocol">
                            <input style="border: 0px solid black; background: transparent; font-size: 10px;"
                              class="form-check-input agresor textauto" type="text" name="proyecto0" id="proyecto0"
                              value=" 170053" readonly="readonly" />
                          </div>
                        </div>
                        <div class="nombrecol">
                          <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol diflex nombrecol">
                            <input style="border: 0px solid black; background: transparent; font-size: 10px;"
                              class="form-check-input agresor textauto" type="text" name="nombre0" id="nombre0"
                              value=" CTD ENTRE SILOS" readonly="readonly" />
                          </div>
                        </div>
                        <div class="lugarcol">
                          <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol diflex lugarcol">
                            <input style="border: 0px solid black; background: transparent; font-size: 10px;"
                              class="form-check-input agresor textauto" type="text" name="lugar0" id="lugar0"
                              value="Al interior" readonly="readonly" />
                          </div>
                        </div>
                        <div class="tipovulneracioncol">
                          <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol diflex tipovulneracioncol">
                            <input style="border: 0px solid black; background: transparent; font-size: 10px;"
                              class="form-check-input agresor textauto" type="text" name="tipovulneracion0"
                              id="tipovulneracion0" value="Desconocido" readonly="readonly" />
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-2 colgeneralesmid hcol diflex">
                          <input style="border: 0px solid black; background: transparent; font-size: 10px;"
                            class="form-check-input agresor textauto" type="text" name="tipoinvolucrado0"
                            id="tipoinvolucrado0" value="Agresor" readonly="readonly" />
                        </div>

                      </form>
                    </div>

                    <div id="agresor">
                      <div class="col-xs-12 col-sm-12 col-md-12 ntop2" style="padding-left: 0px;">
                        <h4 style="color: #0F69B4;">
                          DATOS DEL CASO INVOLUCRADO COMO AGRESOR
                        </h4>
                      </div>

                      <div class="col-numerocaso-agresor">
                        <div class="col-xs-12 col-sm-12 col-md-2 colfechavisita diflex hcol">
                          <p class="textauto" style="font-size: 10px;">Numero de Caso
                          </p>
                        </div>
                      </div>

                      <div class="col-numerocaso-involucrado">
                        <div class="col-xs-12 col-sm-12 col-md-2 colmidgene  diflex hcol">
                          <p class="textauto" style="font-size: 10px;">Tipo Involucrado
                          </p>
                        </div>
                      </div>

                      <div class="col-xs-4 col-sm-4 col-md-2 colmidgene  diflex hcol">
                        <p class="textauto" style="font-size: 10px;">Tipo Agredido
                        </p>
                      </div>

                      <div class="col-xs-4 col-sm-4 col-md-3 colmidgene  diflex hcol">
                        <p class="textauto" style="font-size: 10px;">Tipo Relación
                        </p>
                      </div>

                      <div class="col-xs-4 col-sm-4 col-md-3 colmidgene  diflex hcol"
                        style="border-radius: 0px 5px 0px 0px; font-size: 10px;">
                        <p class="textauto" style="font-size: 10px;">Cantidad Involucrados
                        </p>
                      </div>

                      <div class="col-numerocaso-agresor">
                        <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol">
                          <p class="" style="margin-top: 5px; margin-bottom: 5px; font-size: 10px;">
                            1070053-20191002
                          </p>
                        </div>
                      </div>

                      <div class="col-numerocaso-involucrado">
                        <div class="col-xs-12 col-sm-12 col-md-2 colgeneralesmid hcol">
                          <p class="" style="margin-top: 5px; margin-bottom: 5px; font-size: 10px;">
                            Agresor
                          </p>
                        </div>
                      </div>

                      <div class="col-xs-4 col-sm-4 col-md-2 colgeneralesmid hcol">
                        <p class="" style="margin-top: 5px; margin-bottom: 5px; font-size: 10px;">
                          Externo
                        </p>
                      </div>

                      <div class="col-xs-4 col-sm-4 col-md-3 colgeneralesmid hcol">
                        <p class="" style="margin-top: 5px; margin-bottom: 5px; font-size: 10px;">
                          Amigo(a)
                        </p>
                      </div>

                      <div class="col-xs-4 col-sm-4 col-md-3 colgeneralesmid hcol">
                        <p class="" style="margin-top: 5px; margin-bottom: 5px; font-size: 10px;">
                          2
                        </p>
                      </div>

                      <!-- informacion como agresor medidas implementadas y tipo involucrado-->
                      <div class="col-xs-12 col-sm-12 col-md-12 ntop2" style="padding-left: 0px;">
                        <h4 style="color: #0F69B4;">
                          MEDIDAS IMPLEMETADAS
                        </h4>
                      </div>

                      <div class="col-numerocaso-involucrado">
                        <div class="col-xs-4 col-sm-4 col-md-4 colfechavisita diflex hcol">
                          <p class="textauto" style="font-size: 10px;">Numero de Caso
                          </p>
                        </div>
                      </div>

                      <div class="col-xs-6 col-sm-6 col-md-4 colmidgene  diflex hcol">
                        <p class="textauto" style="font-size: 10px;">Medidas Implementadas
                        </p>
                      </div>

                      <div class="col-xs-6 col-sm-6 col-md-4 colmidgene  diflex hcol"
                        style="border-radius: 0px 5px 0px 0px; font-size: 10px;">
                        <p class="textauto" style="font-size: 10px;">Tipo Involucrado
                        </p>
                      </div>

                      <div class="col-numerocaso-involucrado">
                        <div class="col-xs-4 col-sm-4 col-md-4 colgeneralesmid hcol">
                          <p class="" style="margin-top: 5px; margin-bottom: 5px; font-size: 10px;">
                            1070053-20191002
                          </p>
                        </div>
                      </div>

                      <div class="col-xs-6 col-sm-6 col-md-4 colgeneralesmid hcol">
                        <p class="" style="margin-top: 5px; margin-bottom: 5px; font-size: 10px;">
                          Solicitud de Traslado de Proyecto
                        </p>
                      </div>

                      <div class="col-xs-6 col-sm-6 col-md-4 colgeneralesmid hcol diflex">
                        <input style="border: 0px solid black; background: transparent; font-size: 10px;"
                          class="form-check-input agresor textauto" type="text" name="tipoinvolucrado0"
                          id="tipoinvolucrado0" value="Agresor" readonly="readonly" />
                      </div>
                    </div>

                  </div>

                  <!-- datos obtenidos -->
                  <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                    <h4 style="color: #0F69B4;">
                      Datos obtenidos del Sename
                    </h4>
                  </div>

                  <div class="col-xs-12 col-sm-6 col-md-6 ntop2 diflex" style="padding-left: 0px; padding-right: 0px;">
                    <h6 style="color: #0F69B4;" class="mlficha2">
                      Ultima actualización 20/07/2019
                    </h6>
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
                    aria-expanded="true" class="diflex tituloarrow" aria-controls="ANTECEDENTES9" style="color: white; text-decoration:none;">
                    SUGERENCIAS AL TRIBUNAL DE ORIGEN
                       <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display:none;">&#9650;</span>
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
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        NO
                      </p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 ntop2 colmidgene hcol diflex">
                      <p class="textauto">AUDIENCIA INMEDIATA</p>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3  colgeneralesmidtop hcol ntop2">
                        <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        NO
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 colmidgenebot hcol diflex">
                      <p class="textauto">OBSERVACIÓN</p>
                    </div>
                    

                   
                    <div class="col-xs-12 col-sm-12 col-md-9 colgeneralesmidmbot hcol">
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                      <h4 style="color: #0F69B4;">
                        Datos obtenidos de PJUD
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
                    aria-expanded="true" class="diflex tituloarrow" aria-controls="ANTECEDENTES10" style="color: white; text-decoration:none;">
                    SUGERENCIAS A SENAME
                       <span class="arrow-down " style="font-size: 13px; margin-left: auto;">&#9660;</span>
                    <span class="arrow-up" style="font-size: 13px; margin-left: auto; display:none;">&#9650;</span>
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
                      <p class="inputfichaante" style="margin-top: 5px; margin-bottom: 5px;">
                        IDK
                      </p>
                    </div>
                       <div class="col-xs-12 col-sm-6 col-md-6 ntop2" style="padding-left: 0px;">
                      <h4 style="color: #0F69B4;">
                        Datos obtenidos de PJUD
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

  </div>
</body>
</html>
