﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FichaIndividualResultadosBusqueda.aspx.cs" Inherits="SENAME.Senainfo.ModFichaIndividual.WEB.ModFichaIndividual.FichaIndividualResultadosBusqueda" %>


<div class="col-xs-12 col-sm-12 mytop1y">
    <hr class="hrmin" />
</div>

    <%--Nombre del Niño--%>
    <div class="col-xs-12 col-md-2 mytop1 diflex colnombre mytop1y">
        <p class="mrlautoinput">Nombre</p>
    </div>

    <div class="col-xs-12 col-md-3 mytop1 colnombreinput">
    <input
        type="text"
        class="form-control inputnombre"
        name="txtnombre"
        value="Nombre de Prueba"/>
    </div>

    <%--Rut del Niño--%>
    <div class="col-xs-12 col-md-2 mytop1 diflex colrun">
    <p class="mrlautoinput">Run o Pasaporte</p>
    </div>

    <div class="col-xs-12 col-md-3 mytop1 colruninput">
    <input
        type="text"
        class="form-control inputrun"
        name="txtrunino"
        value="25.645.454-4"/>
    </div>

    <div class="col-xs-12 col-md-2 mytop1 colboton diflex">
    <a href="ficha.html"
        type="submit"
        class="btn btn-primary botonform maxbotauto">
        Ver Información
    </a >
    </div>
