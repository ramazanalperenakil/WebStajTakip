using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StajyerleriGoruntule : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        //RepeaterStajyerlerListele.DataSource = kod.GetDataTable("SELECT * FROM kurum WHERE kurum_kodu in (select kurum_kodu from stajyer where sicil_no = '" + labelSicilNo.Text + "')");

        RepeaterStajyerlerListele.DataSource = kod.GetDataTable("SELECT * FROM stajyer where sicil_no = '"+ Request.QueryString["sicil"].ToString() + "'");
        RepeaterStajyerlerListele.DataBind();

        
    }

    protected void LinkButtonOgrMenuStajyerDetay_Click(object sender, EventArgs e)
    {
        Response.Redirect("OgrMenuStajyerDetay.aspx?tur=ogretmen&no=" + Session["kullanici"].ToString());

    }
}