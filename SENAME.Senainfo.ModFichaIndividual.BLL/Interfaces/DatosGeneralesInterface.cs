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
}


