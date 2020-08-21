using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ana : System.Web.UI.MasterPage
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
       

      
        if (Session["kullanici"] == null)
        {
            Response.Redirect("giris.aspx");
        }
        else
        {

            if (Request.QueryString["tur"] == "ogrenci")
            {
                PanelOgrenci.Visible = true;
                lblKullanici.Text = Session["kullanici"].ToString();
               
                string id = kod.getDataCell("select ogr_id from  ogrenci where  ogr_ad=" + Session["kullanici"].ToString());

                RepeaterAvatarOgrenci.Visible = true;
                RepeaterAvatarOgrenci.DataSource = kod.GetDataTable("SELECT *  FROM ogrenci where  ogr_no =  "+Request.QueryString["no"]);
                RepeaterAvatarOgrenci.DataBind();

                



            }
            else if (Request.QueryString["tur"] == "ogretmen")
            {
                PanelOgretmen.Visible = true;
                lblKullanici.Text = Session["kullanici"].ToString();
                RepeaterAvatarOgretmen.Visible = true;
                RepeaterAvatarOgretmen.DataSource = kod.GetDataTable("SELECT *  FROM hoca where  sicil_no =  " + Request.QueryString["sicil"]);
                RepeaterAvatarOgretmen.DataBind();
                if (Request.QueryString["KurumId"] == null  )
                {
                    PanelOgretmen.Visible = true;
                }
                else
                {
                    PanelOgretmen.Visible = false;

                }

                if (Request.QueryString["stajyerId"] == null)
                {
                    PanelOgretmen.Visible = true;
                }
                else
                {
                    PanelOgretmen.Visible = false;

                }
                if (Request.QueryString["ogrId"] == null)
                {
                    PanelOgretmen.Visible = true;
                }
                else
                {
                    PanelOgretmen.Visible = false;

                }
                

            }

            else if (Request.QueryString["tur"] == "kurum")
            {
                RepeaterAvatarKurum.Visible = true;
                RepeaterAvatarKurum.DataSource = kod.GetDataTable("SELECT *  FROM KURUM where  kurum_kodu ='" + Request.QueryString["kurumkod"] + "' ");
                RepeaterAvatarKurum.DataBind();

                PanelKurum.Visible = true;
                lblKullanici.Text = Session["kullanici"].ToString();

                if (Request.QueryString["stajyerId"] == null)
                {
                    PanelKurum.Visible = true;
                }
                else
                {
                    PanelKurum.Visible = false;

                }

            }
            else
            {
                Response.Redirect("giris.aspx");

            }





        }


    }

    protected void BilgiGuncelle_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ogrenci_Bilgi_Guncelle.aspx?tur=ogrenci&no="+ Session["kullanici"].ToString());
    }

    protected void BasvuruYap_Click(object sender, EventArgs e)
    {
        Response.Redirect("Staj_Yeri_Kaydet.aspx?tur=ogrenci&no=" + Session["kullanici"].ToString());
        
    }

    protected void ButtonAnasayfa_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx?tur=ogrenci&no=" + Session["kullanici"].ToString());
    }


    protected void ButtonAnasayfa_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx?tur=ogrenci&no=" + Session["kullanici"].ToString());
    }

    protected void ButtonOgretmenStajyerGoruntule_Click(object sender, EventArgs e)
    {
        Response.Redirect("StajyerleriGoruntule.aspx?tur=ogretmen&sicil=" + Session["kullanici"].ToString());
    }

    protected void ButtonHocaTumOgrencileriGoruntule_Click(object sender, EventArgs e)
    {
        Response.Redirect("OgrMenuTumOgrenciler.aspx?tur=ogretmen&sicil=" + Session["kullanici"].ToString());
        
    }

    protected void ButtonStajyerlereAitKurumlar_Click(object sender, EventArgs e)
    {
        Response.Redirect("StajyerlerinKurumlariniGoruntule.aspx?tur=ogretmen&sicil=" + Session["kullanici"].ToString());
        
    }

    protected void ButonAnasayfaOgretmen_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx?tur=ogretmen&sicil=" + Session["kullanici"].ToString());
    }

    protected void ButtonKurumdakiStajyerler_Click(object sender, EventArgs e)
    {
        Response.Redirect("KurumdakiStajyerler.aspx?tur=kurum&kurumkod=" + Session["kullanici"].ToString());
        
    }

    protected void ButtonKurumAnasayfa_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx?tur=kurum&kurumkod=" + Session["kullanici"].ToString());
    }

    protected void ButtonKurumBilgiGuncelle_Click(object sender, EventArgs e)
    {
        Response.Redirect("KurumBilgiGuncelle.aspx?tur=kurum&kurumkod=" + Session["kullanici"].ToString());
    }

    protected void ButtonHocaBilgiGuncelle_Click(object sender, EventArgs e)
    {
        Response.Redirect("OgretmenBilgiGuncelle.aspx?tur=ogretmen&sicil=" + Session["kullanici"].ToString());
    }

    protected void ButtonOgrenciEkle_Click(object sender, EventArgs e)
    {
        Response.Redirect("OgrenciEkle.aspx?tur=ogretmen&sicil=" + Session["kullanici"].ToString());
    }

    protected void ButtonKurumEkle_Click(object sender, EventArgs e)
    {
        Response.Redirect("KurumEkle.aspx?tur=ogretmen&sicil=" + Session["kullanici"].ToString());
    }
}
