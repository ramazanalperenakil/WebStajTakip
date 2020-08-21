using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrMenuOgrenciDetay : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        

        RepeaterOgrenciDetay.DataSource = kod.GetDataTable("SELECT *  FROM [ogrenci] WHERE ogr_id=" + Request.QueryString["ogrId"]);
        RepeaterOgrenciDetay.DataBind();


        DataTable pp = kod.GetDataTable("select ogr_resimi from ogrenci WHERE ogr_id =" + Request.QueryString["ogrId"]);
        RepeaterOgrResim.DataSource = pp;
        RepeaterOgrResim.DataBind();


        DataTable cv = kod.GetDataTable("select ogr_cv from ogrenci WHERE ogr_id =" + Request.QueryString["ogrId"]);
        RepeaterCV.DataSource = cv;
        RepeaterCV.DataBind();

    }
}