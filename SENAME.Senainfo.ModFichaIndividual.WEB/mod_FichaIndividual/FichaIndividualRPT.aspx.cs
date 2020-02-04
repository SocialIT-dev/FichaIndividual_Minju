using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using negocio = SENAME.Senainfo.ModFichaIndividual.BLL;

namespace SENAME.Senainfo.ModFichaIndividual.WEB.mod_FichaIndividual
{
    public partial class FichaIndividualRPT : System.Web.UI.Page
    {
        string queryString = string.Empty;
        ReportDocument doc;

        private void Page_Init(object sender, EventArgs e)
        {
            ConfigureCrystalReports();
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            if (doc != null)
                doc.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // ShowReport(Server.MapPath(".\\rpt_fichaIndividual.rpt"));
            SettingParameters_RD();
        }

        private void SettingParameters_RD()
        {          
            var dsReporte = new DataSet();
            
            queryString = Request.QueryString["parametros"];
            var paramSplit = queryString.Split('_');

            var seccionSplit = paramSplit[2].Split('|');

            var _datosReporte = new BLL.Impl.ReporteFichaIndividualImpl();
             dsReporte = _datosReporte.ObtenerDatosReporteFicha(Int32.Parse(paramSplit[0]), Int32.Parse(paramSplit[1]));

            //foreach (string secc in seccionSplit)
            //{
            //    var myDiscreteValue4 = new ParameterDiscreteValue();
            //    myDiscreteValue4.Value = secc;
            //    myParam4.CurrentValues.Add(myDiscreteValue4);
            //}

       



            /*****************************************************************************************/
            /*****************************************************************************************/

            var MyReportObject = new FichaIndividualRPT();
            CrystalReportViewer.ReportSource = MyReportObject;



        }

        private void ConfigureCrystalReports()
        {
            string conexion = ConfigurationManager.ConnectionStrings["Conexiones"].ToString();
            CrystalReportViewer.ReportSource = "reportes\\rpt_fichaIndividual.rpt";
        }

        protected void ShowReport(String fileName)
        {
            TableLogOnInfo crTableLogOnInfo = new TableLogOnInfo();
            ConnectionInfo crConnectionInfo = new ConnectionInfo();
            CrystalDecisions.CrystalReports.Engine.Database crDatabase;
            CrystalDecisions.CrystalReports.Engine.Tables crTables;
            doc = new ReportDocument();
            doc.Load(fileName);
            crConnectionInfo.ServerName = "Tu-PC";
            crConnectionInfo.DatabaseName = "ProgrammingSamples";
            crConnectionInfo.UserID = "xxxxxxx";
            crConnectionInfo.Password = "yyyyyyyy";
            crConnectionInfo.Type = ConnectionInfoType.SQL;
            crConnectionInfo.IntegratedSecurity = false;
            crDatabase = doc.Database;
            crTables = crDatabase.Tables;
            SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.AppSettings["ConnectionString"].ToString());
         //   SqlCommand cmd = new SqlCommand("dbo." + strProcedureName, conn);
            //cmd.CommandType = CommandType.StoredProcedure;
            //SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            //DataSet dataSet = new DataSet();
            //adpt.Fill(dataSet, "Productos");
            foreach (CrystalDecisions.CrystalReports.Engine.Table crTable in crTables)
            {
                crTableLogOnInfo = crTable.LogOnInfo;
                crTableLogOnInfo.ConnectionInfo = crConnectionInfo;
                crTable.ApplyLogOnInfo(crTableLogOnInfo);
            }
        //    doc.SetDataSource(dataSet.Tables[0]);
            CrystalReportViewer.ReportSource = doc;
        }
    }
}