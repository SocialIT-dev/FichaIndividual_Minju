﻿using System;
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
                    dto.CodProyecto = dr["codproyecto"].ToString();
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
                    dto.Rit = dr["RIT"].ToString();
                    dto.OtrosRit = dr["OTROS_RIT"].ToString();
                    dto.Tribunal = dr["GLS_TRIBUNAL"].ToString();
                    dto.OtroTribunal = dr["GLS_OTRO_TRIBUNAL"].ToString();
                    dto.FechaVisita = (dr["FEC_VISITA"].ToString() == "01-01-1900 0:00:00" ? "Sin dato" : dr["FEC_VISITA"].ToString());
                    dto.HoraVisita = dr["HORA_VISITA"].ToString();
                    dto.JuezVisitador = dr["JUEZ_VISITADOR"].ToString();
                    dto.ConsejeroTecnico = dr["CONSEJO_TECNICO"].ToString();
                    dto.NombreMenor = dr["NOMBRE_MENOR"].ToString();
                    dto.Rut = dr["Rut"].ToString();
                    dto.Filiacion = dr["Filiacion"].ToString();
                    dto.FechaNacimiento = (dr["FEC_NACIMIENTO"].ToString() == "01-01-1900 0:00:00" ? "Sin dato": dr["FEC_NACIMIENTO"].ToString());
                    dto.EdadMenor = dr["EDAD_MENOR"].ToString();
                    dto.SexoMenor = dr["SEXO_MENOR"].ToString();
                    dto.Nacionalidad = dr["NACIONALIDAD"].ToString();
                    dto.Pasaporte = dr["PASAPORTE"].ToString();
                    dto.CodNino = dr["COD_NINO"].ToString();
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
                    dto.FechaAplicacion = (dr["FECHA_APLICACION"].ToString() == "01-01-1900 0:00:00" ? "Sin dato" : dr["FECHA_APLICACION"].ToString() );
                    dto.AbriendoCaminos = dr["ABRIENDO_CAMINOS"].ToString();
                    dto.ObservMenor = dr["OBSERV_MENOR"].ToString();
                    dto.ApoyoComunitario = dr["APOYO_COMUNITARIO"].ToString();
                    dto.OtrosMenor = dr["GLS_OTROS"].ToString(); 
                    dto.CitaAudiencia = dr["CITA_AUDIENCIA"].ToString();
                    dto.AudienciaInmediata = (dr["AUDIENCIA_INMEDIATA"].ToString() == "01-01-1900 0:00:00" ? "Sin dato" : dr["AUDIENCIA_INMEDIATA"].ToString());
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
        public static AntecedentesProcesalesPJUDDto ToDto(DataTable dt)
        {
            var dto = new AntecedentesProcesalesPJUDDto();

            foreach (DataRow dr in dt.Rows)
            {
                dto = new AntecedentesProcesalesPJUDDto();
                dto.Error = dr["Error"].ToString();

                if (dto.Error == "")
                {
                    dto.FecIngresoEfectiva = (dr["FEC_INGRESO_EFECTIVA"].ToString() == "01-01-1900 0:00:00" ? "Sin dato" : dr["FEC_INGRESO_EFECTIVA"].ToString());
                    dto.FecIngresoSistema = (dr["FEC_INGRESO_SISTEMA"].ToString() == "01-01-1900 0:00:00" ? "Sin dato" : dr["FEC_INGRESO_SISTEMA"].ToString());
                    dto.FecUltMedida = (dr["FEC_ULT_MEDIDA"].ToString() == "01-01-1900 0:00:00" ? "Sin dato" : dr["FEC_ULT_MEDIDA"].ToString());
                    dto.ClaseMedida = dr["CLASE_MEDIDA"].ToString();
                    dto.DuracionUltMedida = dr["FEC_ULT_MEDIDA"].ToString();
                    dto.CausalIngreso = dr["CAUSAL_INGRESO"].ToString();
                    dto.RequitenteMedidaProteccion = dr["REQUITENTE_MEDIDA_PROTECCION"].ToString();
                    dto.HnosResidencia = dr["HNOS_RESIDENCIA"].ToString();
                    dto.HermanoFueraSis = dr["HERMANO_FUERA_SIS"].ToString();
                    dto.HermanoSis = dr["HERMANO_SIS"].ToString();
                    dto.NiñoEscuchadoPorElJuez = dr["NNA_ESCUCHADO_POR_ELJUEZ"].ToString();
                    dto.FecUltimaEntrevista = (dr["FEC_ULTIMA_ENTREVISTA"].ToString() == "01-01-1900 0:00:00" ? "Sin dato" : dr["FEC_ULTIMA_ENTREVISTA"].ToString());
                    dto.ObservProcesal = dr["OBSERV_PROCESAL"].ToString();
                }
            }
            return dto;

        }
    }

    public class DetalleAnualMapper
    {
        public static DetalleAnualDto ToDto(DataTable dt)
        {
            var dto = new DetalleAnualDto();

            foreach (DataRow dr in dt.Rows)
            {
                dto = new DetalleAnualDto();
                dto.Error = dr["Error"].ToString();

                if (dto.Error == "")
                {
                    dto.Anio = (dr["Ano"] != DBNull.Value ? Int32.Parse(dr["Ano"].ToString()) : 0);
                    dto.Enero = (dr["01"] != DBNull.Value ? Int32.Parse(dr["01"].ToString()) : 0);
                    dto.Febrero = (dr["02"] != DBNull.Value ? Int32.Parse(dr["02"].ToString()) : 0);
                    dto.Marzo = (dr["03"] != DBNull.Value ? Int32.Parse(dr["03"].ToString()) : 0);
                    dto.Abril = (dr["04"] != DBNull.Value ? Int32.Parse(dr["04"].ToString()) : 0);
                    dto.Mayo = (dr["05"] != DBNull.Value ? Int32.Parse(dr["05"].ToString()) : 0);
                    dto.Junio = (dr["06"] != DBNull.Value ? Int32.Parse(dr["06"].ToString()) : 0);
                    dto.Julio = (dr["07"] != DBNull.Value ? Int32.Parse(dr["07"].ToString()) : 0);
                    dto.Agosto = (dr["08"] != DBNull.Value ? Int32.Parse(dr["08"].ToString()) : 0);
                    dto.Septiembre = (dr["09"] != DBNull.Value ? Int32.Parse(dr["09"].ToString()) : 0);
                    dto.Octubre = (dr["10"] != DBNull.Value ? Int32.Parse(dr["10"].ToString()) : 0);
                    dto.Noviembre = (dr["11"] != DBNull.Value ? Int32.Parse(dr["11"].ToString()) : 0);
                    dto.Diciembre = (dr["12"] != DBNull.Value ? Int32.Parse(dr["12"].ToString()) : 0);
                    dto.Total = dto.Enero + dto.Febrero + dto.Marzo + dto.Abril + dto.Mayo + dto.Junio + dto.Julio + dto.Agosto + dto.Septiembre + dto.Octubre + dto.Noviembre + dto.Diciembre;
                }
            }
            return dto;
        }
    }

    public class AntecedentesVisitasSenameMapper
    {
        public static AntecedentesVisitasSenameDto ToDto(DataTable dt)
        {
            var dto = new AntecedentesVisitasSenameDto();

            foreach (DataRow dr in dt.Rows)
            {
                dto = new AntecedentesVisitasSenameDto();
                dto.Error = dr["Error"].ToString();

                if (dto.Error == "")
                {
                    dto.CodProyecto = dr["CodProyecto"].ToString();
                    dto.FechaRegistro = (dr["FechaRegistro"] ==  DBNull.Value ? DateTime.MinValue : DateTime.Parse(dr["FechaRegistro"].ToString()));
                    dto.IdUsuarioActualizacion = dr["IdUsuarioActualizacion"].ToString();
                    dto.FechaActualizacion = (dr["FechaActualizacion"] == DBNull.Value ? DateTime.MinValue : DateTime.Parse(dr["FechaActualizacion"].ToString()));
                    dto.RecibeVisitas = bool.Parse(dr["RecibeVisitas"].ToString());
                    dto.SinVisitas = bool.Parse(dr["SinVisitas"].ToString());
                    dto.SalidaPernoctacion = bool.Parse(dr["SalidasPernoctacion"].ToString());
                    dto.FechaHasta = (dr["FechaHasta"] == DBNull.Value ? DateTime.MinValue : DateTime.Parse(dr["FechaHasta"].ToString()));
                }
            }
            return dto;
        }
    }

   
}
