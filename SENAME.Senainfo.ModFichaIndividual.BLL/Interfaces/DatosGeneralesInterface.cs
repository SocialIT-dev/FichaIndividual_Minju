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
        List<DTO.AntecedentesProcesalesPJUDDto> ObtenerAntecedentesProcesalesPJUD(string codNino);
    }

}


