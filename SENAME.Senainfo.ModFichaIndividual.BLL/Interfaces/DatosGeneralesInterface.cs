using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//using System.Threading.Tasks;

namespace SENAME.Senainfo.ModFichaIndividual.BLL.Interfaces
{

    public interface IListadoNinos
    {
        List<SENAME.Senainfo.ModFichaIndividual.BLL.DTO.DatosGeneralesDto.ListadoNinos> ListarNNA(int CodInstitucion, int CodProyecto,
                                                                                                    string RutNNA, int CodNino, string NombNNA,
                                                                                                    string ApellPaterno, string Sexo);
    }
    
}
