using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SENAME.Senainfo.ModFichaIndividual.BLL.DTO
{
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

    public class AntecedentesGeneralesPJUDDto
    {
        public string NombreMenor { get; set; }
        public string Rut { get; set; }
        public string Filiacion { get; set; }
        public DateTime FechaNacimiento { get; set; }
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
        public DateTime FechaAplicacion { get; set; }
        public string AbriendoCaminos { get; set; }
        public string ObservMenor { get; set; }
        // public string ApoyoComunitario { get; set; }
        public string CitaAudiencia { get; set; }
        public string SugerenciasAlTribunal { get; set; }
        public string SugerenciasAlSename { get; set; }
        public string Error { get; set; }
    }

    public class AntecedentesProcesalesPJUDDto
    {
        public DateTime FecIngresoEfectiva { get; set; } 
        public DateTime FecIngresoSistema { get; set; }
        public DateTime FecUltMedida { get; set; }
        public string ClaseMedida { get; set; }
        public DateTime DuracionUltMedida { get; set; }
        public string CausalIngreso { get; set; }
        public string RequitenteMedidaProteccion { get; set; }
        public string HnosResidencia { get; set; }
        public string HermanoFueraSis { get; set; }
        public string HermanoSis { get; set; }
        public string NiñoEscuchadoPorElJuez { get; set; }
        public DateTime FecUltimaEntrevista { get; set; }
        public string ObservProcesal { get; set; }
        public string Error { get; set; }
    }

}
