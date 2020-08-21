using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KurumMenuStajyerDetay : System.Web.UI.Page
{
    
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["stajyerId"] == null)
        {
            Response.Redirect("cik.aspx");
        }
        
        RepeaterStajyerDetay.DataSource = kod.GetDataTable("SELECT *  FROM [stajyer] WHERE stajyer_id=" + Request.QueryString["stajyerId"]);
        RepeaterStajyerDetay.DataBind();

        DataTable pp = kod.GetDataTable("select ogr_resim from stajyer WHERE stajyer_id =" + Request.QueryString["stajyerId"]);
        RepeaterOgrResim.DataSource = pp;
        RepeaterOgrResim.DataBind();


        DataTable cv = kod.GetDataTable("select ogr_cv from stajyer WHERE stajyer_id =" + Request.QueryString["stajyerId"]);
        RepeaterCV.DataSource = cv;
        RepeaterCV.DataBind();

    }
}