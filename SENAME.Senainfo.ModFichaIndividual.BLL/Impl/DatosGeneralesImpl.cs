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

    #region Buscador

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

    #endregion

    #region Antecedentes Generales

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

    #endregion

    #region Antecedentes Procesales

    public class AntecedentesProcesalesPJUDImpl : IAntecedentesProcesalesPJUD
    {
        private readonly AntecedentesProcesalesPJUDDao _antecedentesProcesalesPJUDDao;

        public AntecedentesProcesalesPJUDImpl()
        {
            _antecedentesProcesalesPJUDDao = new AntecedentesProcesalesPJUDDao();
        }

        public DTO.AntecedentesProcesalesPJUDDto ObtenerAntecedentesProcesalesPJUD(string codNino)
        {
            var result = _antecedentesProcesalesPJUDDao.ObtenerAntecedentesProcesalesPJUD(codNino);
            return AntecedentesProcesalesPJUDMapper.ToDto(result);
        }
    }

    #endregion

    #region Detalle Visitas

    public class DetalleAnualImpl : IDetalleAnual
    {
        private readonly DetalleAnualDao _detalleAnualDao;

        public DetalleAnualImpl()
        {
            _detalleAnualDao = new DetalleAnualDao();
        }

        public DTO.DetalleAnualDto ObtenerDetalleAnualVisita(string Usuario, string Anio, int CodProyecto, int CodNino)
        {
            var result = _detalleAnualDao.ObtenerDetalleAnualVisita(Usuario, Anio, CodProyecto, CodNino);
            return DetalleAnualMapper.ToDto(result);
        }

        public DTO.DetalleAnualDto ObtenerDetalleAnualPernoctacion(string Usuario, string Anio, int CodProyecto, int CodNino)
        {
            var result = _detalleAnualDao.ObtenerDetalleAnualPernoctacion(Usuario, Anio, CodProyecto, CodNino);
            return DetalleAnualMapper.ToDto(result);
        }
    }

    public class AntecedentesVisitasSenameImpl : IAntecedentesVisitasSename
    {
        private readonly AntecedentesVisitasSenameDao _antecedentesVisitaSenameDao;

        public AntecedentesVisitasSenameImpl()
        {
            _antecedentesVisitaSenameDao = new AntecedentesVisitasSenameDao();
        }

        public DTO.AntecedentesVisitasSenameDto ObtenerAntecedentesVisita(int CodNino)
        {
            var result = _antecedentesVisitaSenameDao.ObtenerAntecedentesVisita(CodNino);
            return AntecedentesVisitasSenameMapper.ToDto(result);
        }

    }

    #endregion

    #region Antecedentes Salud

    public class AntecedentesSaludImpl : IAntecedentesSalud
    {
        private readonly AntecedentesSaludDao _antecedentesSaludDao;

        public AntecedentesSaludImpl()
        {
            _antecedentesSaludDao = new AntecedentesSaludDao();
        }

        public DTO.AntecedentesSaludDto ObtenerAntecedentesSalud(int CodNino)
        {
            var result = _antecedentesSaludDao.ObtenerAntecedentesSalud(CodNino);
            return AntecedentesSaludMapper.ToDto(result);
        }
    }

    #endregion

    #region SituacionFamiliar

    public class SituacionFamiliarImpl : ISituacionFamiliar
    {
        private readonly SituacionFamiliarDao _situacionFamiliarDao;

        public SituacionFamiliarImpl()
        {
            _situacionFamiliarDao = new SituacionFamiliarDao();
        }

        public DTO.SituacionFamiliarDto ObtenerSituacionFamiliar(int CodNino)
        {
            var result = _situacionFamiliarDao.ObtenerSituacionFamiliar(CodNino);
            return SituacionFamiliarMapper.ToDto(result);
        }
    }

    #endregion

    #region Antecedentes Consumo

    public class AntecedentesConsumoImpl : IAntecedentesConsumo
    {
        private readonly AntecedentesConsumoDao _antecedentesConsumoDao;

        public AntecedentesConsumoImpl()
        {
            _antecedentesConsumoDao = new AntecedentesConsumoDao();
        }

        public DTO.AntecedentesConsumoDto ObtenerAntecedentesConsumo(int CodNino)
        {
            var result = _antecedentesConsumoDao.ObtenerAntecedentesConsumo(CodNino);
            return AntecedentesConsumoMapper.ToDto(result);
        }
    }

    #endregion

    #region Antecedentes Escolares

    public class AntecedentesEscolaresImpl : IAntecedentesEscolares
    {
        private readonly AntecedentesEscolaresDao _antecedentesEscolaresDao;

        public AntecedentesEscolaresImpl()
        {
            _antecedentesEscolaresDao = new AntecedentesEscolaresDao();
        }

        public DTO.AntecedentesEscolaresDto ObtenerAntecedentesEscolares(int CodNino)
        {
            var result = _antecedentesEscolaresDao.ObtenerAntecedentesEscolares(CodNino);
            return AntecedentesEscolaresMapper.ToDto(result);
        }
    }

    #endregion

    #region Proceso Intervencion

    public class ProcesoIntervencionImpl : IProcesoIntervencion
    {
        private readonly ProcesoIntervencionDao _procesoIntervencionDao;

        public ProcesoIntervencionImpl()
        {
            _procesoIntervencionDao = new ProcesoIntervencionDao();
        }

        public DTO.ProcesoIntervencionDto ObtenerProcesoIntervencion(int CodNino)
        {
            var result = _procesoIntervencionDao.ObtenerProcesoIntervencion(CodNino);
            return ProcesoIntervencionMapper.ToDto(result);
        }

    }

    public class MaltratoIntraResidencialImpl : IMaltratoIntraResidencial
    {
        private readonly MaltratoIntraResidencialDao _maltratoDao;

        public MaltratoIntraResidencialImpl()
        {
            _maltratoDao = new MaltratoIntraResidencialDao();
        }

        public List<MaltratoIntraResidencialDto> ObtenerMaltratoIntraResidencial(int codnino)
        {
            var result = _maltratoDao.ObtenerMaltratoIntraResidencial(codnino);
            return MaltratoIntraResidencialMapper.ToDto(result);
        }
    }

    public class CasoAgresorImpl : ICasoAgresor
    {
        private readonly CasoAgresorDao _agresorDao;

        public CasoAgresorImpl()
        {
            _agresorDao = new CasoAgresorDao();
        }

        public List<CasoAgresorDto> ObtenerCasoAgresor(int CodNino)
        {
            var result = _agresorDao.ObtenerCasoAgresor(CodNino);
            return CasoAgresorMapper.ToDto(result);
        }
    }

    public class MedidaImplementadaImpl : IMedidaImplementada
    {
        private readonly MedidaImplementadaDao _medidaImplementadaDao;

        public MedidaImplementadaImpl()
        {
            _medidaImplementadaDao = new MedidaImplementadaDao();
        }

        public List<MedidaImplementadaDto> ObtenerMedidaImplementada(int CodNino)
        {
            var result = _medidaImplementadaDao.ObtenerMedidasIMplementadas(CodNino);
            return MedidaImplementadaMapper.ToDto(result);
        }
    }

    #endregion

    #region Reportes

    public class ReporteFichaIndividualImpl 
    {
        private readonly AntecedentesGeneralesPJUDDao _antecedentesGenerales;
        private readonly AntecedentesProcesalesPJUDDao _antecedentesProcesalesPJUDDao;
        private readonly DetalleAnualDao _detalleAnualDao;
        private readonly AntecedentesSaludDao _antecedentesSaludDao;
        private readonly SituacionFamiliarDao _situacionFamiliarDao;
        private readonly AntecedentesConsumoDao _antecedentesConsumoDao;
        private readonly AntecedentesEscolaresDao _antecedentesEscolaresDao;
        private readonly ProcesoIntervencionDao _procesoIntervencionDao;
        private readonly MaltratoIntraResidencialDao _maltratoDao;
        private readonly CasoAgresorDao _agresorDao;
        private readonly MedidaImplementadaDao _medidaImplementadaDao;

        public ReporteFichaIndividualImpl()
        {
            _antecedentesGenerales = new AntecedentesGeneralesPJUDDao();
            _antecedentesProcesalesPJUDDao = new AntecedentesProcesalesPJUDDao();
            _procesoIntervencionDao = new ProcesoIntervencionDao();
            _detalleAnualDao = new DetalleAnualDao();
            _antecedentesSaludDao = new AntecedentesSaludDao();
            _situacionFamiliarDao = new SituacionFamiliarDao();
            _antecedentesConsumoDao = new AntecedentesConsumoDao();
            _antecedentesEscolaresDao = new AntecedentesEscolaresDao();
            _procesoIntervencionDao = new ProcesoIntervencionDao();
            _maltratoDao = new MaltratoIntraResidencialDao();
            _agresorDao = new CasoAgresorDao();
            _medidaImplementadaDao = new MedidaImplementadaDao();
        }

        public System.Data.DataSet ObtenerDatosReporteFicha(int CodNino, int codProyecto)
        {
            var ds = new System.Data.DataSet();
            var dtDatosGen = _antecedentesGenerales.ObtenerAntecedentesGenerales(CodNino.ToString(), codProyecto);
            var dtAntecedenesProcesales = _antecedentesProcesalesPJUDDao.ObtenerAntecedentesProcesalesPJUD(CodNino.ToString());
            var dtCausalesIngreso = _antecedentesProcesalesPJUDDao.ObtenerCausalesIngreso(CodNino.ToString());
            var dtDetalleAnual = _detalleAnualDao.ObtenerDetalleAnualReporte("2020",codProyecto, CodNino);
            var dtAntecedentesSalud = _antecedentesSaludDao.ObtenerAntecedentesSalud(CodNino);
            var dtSituacionFamiliar = _situacionFamiliarDao.ObtenerSituacionFamiliar(CodNino);
            var dtAntecedentesConsumo = _antecedentesConsumoDao.ObtenerAntecedentesConsumo(CodNino);
            var dtAntecedentesEscolares = _antecedentesEscolaresDao.ObtenerAntecedentesEscolares(CodNino);
            var dtProcesoInterv = _procesoIntervencionDao.ObtenerProcesoIntervencion(CodNino);
            var dtMaltrato = _maltratoDao.ObtenerMaltratoIntraResidencial(CodNino);
            var dtAgresor = _agresorDao.ObtenerCasoAgresor(CodNino);
            var dtMedidas = _medidaImplementadaDao.ObtenerMedidasIMplementadas(CodNino);
            ds.Tables.Add("dtDatosGen");
            ds.Tables.Add("dtAntecedenesProcesales");
            ds.Tables.Add("dtCausalesIngreso");
            ds.Tables.Add("dtDetalleAnual");
            ds.Tables.Add("dtAntecedentesSalud");
            ds.Tables.Add("dtSituacionFamiliar");
            ds.Tables.Add("dtAntecedentesConsumo");
            ds.Tables.Add("dtAntecedentesEscolares");
            ds.Tables.Add("dtProcesoInterv");
            ds.Tables.Add("dtMaltrato");
            ds.Tables.Add("dtAgresor");
            ds.Tables.Add("dtMedidas");
            return ds;
        }
    }

    #endregion
}



