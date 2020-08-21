using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class upload_HocaKayit : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void yukle_Click(object sender, EventArgs e)
    {
        if (fuDosya.HasFile)
        {
            string no = Request.QueryString["no"].ToString();

            //try
            //{
            string url = kod.FotoKaydetOptimize(fuDosya, 512, "/img/hoca_resim/", no);
            kod.komut("UPDATE hoca set hoca_resim = '" + url + "' WHERE sicil_no = " + no + "");
            lblDurum.Visible = true;
            Response.AppendHeader("Refresh", "3;url=../Default.aspx");



            //}
            //catch (Exception)
            //{
            //    lblDurum.Text = "Yükleme BAŞARISIZ";
            //    lblDurum.Visible = true;
            //}


        }
    }
}