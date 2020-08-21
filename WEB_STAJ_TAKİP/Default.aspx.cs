using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["tur"] == "ogrenci")
        {
            PanelOgrenci.Visible = true;
            string foto = kod.getDataCell("select ogr_resimi from ogrenci WHERE ogr_no =  "+ Request.QueryString["no"]);

            if ("0"== foto)
            {
                LabelFotoGuncelle.Visible = true;
            }
            else
            {
                LabelFotoGuncelle.Visible = false ;
            }
        }
        else if (Request.QueryString["tur"] == "ogretmen")
        {
            PanelOgretmen.Visible = true;
        }
        else if (Request.QueryString["tur"] == "kurum")
        {
            PanelKurum.Visible = true;

            string logo = kod.getDataCell("select kurum_resim from kurum WHERE kurum_kodu = '"+ Request.QueryString["kurumkod"] .ToString()+ "'");
            if ("0" == logo)
            {
                KurumFotoGuncellePaneli.Visible = true;
            }
            else
            {
                KurumFotoGuncellePaneli.Visible = false;
            }
           
            
        }
        else
        {
            PanelHata.Visible = true;
        }
    }

    protected void LinkButtonGuncelle_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ogrenci_Bilgi_Guncelle.aspx?tur=ogrenci&no=" + Session["kullanici"].ToString());
    }

    protected void LinkButtonKurumGuncelle_Click(object sender, EventArgs e)
    {
        Response.Redirect("KurumBilgiGuncelle.aspx?tur=kurum&kurumkod=" + Session["kullanici"].ToString());

    }
}