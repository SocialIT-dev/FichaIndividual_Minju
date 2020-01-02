using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO = SENAME.Senainfo.ModFichaIndividual.BLL.DTO;

namespace SENAME.Senainfo.ModFichaIndividual.BLL.Interfaces
{
	public interface INiñosVigentes
	{
		List<DTO.NiñosVigentesDto> ObtenerNiñosVigentes(int? CodInstitucion, int? CodProyecto, string Rut, int? CodNino, string NombNino, string ApellPaterno, string SexoNino);
	}

	public interface IProyectosUsuario
	{
		List<DTO.ProyectosUsuarioDto> ObtenerProyectosUsuario(int? IdUsuario);
	}

	public interface IInstitucionesUsuario
	{
		List<DTO.InstitucionesUsuarioDto> ObtenerInstitucionesUsuario(int? IdUsuario);
	}

    public interface IAntecedentesGeneralesPJUD
    {
        DTO.AntecedentesGeneralesPJUDDto ObtenerAntecedentesGenerales(string codNino, int codProyecto);
    }

    public interface IAntecedentesProcesalesPJUD
    {
        DTO.AntecedentesProcesalesPJUDDto ObtenerAntecedentesProcesalesPJUD(string codNino);

    }

    public interface IDetalleAnual
    {
        DTO.DetalleAnualDto ObtenerDetalleAnualVisita(string Usuario, string Anio, int CodProyecto, int CodNino);
        DTO.DetalleAnualDto ObtenerDetalleAnualPernoctacion(string Usuario, string Anio, int CodProyecto, int CodNino);
    }

    public interface IAntecedentesVisitasSename
    {
        DTO.AntecedentesVisitasSenameDto ObtenerAntecedentesVisita(int CodNino);
    }

    public interface IAntecedentesSalud
    {
        DTO.AntecedentesSaludDto ObtenerAntecedentesSalud(int CodNino);
    }

    public interface ISituacionFamiliar
    {
        DTO.SituacionFamiliarDto ObtenerSituacionFamiliar(int CodNino);

    }

    public interface IAntecedentesConsumo
    {
        DTO.AntecedentesConsumoDto ObtenerAntecedentesConsumo(int CodNino);
    }

    public interface IAntecedentesEscolares
    {
        DTO.AntecedentesEscolaresDto ObtenerAntecedentesEscolares(int CodNino);
    }

    public interface IProcesoIntervencion
    {
        DTO.ProcesoIntervencionDto ObtenerProcesoIntervencion(int CodNino);
    }

    public interface IMaltratoIntraResidencial
    {
        List<DTO.MaltratoIntraResidencialDto> ObtenerMaltratoIntraResidencial(int CodNino);
    }

    public interface ICasoAgresor
    {
        List<DTO.CasoAgresorDto> ObtenerCasoAgresor(int CodNino);
    }

    public interface IMedidaImplementada
    {
        List<DTO.MedidaImplementadaDto> ObtenerMedidaImplementada(int CodNino);
    }



}


