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
        ReportDocument doc = new ReportDocument();
        DataSet dsReporte = new DataSet();

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
            if (!IsPostBack)
            {
                SettingParameters_RD();
                ShowReport();
            }

        }

        private void SettingParameters_RD()
        {
            queryString = Request.QueryString["parametros"];
        }

        private void ConfigureCrystalReports()
        {
            doc.Load(Server.MapPath("reportes/fichaIndividual.rpt"));

        }

        protected void ShowReport()
        {
            var paramSplit = queryString.Split('_');
            var seccionSplit = paramSplit[2].Split('|');
            var _datosReporte = new BLL.Impl.ReporteFichaIndividualImpl();
            dsReporte = _datosReporte.ObtenerDatosReporteFicha(Int32.Parse(paramSplit[0]), Int32.Parse(paramSplit[1]));
            doc.SetDataSource(dsReporte);
            Response.Buffer = true;
            Response.Clear();
            Response.ContentType = "application/pdf";
            doc.SetParameterValue("secciones", paramSplit[2]);
            doc.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, true, "FichaIndividual");
        }
    }
}