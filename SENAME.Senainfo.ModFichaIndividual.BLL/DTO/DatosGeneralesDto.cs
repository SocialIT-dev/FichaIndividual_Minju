using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//using System.Threading.Tasks;

namespace SENAME.Senainfo.ModFichaIndividual.BLL.DTO
{
    public class DatosGeneralesDto
    {
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
            public string error { get; set; }
        }
    }
}
