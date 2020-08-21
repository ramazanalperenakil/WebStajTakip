using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KurumdakiStajyerler : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        RepeaterStajyerlerListele.DataSource = kod.GetDataTable("SELECT * FROM stajyer where kurum_kodu = '" + Request.QueryString["kurumkod"].ToString() + "'");
        RepeaterStajyerlerListele.DataBind();

    }
}