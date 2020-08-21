using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class upload_KurumFotoYukle : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kullanici"] == null)
        {
            Response.Redirect("giris.aspx");
        }
    }

    protected void yukle_Click(object sender, EventArgs e)
    {
        if (fuDosya.HasFile)
        {
            string no = Session["kullanici"].ToString();

            //try
            //{
                string url = kod.FotoKaydetOptimize(fuDosya, 512, "/img/kurum_resim/", no);
                kod.komut("UPDATE kurum set kurum_resim = '" + url + "' WHERE kurum_kodu = '"+no+"'");
                lblDurum.Visible = true;




            //}
            //catch (Exception)
            //{
            //    lblDurum.Text = "Yükleme BAŞARISIZ";
            //    lblDurum.Visible = true;
            //}


        }
    }
}