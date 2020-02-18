using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SENAME.Senainfo.ModFichaIndividual.BLL.DTO
{
    #region buscador

    public class NiñosVigentesDto
    {
        public string Rut { get; set; }
        public string Nombres { get; set; }
        public string ApellidoPaterno { get; set; }
        public string ApellidoMaterno { get; set; }
        public string Rit { get; set; }
        public int CodTribunal { get; set; }
        public string NombreTribunal { get; set; }
        public int CodNino { get; set; }
        public string Sexo { get; set; }
        public string Error { get; set; }
        public string CodProyecto { get; set; }
        public string Boton { get; set; }
    }

    public class ResultadoOperacionDto
    {
        public string REGISTRO_ACTUALIZADO { get; set; }
        public string ERROR_PROCEDURE_ { get; set; }
        public int ERROR_NUMBER_ { get; set; }
        public string ERROR_MESSAGE_ { get; set; }
        public int ERROR_LINE_ { get; set; }
        public string ETAPAS_PROCESADAS { get; set; }
        public string Error { get; set; }
    }

    public class ProyectosUsuarioDto
    {
        public string Estatus { get; set; }
        public string NombreProyecto { get; set; }
        public string NombreInstitucion { get; set; }
        public int CodProyecto { get; set; }
        public string NombreUsuario { get; set; }
        public string Error { get; set; }
    }
    public class InstitucionesUsuarioDto
    {
        public string NombreInstitucion { get; set; }
        public int CodInstitucion { get; set; }
        public string NombreUsuario { get; set; }
        public string Ruta { get; set; }
        public string TipoArchivo { get; set; }
        public int TamañoMaximo { get; set; }
        public string Error { get; set; }
    }

    public class ListadoNinos
    {
        public int CodNino { get; set; }
        public string Rut { get; set; }
        public string Sexo { get; set; }
        public string Nombres { get; set; }
        public string ApellidoPaterno { get; set; }
        public string ApellidoMaterno { get; set; }
        public int CodInstitucion { get; set; }
        public string NombInstitucion { get; set; }
        public int CodProyecto { get; set; }
        public string NombProyecto { get; set; }
        public string Error { get; set; }
    }

    #endregion

    #region Antecedentes Generales 

    public class AntecedentesGeneralesPJUDDto
    {
        public string Rit { get; set; }
        public string OtrosRit { get; set; }
        public string Tribunal { get; set; }
        public string OtroTribunal { get; set; }
        public string FechaVisita { get; set; }
        public string HoraVisita { get; set; }
        public string JuezVisitador { get; set; }
        public string ConsejeroTecnico { get; set; }
        public string NombreMenor { get; set; }
        public string Rut { get; set; }
        public string Filiacion { get; set; }
        public string FechaNacimiento { get; set; }
        public string EdadMenor { get; set; }
        public string SexoMenor { get; set; }
        public string Nacionalidad { get; set; }
        public string Pasaporte { get; set; }
        public string CodNino { get; set; }
        public string NombreProyecto { get; set; }
        public string ComunaProyecto { get; set; }
        public string TipoProyecto { get; set; }
        public string NombreMadre { get; set; }
        public string RutMadre { get; set; }
        public string DireccionMadre { get; set; }
        public string EstadoMadre { get; set; }
        public string NacionalidadMadre { get; set; }
        public string PasaporteMadre { get; set; }
        public string NombrePadre { get; set; }
        public string RutPadre { get; set; }
        public string DireccionPadre { get; set; }
        public string EstadoPadre { get; set; }
        public string NacionalidadPadre { get; set; }
        public string NumPasaportePadre { get; set; }
        public string ComunaResidente { get; set; }
        public string HanSolicitadoAyudaComunal { get; set; }
        public string CualAyudaComunal { get; set; }
        public string ApoyoComunitario { get; set; }
        public string ChileSolidario { get; set; }
        public string ChileCrece { get; set; }
        public string Fps { get; set; }
        public string Puntaje { get; set; }
        public string FechaAplicacion { get; set; }
        public string AbriendoCaminos { get; set; }
        public string ObservMenor { get; set; }
        public string OtrosMenor { get; set; }
        // public string ApoyoComunitario { get; set; }
        public string CitaAudiencia { get; set; }
        public string AudienciaInmediata { get; set; }
        public string SugerenciasAlTribunal { get; set; }
        public string SugerenciasAlSename { get; set; }
        public string Error { get; set; }
    }

    #endregion

    #region Antecedentes Procesales 

    public class AntecedentesProcesalesPJUDDto
    {
        public string FecIngresoEfectiva { get; set; } 
        public string FecIngresoSistema { get; set; }
        public string FecUltMedida { get; set; }
        public string ClaseMedida { get; set; }
        public string DuracionUltMedida { get; set; }
        public string CausalIngreso { get; set; }
        public string RequitenteMedidaProteccion { get; set; }
        public string HnosResidencia { get; set; }
        public string HermanoFueraSis { get; set; }
        public string HermanoSis { get; set; }
        public string NiñoEscuchadoPorElJuez { get; set; }
        public string FecUltimaEntrevista { get; set; }
        public string ObservProcesal { get; set; }
        public string Error { get; set; }
    }

    #endregion

    #region Causales de Ingreso
    public class CausalesDeIngresoDto
    {
        public string CausalIngreso { get; set; }
        public string Error { get; set; }
    }

    #endregion

    #region Antecedentes de Salud

    public class AntecedentesSaludDto
    {
        public string InscritoConsultorio { get; set; }
        public string FechaUltimoControl { get; set; }
        public string EnfermedadCronicaDiagnosticada { get; set; }
        public string EnfermedadCronica { get; set; }
        public string RecibeTratamiento { get; set; }
        public string ProblemaSaludMental { get; set; }
        public string Diagnosticado { get; set; }
        public string TratamientoDiagnostico { get; set; }
        public string FechaDiagnosticoDiscapacidad { get; set; }
        public string TieneDiscapacidad { get; set; }
        public string TratadoPor { get; set; }
        public string RecibeTratamientoDis { get; set; }
        public string RegistroDiscapacidad { get; set; }
        public string TipoDiscapacidad { get; set; }
        public string NivelDiscapacidad { get; set; }
        public string Observacion { get; set; }
        public string Error { get; set; }
    }

    #endregion

    #region Antecedentes Escolares

    public class AntecedentesEscolaresDto
    {
        public string CursoActual { get; set; }
        public string UltimoCursoAprobado { get; set; }
        public string AnioUltimoCursoAprobado { get; set; }
        public string AsistenciaEscolar { get; set; }
        public string RazonInasistencia { get; set; }
        public string PresentaRetraso { get; set; }
        public string NivelDiferencial { get; set; }
        public string Observacion { get; set; }
        public float EneroAsistencia { get; set; }
        public float FebreroAsistencia { get; set; }
        public float MarzoAsistencia { get; set; }
        public float AbrilAsistencia { get; set; }
        public float MayoAsistencia { get; set; }
        public float JunioAsistencia { get; set; }
        public float JulioAsistencia { get; set; }
        public float AgostoAsistencia { get; set; }
        public float SeptiembreAsistencia { get; set; }
        public float OctubreAsistencia { get; set; }
        public float NoviembreAsistencia { get; set; }
        public float DiciembreAsistencia { get; set; }
        public string Error { get; set; }
    }

    #endregion

    #region Antecedentes de Consumo

    public class AntecedentesConsumoDto
    {
        public string ConsumeDrogas { get; set; }
        public string TipoDroga { get; set; }
        public string TipoConsumo { get; set; }
        public string TieneEvaluacion { get; set; }
        public string TieneTratamiento { get; set; }
        public string TieneRehabilitacion { get; set; }
        public string InstitucionTratamiento { get; set; }
        public string ConclusionUltimoInforme { get; set; }
        public string Observacion { get; set; }
        public string Error { get; set; }
    }

    #endregion

    #region Situación Familiar

    public class SituacionFamiliarDto
    {
        public string ExisteTrabajoEgreso { get; set; }
        public string TrabajoDesde { get; set; }
        public string Comuna { get; set; }
        public string QuienRealizaTrabajo { get; set; }
        public string Observacion { get; set; }
        public string Error { get; set; }
    }

    #endregion

    #region Antecedentes Visitas 

    public class AntecedentesVisitasSenameDto
    {
        public string CodProyecto { get; set; }
        public DateTime FechaRegistro { get; set; }
        public string IdUsuarioActualizacion { get; set; }
        public DateTime FechaActualizacion { get; set; }
        public bool RecibeVisitas { get; set; }
        public bool SinVisitas { get; set; }
        public bool SalidaPernoctacion { get; set; }
        public DateTime FechaHasta { get; set; }
        public DateTime FechaUltimaVisita { get; set; }
        public DateTime FechaUltimaPernoctacion { get; set; }
        public string Error { get; set; }
    }

    public class DetalleAnualDto
    {
        public int Enero { get; set; }
        public int Febrero { get; set; }
        public int Marzo { get; set; }
        public int Abril { get; set; }
        public int Mayo { get; set; }
        public int Junio { get; set; }
        public int Julio { get; set; }
        public int Agosto { get; set; }
        public int Septiembre { get; set; }
        public int Octubre { get; set; }
        public int Noviembre { get; set; }
        public int Diciembre { get; set; }
        public int Anio { get; set; }
        public string CodProyecto { get; set; }
        public int Total { get; set; }
        public string Error { get; set; }
    }

    #endregion

    #region Proceso Intervención

    public class ProcesoIntervencionDto
    {
        public string EvaluacionDiagnosticada { get; set; }
        public string ConclusionDiagnostico { get; set; }
        public string ObjetivoPlan { get; set; }
        public string PosibilidadRestitucion { get; set; }
        public string FechaUntimoInforme { get; set; }
        public string ConclusionInforme { get; set; }
        public string IntervencionEspecializada { get; set; }
        public string InterventorEspecialista { get; set; }
        public string Error { get; set; }
    }

    public class MaltratoIntraResidencialDto
    {
        public string NumeroCaso { get; set; }
        public string Circular { get; set; }
        public string CodProyecto { get; set; }
        public string NombreProyecto { get; set; }
        public string Lugar { get; set; }
        public string TipoVulneracion { get; set; }
        public string TipoInvolucrado { get; set; }
        public string Error { get; set; }
    }

    public class CasoAgresorDto
    {
        public string NumeroCaso { get; set; }
        public string TipoInvolucrado { get; set; }
        public string TipoAgredido { get; set; }
        public string TipoRelacion { get; set; }
        public string CantidadInvolucrados { get; set; }
        public string Error { get; set; }
    }

    public class MedidaImplementadaDto
    {
        public string NumeroCaso { get; set; }
        public string MedidaImplementada { get; set; }
        public string TipoInvolucrado { get; set; }
        public string Error { get; set; }
    }

    #endregion
}
