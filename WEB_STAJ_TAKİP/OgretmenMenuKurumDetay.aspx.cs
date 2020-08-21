using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgretmenMenuKurumDetay : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["KurumId"] == null)
        {
            Response.Redirect("cik.aspx");
        }

        RepeaterKurumDetay.DataSource = kod.GetDataTable("SELECT * FROM kurum WHERE kurum_id  =  "+ Request.QueryString["KurumId"].ToString() );
        RepeaterKurumDetay.DataBind();


      
    }
}