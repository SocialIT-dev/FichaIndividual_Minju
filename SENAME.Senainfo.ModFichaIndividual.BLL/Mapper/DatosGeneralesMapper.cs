using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//using System.Threading.Tasks;

using System.Data;
using SENAME.Senainfo.ModFichaIndividual.BLL.DTO;

namespace SENAME.Senainfo.ModFichaIndividual.BLL.Mapper
{
    public class DatosGeneralesMapper
    {
        public static List<DatosGeneralesDto> ToDto(DataTable dt)
        {
            List<DatosGeneralesDto> list = new List<DatosGeneralesDto>();
            DatosGeneralesDto dto = new DatosGeneralesDto();

            foreach (DataRow dr in dt.Rows)
            {
                dto = new DatosGeneralesDto();
                dto.error = dr["error"].ToString();

                if (dto.error == "")
                {
                    dto.CodFicha = (int)dr["CodFicha"];
                    dto.NombreProyecto = dr["NombreProyecto"].ToString();
                    dto.NombreInstitucion = dr["NombreInstitucion"].ToString();
                    dto.TipoProyecto = dr["TipoProyecto"].ToString();
                    dto.NombreModeloIntervencion = dr["NombreModeloIntervencion"].ToString();
                    dto.Direccion = dr["Direccion"].ToString();
                    dto.Telefono = dr["Telefono"].ToString();
                    dto.Region = dr["Region"].ToString();
                    dto.Comuna = dr["Comuna"].ToString();
                    dto.Mail = dr["Mail"].ToString();
                    dto.NombreDirector = dr["NombreDirector"].ToString();
                    dto.RutDirector = dr["RutDirector"].ToString();
                    dto.TipoSubvencion = dr["TipoSubvencion"].ToString();
                    dto.Sexo = dr["Sexo"].ToString();
                    dto.EdadMinima = (int)dr["EdadMinima"];
                    dto.EdadMinima = (int)dr["EdadMaxima"];
                    dto.Periodo = (int)dr["Periodo"];
                    dto.CodFicha2 = (int)dr["CodFicha2"];
                }
                list.Add(dto);
            }
            return list;
        }
    }
}
