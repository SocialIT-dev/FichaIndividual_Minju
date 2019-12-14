using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using SENAME.Senainfo.ModFichaIndividual.DAL.DAO;
using SENAME.Senainfo.ModFichaIndividual.BLL.Mapper;
using SENAME.Senainfo.ModFichaIndividual.BLL.DTO;
using SENAME.Senainfo.ModFichaIndividual.BLL.Interfaces;

namespace SENAME.Senainfo.ModFichaIndividual.BLL.Impl
{
	public class NiñosVigentesImpl : INiñosVigentes
	{
		private readonly NiñosVigentesDao _niñosVigentesDao;

		public NiñosVigentesImpl()
		{
			_niñosVigentesDao = new NiñosVigentesDao();
		}

		public List<NiñosVigentesDto> ObtenerNiñosVigentes(int? CodInstitucion, int? CodProyecto, string Rut, int? CodNino, string NombNino, string ApellPaterno, string SexoNino)
		{
			var result = _niñosVigentesDao.ObtenerNiñosVigentes(CodInstitucion, CodProyecto, Rut, CodNino, NombNino, ApellPaterno, SexoNino);
			return NiñosVigentesMapper.ToDto(result);
		}
	}

	public class ProyectosUsuarioImpl : IProyectosUsuario
	{
		private readonly ProyectosUsuarioDao _proyectosUsuarioDao;

		public ProyectosUsuarioImpl()
		{
			_proyectosUsuarioDao = new ProyectosUsuarioDao();
		}

		public List<ProyectosUsuarioDto> ObtenerProyectosUsuario(int? IdUsuario)
		{
			var result = _proyectosUsuarioDao.ObtenerProyectosUsuario(IdUsuario);
			return ProyectosUsuarioMapper.ToDto(result);
		}

		public List<ProyectosUsuarioDto> ObtenerProyectosXInstitucionYUsuario(int? IdUsuario, int? codigoInstitucion)
		{
			var result = _proyectosUsuarioDao.ProyectosXInstitucionYUsuario(IdUsuario, codigoInstitucion);
			return ProyectosUsuarioMapper.ToDto(result);
		}

	}

	public class InstitucionesUsuarioImpl : IInstitucionesUsuario
	{
		private readonly InstitucionesUsuarioDao _institucionesUsuarioDao;

		public InstitucionesUsuarioImpl()
		{
			_institucionesUsuarioDao = new InstitucionesUsuarioDao();
		}

		public List<InstitucionesUsuarioDto> ObtenerInstitucionesUsuario(int? IdUsuario)
		{
			var result = _institucionesUsuarioDao.ObtenerInstitucionesUsuario(IdUsuario);
			return InstitucionesUsuarioMapper.ToDto(result);
		}
	}

    public class AntecedentesGeneralesPJUDImpl : IAntecedentesGeneralesPJUD
    {
        private readonly AntecedentesGeneralesPJUDDao _antecedentesGeneralesPJUDDao;

        public AntecedentesGeneralesPJUDImpl()
        {
            _antecedentesGeneralesPJUDDao = new AntecedentesGeneralesPJUDDao();
        }

        public DTO.AntecedentesGeneralesPJUDDto ObtenerAntecedentesGenerales(string codNino, int codProyecto)
        {
            var result = _antecedentesGeneralesPJUDDao.ObtenerAntecedentesGenerales(codNino, codProyecto);
            return AntecedentesGeneralesPJUDMapper.ToDto(result);
        }
    }

    public class AntecedentesProcesalesPJUDImpl : IAntecedentesProcesalesPJUD
    {
        private readonly AntecedentesProcesalesPJUDDao _antecedentesProcesalesPJUDDao;

        public AntecedentesProcesalesPJUDImpl()
        {
            _antecedentesProcesalesPJUDDao = new AntecedentesProcesalesPJUDDao();
        }

        public List<DTO.AntecedentesProcesalesPJUDDto> ObtenerAntecedentesProcesalesPJUD(string codNino)
        {
            var result = _antecedentesProcesalesPJUDDao.ObtenerAntecedentesProcesalesPJUD(codNino);
            return AntecedentesProcesalesPJUDMapper.ToDto(result);
        }
    }
}
