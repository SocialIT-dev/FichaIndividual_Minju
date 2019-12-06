﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//using System.Threading.Tasks;

namespace SENAME.Senainfo.ModFichaIndividual.BLL.Interfaces
{
	public interface IDatosGenerales
	{
		List<SENAME.Senainfo.ModFichaIndividual.BLL.DTO.DatosGeneralesDto> ObtenerDatosGenerales(int? CodProyecto);
	}

	public interface INiñosVigentes
	{
		List<SENAME.Senainfo.ModFichaIndividual.BLL.DTO.NiñosVigentesDto> ObtenerNiñosVigentes(int? CodInstitucion, int? CodProyecto, string Rut, int? CodNino, string NombNino, string ApellPaterno, string SexoNino);
	}

	public interface IResultadoOperacion
	{
		List<SENAME.Senainfo.ModFichaIndividual.BLL.DTO.ResultadoOperacionDto> GrabarAntecedentesGenerales(
			int? CodProyecto,
			int? CodFicha,
			int? CodEstadoFicha,
			int? idUsuarioActualizacion,
			int? PoblacionHombres,
			int? PoblacionMujeres,
			int? PlazasSenameHombres,
			int? PlazasSenameMujeres,
			int? OtrasPlazasHombres,
			int? OtrasPlazasMujeres,
			int? TotalNnaHombres,
			int? TotalNnaMujeres,
			int? TotalAcercamientoHombres,
			int? TotalAcercamientoMujeres,
			int? TotalMayoresHombres,
			int? TotalMayoresMujeres,
			int? FugaHombres,
			int? FugaMujeres,
			int? HospitalizadosHombres,
			int? HosptitalizadosMujeres,
			int? Art80Hombres,
			int? Art80Mujeres,
			int? AbandonoHombres,
			int? AbandonoMujeres,
			int? SentenciaAdopcionHombres,
			int? SentenciaAdopcionMujeres,
			int? EnlaceAdopcionHombres,
			int? EnlaceAdopcionMujeres,
			int? SinSentenciaHombres,
			int? SinSentenciaMujeres,
			int? AdolecentesHijosHombres,
			int? AdolecentesHijosMujeres,
			string DetalleNNAAbandono,
			string DetalleAdolecentesConHijos);
	}

	public interface IAntecedentesGenerales
	{
		List<SENAME.Senainfo.ModFichaIndividual.BLL.DTO.AntecedentesGeneralesDto> ObtenerAntecedentesGenerales(int? CodFicha);
	}

	public interface INnaAbandono
	{
		List<SENAME.Senainfo.ModFichaIndividual.BLL.DTO.NnaAbandonoDto> ObtenerNnaAbandono(int? CodFicha);
	}

	public interface IAdolecentesConHijos
	{
		List<SENAME.Senainfo.ModFichaIndividual.BLL.DTO.AdolecentesConHijosDto> ObtenerAdolecentesConHijos(int? CodFicha);
	}

	public interface IProyectosUsuario
	{
		List<SENAME.Senainfo.ModFichaIndividual.BLL.DTO.ProyectosUsuarioDto> ObtenerProyectosUsuario(int? IdUsuario);
	}

	public interface IInstitucionesUsuario
	{
		List<SENAME.Senainfo.ModFichaIndividual.BLL.DTO.InstitucionesUsuarioDto> ObtenerInstitucionesUsuario(int? IdUsuario);
	}

	public interface ISETFechaAplicacion
	{
		List<SENAME.Senainfo.ModFichaIndividual.BLL.DTO.SETFechaAplicacionDto> GrabarFechaAplicacionFicha(int? CodFicha, string FechaAplicacion);
	}

	public interface IFechaAplicacion
	{
		List<SENAME.Senainfo.ModFichaIndividual.BLL.DTO.FechaAplicacionDto> ObtenerFechaAplicacion(int? CodFicha);
	}

}


