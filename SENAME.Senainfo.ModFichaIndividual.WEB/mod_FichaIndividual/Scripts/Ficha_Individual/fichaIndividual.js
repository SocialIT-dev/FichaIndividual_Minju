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
});
