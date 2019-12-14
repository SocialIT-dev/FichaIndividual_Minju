using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;
using SENAME.Senainfo.ModFichaIndividual.BLL.DTO;

namespace SENAME.Senainfo.ModFichaIndividual.BLL.Mapper
{
	public class NiñosVigentesMapper
	{
		public static List<NiñosVigentesDto> ToDto(DataTable dt)
		{
			List<NiñosVigentesDto> list = new List<NiñosVigentesDto>();
			foreach (DataRow dr in dt.Rows)
			{
				var dto = new NiñosVigentesDto();
				dto.Error = dr["Error"].ToString();

				if (dto.Error == "")
				{
					dto.Rut = dr["Rut"].ToString();
					dto.Nombres = dr["Nombres"].ToString();
					dto.ApellidoPaterno = dr["Apellido_Paterno"].ToString();
					dto.ApellidoMaterno = dr["Apellido_Materno"].ToString();
					dto.CodNino = (int)dr["CodNino"];
					dto.Sexo = dr["Sexo"].ToString();
				}
				list.Add(dto);
			}
			return list;
		}
	}

	public class ResultadoOperacionMapper
	{
		public static List<ResultadoOperacionDto> ToDto(DataTable dt)
		{
			var list = new List<ResultadoOperacionDto>();

			foreach (DataRow dr in dt.Rows)
			{
				var dto = new ResultadoOperacionDto();
				dto.Error = dr["Error"].ToString();

				if (dto.Error == "")
				{
					dto.REGISTRO_ACTUALIZADO = dr["REGISTRO_ACTUALIZADO"].ToString();
					dto.ERROR_PROCEDURE_ = dr["ERROR_PROCEDURE_"].ToString();
					dto.ERROR_NUMBER_ = (int)dr["ERROR_NUMBER_"];
					dto.ERROR_MESSAGE_ = dr["ERROR_MESSAGE_"].ToString();
					dto.ERROR_LINE_ = (int)dr["ERROR_LINE_"];
					dto.ETAPAS_PROCESADAS = dr["ETAPAS_PROCESADAS"].ToString();
				}
				list.Add(dto);
			}
			return list;
		}
	}

	public class ProyectosUsuarioMapper
	{
		public static List<ProyectosUsuarioDto> ToDto(DataTable dt)
		{
			var list = new List<ProyectosUsuarioDto>();

			foreach (DataRow dr in dt.Rows)
			{
				var dto = new ProyectosUsuarioDto();
				dto.Error = dr["Error"].ToString();

				if (dto.Error == "")
				{
					dto.Estatus = dr["Estatus"].ToString();
					dto.NombreProyecto = dr["NombreProyecto"].ToString();
					dto.NombreInstitucion = dr["NombreInstitucion"].ToString();
					dto.CodProyecto = (int)dr["CodProyecto"];
					dto.NombreUsuario = dr["NombreUsuario"].ToString();
				}
				list.Add(dto);

			}
			return list;
		}
	}

	public class InstitucionesUsuarioMapper
	{
		public static List<InstitucionesUsuarioDto> ToDto(DataTable dt)
		{
			var list = new List<InstitucionesUsuarioDto>();
			
			foreach (DataRow dr in dt.Rows)
			{
				var dto = new InstitucionesUsuarioDto();
				dto.Error = dr["Error"].ToString();

				if (dto.Error == "")
				{
					dto.NombreInstitucion = dr["NombreInstitucion"].ToString();
					dto.CodInstitucion = (int)dr["CodInstitucion"];
					dto.NombreUsuario = dr["NombreUsuario"].ToString();
					dto.Ruta = dr["Ruta"].ToString();
					dto.TipoArchivo = dr["TipoArchivo"].ToString();
					dto.TamañoMaximo = (int)dr["TamañoMaximo"];
				}
				list.Add(dto);
			}
			return list;
		}
	}

    public class AntecedentesGeneralesPJUDMapper
    {
        public static AntecedentesGeneralesPJUDDto ToDto(DataTable dt)
        {
            var dto = new AntecedentesGeneralesPJUDDto();
            foreach (DataRow dr in dt.Rows)
            {
                dto = new AntecedentesGeneralesPJUDDto();
                dto.Error = dr["Error"].ToString();

                if (dto.Error == "")
                {
                    dto.NombreMenor = dr["NOMBRE_MENOR"].ToString();
                    dto.Rut = dr["Rut"].ToString();
                    dto.Filiacion = dr["Filiacion"].ToString();
                    dto.FechaNacimiento = DateTime.Parse(dr["FEC_NACIMIENTO"].ToString());
                    dto.EdadMenor = dr["EDAD_MENOR"].ToString();
                    dto.SexoMenor = dr["SEXO_MENOR"].ToString();
                    dto.Nacionalidad = dr["NACIONALIDAD"].ToString();
                    dto.Pasaporte = dr["PASAPORTE"].ToString();
                    dto.CodNino = dr["CODNINO"].ToString();
                    dto.NombreProyecto = dr["NOMBRE_PROYECTO"].ToString();
                    dto.ComunaProyecto = dr["COMUNA_PROYECTO"].ToString();
                    dto.TipoProyecto = dr["TIPO_PROYECTO"].ToString();
                    dto.NombreMadre = dr["NOMBRE_MADRE"].ToString();
                    dto.RutMadre = dr["RUT_MADRE"].ToString();
                    dto.DireccionMadre = dr["DIRECCION_MADRE"].ToString();
                    dto.EstadoMadre = dr["ESTADO_MADRE"].ToString();
                    dto.NacionalidadMadre = dr["NACIONALIDAD_MADRE"].ToString();
                    dto.PasaporteMadre = dr["PASAPORTE_MADRE"].ToString();
                    dto.NombrePadre = dr["NOMBRE_PADRE"].ToString();
                    dto.RutPadre = dr["RUT_PADRE"].ToString();
                    dto.DireccionPadre = dr["DIRECCION_PADRE"].ToString();
                    dto.EstadoPadre = dr["ESTADO_PADRE"].ToString();
                    dto.NacionalidadPadre = dr["NACIONALIDAD_PADRE"].ToString();
                    dto.NumPasaportePadre = dr["NUM_PASAPORTE_PADRE"].ToString();
                    dto.ComunaResidente = dr["COMUNA_RESIDENTE"].ToString();
                    dto.HanSolicitadoAyudaComunal = dr["HAN_SOLICITADO_AYUDA_COMUNAL"].ToString();
                    dto.CualAyudaComunal = dr["CUAL_AYUDA_COMUNAL"].ToString();
                    dto.ApoyoComunitario = dr["APOYO_COMUNITARIO"].ToString();
                    dto.ChileSolidario = dr["CHILE_SOLIDARIO"].ToString();
                    dto.ChileCrece = dr["CHILE_CRECE"].ToString();
                    dto.Fps = dr["FPS"].ToString();
                    dto.Puntaje = dr["PUNTAJE"].ToString();
                    dto.FechaAplicacion = DateTime.Parse(dr["FECHA_APLICACION"].ToString());
                    dto.AbriendoCaminos = dr["ABRIENDO_CAMINOS"].ToString();
                    dto.ObservMenor = dr["OBSERV_MENOR"].ToString();
                    dto.ApoyoComunitario = dr["APOYO_COMUNITARIO"].ToString();
                    dto.CitaAudiencia = dr["CITA_AUDIENCIA"].ToString();
                    dto.SugerenciasAlTribunal = dr["SUGERENCIAS_TRIBUNAL"].ToString();
                    dto.SugerenciasAlSename = dr["SUGERENCIAS_SENAME"].ToString();
                    //dto.CodTribunal = (int)dr["CodTribunal"];
                }
            }
            return dto;
        }
    }

    public class AntecedentesProcesalesPJUDMapper
    {
        public static List<AntecedentesProcesalesPJUDDto> ToDto(DataTable dt)
        {
            var list = new List<AntecedentesProcesalesPJUDDto>();
            
            foreach (DataRow dr in dt.Rows)
            {
                var dto = new AntecedentesProcesalesPJUDDto();
                dto.Error = dr["Error"].ToString();

                if (dto.Error == "")
                {
                    dto.FecIngresoEfectiva = DateTime.Parse(dr["FEC_INGESO_EFECTIVA"].ToString());
                    dto.FecIngresoSistema = DateTime.Parse(dr["FEC_INGESO_SISTEMA"].ToString());
                    dto.FecUltMedida = DateTime.Parse(dr["FEC_ULT_MEDIDA"].ToString());
                    dto.ClaseMedida = dr["CLASE_MEDIDA"].ToString();
                    dto.DuracionUltMedida = DateTime.Parse(dr["FEC_ULT_MEDIDA"].ToString());
                    dto.CausalIngreso = dr["CAUSAL_INGRESO"].ToString();
                    dto.RequitenteMedidaProteccion = dr["REQUITENTE_MEDIDA_PROTECCION"].ToString();
                    dto.HnosResidencia = dr["HNOS_RESIDENCIA"].ToString();
                    dto.HermanoFueraSis = dr["HERMANO_FUERA_SIS"].ToString();
                    dto.HermanoSis = dr["HERMANO_SIS"].ToString();
                    dto.NiñoEscuchadoPorElJuez = dr["NIÑO_ESCUCHADOPOR_EL_JUEZ"].ToString();
                    dto.FecUltimaEntrevista = DateTime.Parse(dr["FEC_ULTIMA_ENTREVISTA"].ToString());
                    dto.ObservProcesal = dr["OBSERV_PROCESAL"].ToString();
                }
                list.Add(dto);
            }
            return list;

        }
    }
}
