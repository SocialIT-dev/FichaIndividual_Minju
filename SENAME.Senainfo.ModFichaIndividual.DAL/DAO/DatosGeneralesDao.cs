using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace SENAME.Senainfo.ModFichaIndividual.DAL.DAO
{
    public class DatosGeneralesDao : Repository
    {
        public DataTable ListarNNA(int CodInstitucion, int CodProyecto, 
                                   string RutNNA, int CodNino, string NombNNA, 
                                   string ApellPaterno, string Sexo)
        {
            var dt = new DataTable();
            try
            {
                using (var con = GetConnection())
                {
                    con.Open();
                    using (var cmd = new SqlCommand("FichaInd.GetListarNNA", con))
                    {
                        var da = new SqlDataAdapter(cmd);

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@CodInstitucion", CodInstitucion);
                        cmd.Parameters.AddWithValue("@CodProyecto", CodProyecto);
                        cmd.Parameters.AddWithValue("@RutNNA", RutNNA);
                        cmd.Parameters.AddWithValue("@CodNino", CodNino);
                        cmd.Parameters.AddWithValue("@NombNino", NombNNA);
                        cmd.Parameters.AddWithValue("@ApellPaterno", ApellPaterno);
                        cmd.Parameters.AddWithValue("@Sexo", Sexo);
                        da.SelectCommand = cmd;
                        da.Fill(dt);

                        var columNew = dt.Columns.Add("error", typeof(string));
                        columNew.DefaultValue = "";

                        return dt;
                    }
                }
            }
            catch (Exception e)
            {
                dt.Columns.Add("error", typeof(string));

                var dr = dt.NewRow();
                var glosaError = "";
                var ce = new ControlExcepcion();

                if (e.InnerException != null)
                    glosaError =
                        ce.ObtieneDetalleExcepcion(e.Message, e.Source, e.StackTrace, e.InnerException.ToString());

                if (string.IsNullOrEmpty(glosaError)) glosaError = "Se ha producido una excepción de sistema no recuperable desde el servidor datos. Informar al adminitrador (se recomienda enviar una impresión de pantalla del error desplegado). Método: GrabarRespuestasObservaciones";

                dr["error"] = glosaError;
                //dt.Rows.Add(dr);

                return dt;
            }

        }
    }


    public class ControlExcepcion
    {
        public string ObtieneDetalleExcepcion(string Message, string Source, string StackTrace, string InnerException)
        {
            string glosaError = "";
            if (Message != "" && Message != null)
                glosaError = glosaError + Message;

            if (Source != "" && Source != null)
                glosaError = glosaError + "|" + Source;

            if (StackTrace != "" && StackTrace != null)
                glosaError = glosaError + "|" + StackTrace;

            if (InnerException != "" && InnerException != null)
                glosaError = glosaError + "|" + InnerException;
            return glosaError;
        }
    }
}
