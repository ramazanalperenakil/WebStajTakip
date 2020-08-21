using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class giris : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kullanici"] != null)
        {
            Response.Redirect("Default.aspx");

        }
    }

    protected void GirisYap_Click(object sender, EventArgs e)
    {
        string kullanici = KullaniciAdi.Text,sifre = Sifre.Text;


        try
        {
            if (RadioButtonList1.SelectedValue == "0") //ÖĞRENCİ
            {
                DataTable dt = kod.GetDataTable("Select * from ogrenci where  (ogr_no=" + kullanici + " AND ogr_sifre='" + sifre + "' )"); /*AND uyeTuru='admin'*/

                if (dt.Rows.Count == 0)
                {
                    LabelHata.Visible = true;
                }
                else
                {
                    Session["kullanici"] = kullanici;
                    Response.Redirect("Default.aspx?tur=ogrenci&no=" + kullanici);
                }
            }

            else if (RadioButtonList1.SelectedValue == "1") //Öğretmen
            {
                DataTable dt = kod.GetDataTable("Select * from hoca where  (sicil_no=" + kullanici + " AND hoca_sifre='" + sifre + "' )"); /*AND uyeTuru='admin'*/

                if (dt.Rows.Count == 0)
                {
                    LabelHata.Visible = true;
                }
                else
                {
                    Session["kullanici"] = kullanici;
                    Response.Redirect("Default.aspx?tur=ogretmen&sicil=" + kullanici);
                }
            }
            else if (RadioButtonList1.SelectedValue == "2") //Kurum
            {
                DataTable dt = kod.GetDataTable("Select * from kurum where  (kurum_kodu=  '" + kullanici + "' AND kurum_sifre='" + sifre + "' )");

                if (dt.Rows.Count == 0)
                {
                    LabelHata.Visible = true;
                }
                else
                {
                    Session["kullanici"] = kullanici;
                    Response.Redirect("Default.aspx?tur=kurum&kurumkod=" + kullanici);
                }
            }
            else
            {
                LabelHata.Text += " " + "VEYA Giriş Türünü Seçmediniz"; 
                LabelHata.Visible = true;
            }
        }
        catch 
        {

           
        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HocaKayit.aspx");
    }
}