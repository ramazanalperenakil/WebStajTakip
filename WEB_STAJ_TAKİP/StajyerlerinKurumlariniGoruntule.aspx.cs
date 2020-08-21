using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StajyerlerinKurumlariniGoruntule : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {

        RepeaterStajyerKurumlariListele.DataSource = kod.GetDataTable("SELECT * FROM kurum WHERE kurum_kodu in (select kurum_kodu from stajyer where sicil_no  = '" + Request.QueryString["sicil"].ToString() + "')");
        RepeaterStajyerKurumlariListele.DataBind();

    }
}