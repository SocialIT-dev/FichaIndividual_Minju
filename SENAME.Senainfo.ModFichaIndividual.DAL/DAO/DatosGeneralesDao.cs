using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace SENAME.Senainfo.ModFichaIndividual.DAL.DAO
{
        public class ProyectosUsuarioDao : Repository
        {
            public DataTable ObtenerProyectosUsuario(int? IdUsuario)
            {
                DataTable dt = new DataTable();

                try
                {
                    using (var con = GetConnection())
                    {
                        con.Open();
                        using (var cmd = new SqlCommand("FichaRes.GETDatosProyectosUsuario", con))
                        {
                            SqlDataAdapter da = new SqlDataAdapter(cmd);

                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@IdUsuario", IdUsuario.HasValue ? (object)IdUsuario : DBNull.Value);
                            da.SelectCommand = cmd;
                            da.Fill(dt);

                            DataColumn columNew = dt.Columns.Add("Error", typeof(String));

                            columNew.DefaultValue = "";

                            return dt;
                        }
                    }

                }
                catch (Exception e)
                {

                    DataColumn colum = dt.Columns.Add("Error", typeof(String));
                    DataRow dr = dt.NewRow();

                    string glosaError = "";
                    ControlExcepcion ce = new ControlExcepcion();
                    glosaError = ce.ObtieneDetalleExcepcion(e.Message, e.Source, e.StackTrace, e.InnerException.ToString());

                    if (glosaError == "" || glosaError == null) glosaError = "Se ha producido una excepción de sistema no recuperable desde el servidor datos. Informar al adminitrador (se recomienda enviar una impresión de pantalla del error desplegado). Método: ObtenerProyectosUsuario";

                    dr["Error"] = glosaError;

                    dt.Rows.Add(dr);

                    return dt;
                }
            }
            public DataTable ProyectosXInstitucionYUsuario(int? IdUsuario, int? codigoInstitucion)
            {
                DataTable dt = new DataTable();

                try
                {
                    using (var con = GetConnection())
                    {
                        con.Open();
                        using (var cmd = new SqlCommand("FichaRes.GETDatosProyectosxInstitucionUsuario", con))
                        {
                            SqlDataAdapter da = new SqlDataAdapter(cmd);

                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@IdUsuario", IdUsuario.HasValue ? (object)IdUsuario : DBNull.Value);
                            cmd.Parameters.AddWithValue("@CodInstitucion", codigoInstitucion.HasValue ? (object)codigoInstitucion : DBNull.Value);
                            da.SelectCommand = cmd;
                            da.Fill(dt);

                            DataColumn columNew = dt.Columns.Add("Error", typeof(String));
                            columNew.DefaultValue = "";

                            return dt;
                        }
                    }
                }
                catch (Exception e)
                {

                    DataColumn colum = dt.Columns.Add("Error", typeof(String));
                    DataRow dr = dt.NewRow();

                    string glosaError = "";
                    ControlExcepcion ce = new ControlExcepcion();
                    glosaError = ce.ObtieneDetalleExcepcion(e.Message, e.Source, e.StackTrace, e.InnerException.ToString());

                    if (glosaError == "" || glosaError == null) glosaError = "Se ha producido una excepción de sistema no recuperable desde el servidor datos. Informar al adminitrador (se recomienda enviar una impresión de pantalla del error desplegado). Método: ProyectosXInstitucionYUsuario";

                    dr["Error"] = glosaError;
                    dt.Rows.Add(dr);

                    return dt;
                }
            }
        }

        public class InstitucionesUsuarioDao : Repository
        {
            public DataTable ObtenerInstitucionesUsuario(int? IdUsuario)
            {
                DataTable dt = new DataTable();
                try
                {
                    using (var con = GetConnection())
                    {
                        con.Open();
                        using (var cmd = new SqlCommand("FichaRes.GETDatosInstitucionesUsuario", con))
                        {
                            SqlDataAdapter da = new SqlDataAdapter(cmd);

                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@IdUsuario", IdUsuario.HasValue ? (object)IdUsuario : DBNull.Value);
                            da.SelectCommand = cmd;
                            da.Fill(dt);

                            DataColumn columNew = dt.Columns.Add("Error", typeof(String));
                            columNew.DefaultValue = "";

                            return dt;
                        }
                    }
                }
                catch (Exception e)
                {

                    DataColumn colum = dt.Columns.Add("Error", typeof(String));
                    DataRow dr = dt.NewRow();

                    string glosaError = "";
                    ControlExcepcion ce = new ControlExcepcion();
                    glosaError = ce.ObtieneDetalleExcepcion(e.Message, e.Source, e.StackTrace, e.InnerException.ToString());

                    if (glosaError == "" || glosaError == null) glosaError = "Se ha producido una excepción de sistema no recuperable desde el servidor datos. Informar al adminitrador (se recomienda enviar una impresión de pantalla del error desplegado). Método: ObtenerInstitucionesUsuario";

                    dr["Error"] = glosaError;
                    dt.Rows.Add(dr);

                    return dt;
                }
            }
        }

        public class NiñosVigentesDao : Repository
        {
            public DataTable ObtenerNiñosVigentes(int? CodInstitucion, int? CodProyecto, string Rut, int? CodNino, string NombNino, string ApellPaterno, string SexoNino)
            {
                DataTable dt = new DataTable();
                try
                {
                    using (var con = GetConnection())
                    {
                        con.Open();
                        using (var cmd = new SqlCommand("[FichaInd].[GetListarNNA_Buscador]", con))
                        {
                            SqlDataAdapter da = new SqlDataAdapter(cmd);

                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@CodInstitucion", CodInstitucion.HasValue ? (object)CodInstitucion : DBNull.Value);
                            cmd.Parameters.AddWithValue("@CodProyecto", CodProyecto.HasValue ? (object)CodProyecto : DBNull.Value);
                            cmd.Parameters.AddWithValue("@RutNNA", Rut);
                            cmd.Parameters.AddWithValue("@CodNino", CodNino.HasValue ? (object)CodNino : DBNull.Value);
                            cmd.Parameters.AddWithValue("@NombNino", NombNino);
                            cmd.Parameters.AddWithValue("@ApellPaterno", ApellPaterno);
                            cmd.Parameters.AddWithValue("@Sexo", SexoNino);
                            da.SelectCommand = cmd;
                            da.Fill(dt);

                            DataColumn columNew = dt.Columns.Add("Error", typeof(String));
                            columNew.DefaultValue = "";

                            return dt;
                        }
                    }
                }
                catch (Exception e)
                {

                    DataColumn colum = dt.Columns.Add("Error", typeof(String));
                    DataRow dr = dt.NewRow();

                    string glosaError = "";
                    ControlExcepcion ce = new ControlExcepcion();
                    glosaError = ce.ObtieneDetalleExcepcion(e.Message, e.Source, e.StackTrace, e.InnerException.ToString());

                    if (glosaError == "" || glosaError == null) glosaError = "Se ha producido una excepción de sistema no recuperable desde el servidor datos. Informar al adminitrador (se recomienda enviar una impresión de pantalla del error desplegado). Método: ObtenerNiñosVigentes";

                    dr["Error"] = glosaError;
                    dt.Rows.Add(dr);

                    return dt;
                }
            }
        }

        public class AntecedentesGeneralesPJUDDao : RepositoryP
        {
            public DataTable ObtenerAntecedentesGenerales(string codNino, int codProyecto)
            {
                DataTable dt = new DataTable();
                try
                {
                    using (var con = GetConnection())
                    {
                        con.Open();
                        using (var cmd = new SqlCommand("[dbo].[GETFichaIndividualAntecedentesGenerales]", con))
                        {
                            SqlDataAdapter da = new SqlDataAdapter(cmd);

                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@CodNino", codNino);
                            cmd.Parameters.AddWithValue("@CodProyecto", codProyecto);
                            da.SelectCommand = cmd;
                            da.Fill(dt);

                            DataColumn columNew = dt.Columns.Add("Error", typeof(String));
                            columNew.DefaultValue = "";

                            return dt;
                        }
                    }
                }
                catch (Exception e)
                {

                    DataColumn colum = dt.Columns.Add("Error", typeof(String));
                    DataRow dr = dt.NewRow();

                    string glosaError = "";
                    ControlExcepcion ce = new ControlExcepcion();
                    glosaError = ce.ObtieneDetalleExcepcion(e.Message, e.Source, e.StackTrace, e.InnerException.ToString());

                    if (glosaError == "" || glosaError == null) glosaError = "Se ha producido una excepción de sistema no recuperable desde el servidor datos. Informar al adminitrador (se recomienda enviar una impresión de pantalla del error desplegado). Método: ObtenerAntecedentesGenerales";

                    dr["Error"] = glosaError;
                    dt.Rows.Add(dr);

                    return dt;
                }
            }
        }

    public class AntecedentesProcesalesPJUDDao : RepositoryP
    {
        public DataTable ObtenerAntecedentesProcesalesPJUD(string codNino)
        {
            DataTable dt = new DataTable();
            try
            {
                using (var con = GetConnection())
                {
                    con.Open();
                    using (var cmd = new SqlCommand("[dbo].[GETFichaIndividualAntecedentesProcesales]", con))
                    {
                        SqlDataAdapter da = new SqlDataAdapter(cmd);

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@CodNino", codNino);
                        da.SelectCommand = cmd;
                        da.Fill(dt);

                        DataColumn columNew = dt.Columns.Add("Error", typeof(String));
                        columNew.DefaultValue = "";

                        return dt;
                    }
                }
            }
            catch (Exception e)
            {

                DataColumn colum = dt.Columns.Add("Error", typeof(String));
                DataRow dr = dt.NewRow();

                string glosaError = "";
                ControlExcepcion ce = new ControlExcepcion();
                glosaError = ce.ObtieneDetalleExcepcion(e.Message, e.Source, e.StackTrace, e.InnerException.ToString());

                if (glosaError == "" || glosaError == null) glosaError = "Se ha producido una excepción de sistema no recuperable desde el servidor datos. Informar al adminitrador (se recomienda enviar una impresión de pantalla del error desplegado). Método: ObtenerAntecedentesGenerales";

                dr["Error"] = glosaError;
                dt.Rows.Add(dr);

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