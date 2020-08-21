using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staj_Yeri_Kaydet : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        //try
        //{
        string StajKayitlimi = kod.getDataCell("select kurum_adi from stajyer WHERE ogr_no =" + Request.QueryString["no"]);

        Label1.Text = StajKayitlimi;

        if (Label1.Text == "")
        {
            PanelStajKaydet.Visible = true;
            Label1.Text = "Staj Yeri Seçmediniz";
            ButtonStajİptal.Visible = false;
        }
        else
        {
            PanelStajKaydet.Visible = false;
            Label1.Text = StajKayitlimi;

        }
        //}
        //catch (Exception)
        //{
        //    //Label1.Text = "Kayıt Yok";

        //}

        if (!Page.IsPostBack)
        {

            DataRow dr = kod.GetDataRow("Select * from ogrenci WHERE ogr_no =" + Request.QueryString["no"]);
            txtAd.Text = dr[1].ToString();
            txtSoyadi.Text = dr[4].ToString();
            txtOgrNo.Text = dr[2].ToString();
            txtOkul.Text = dr[3].ToString();
            txtBolum.Text = dr[5].ToString();

            txtNotOrt.Text = dr[7].ToString();
            txtTel.Text = dr[8].ToString();

            txtEposta.Text = dr[11].ToString();
            txtOgrSicil.Text = dr[11].ToString();

            string danismanAd = kod.getDataCell("select hoca_adi from hoca WHERE sicil_no = '" + dr[11].ToString() + "'");
            string danismanSoyad = kod.getDataCell("select hoca_soyadi from hoca WHERE hoca_adi = '" + danismanAd + "'");

            txtDanısman.Text = danismanAd + " " + danismanSoyad;


            DataTable dt = kod.GetDataTable("SELECT * from kurum");
            DropDownListKurumlar.DataSource = dt;
            DropDownListKurumlar.DataValueField = "kurum_kodu";
            DropDownListKurumlar.DataTextField = "kurum_adi";
            DropDownListKurumlar.DataBind();


            LabelKurumKodunuz.Text = DropDownListKurumlar.SelectedItem.Value;
            DataRow kurum = kod.GetDataRow("Select * from kurum WHERE kurum_kodu = '" + LabelKurumKodunuz.Text + "' ");
            LabelKurumTel.Text = kurum[3].ToString();
            LabelKurumEPosta.Text = kurum[4].ToString();



            DataTable pp = kod.GetDataTable("select ogr_resimi from ogrenci WHERE ogr_no =" + Request.QueryString["no"]);
            RepeaterOgrResim.DataSource = pp;
            RepeaterOgrResim.DataBind();


            DataTable cv = kod.GetDataTable("select ogr_cv from ogrenci WHERE ogr_no =" + Request.QueryString["no"]);
            RepeaterCV.DataSource = cv;
            RepeaterCV.DataBind();

        }



    }

    protected void DropDownListKurumlar_SelectedIndexChanged(object sender, EventArgs e)
    {
        LabelKurumKodunuz.Text = DropDownListKurumlar.SelectedItem.Value;

        DataRow kurum = kod.GetDataRow("Select * from kurum WHERE kurum_kodu = '" + LabelKurumKodunuz.Text + "' ");
        LabelKurumTel.Text = kurum[3].ToString();
        LabelKurumEPosta.Text = kurum[4].ToString();
    }

    protected void ButtonStajİptal_Click(object sender, EventArgs e)
    {
        kod.komut("Delete from stajyer where ogr_no =" + Request.QueryString["no"]);
        PanelStajKaydet.Visible = true;
        Label1.Text = "Staj Yeri Seçmediniz";
        ButtonStajİptal.Visible = false;
    }

    protected void btnEkle_Click(object sender, EventArgs e)
    {
        string KurumAdi = DropDownListKurumlar.SelectedItem.Text, KurumKodu = LabelKurumKodunuz.Text, KurumTel = LabelKurumTel.Text, KurumEposta = LabelKurumEPosta.Text, ad = txtAd.Text, soyad = txtSoyadi.Text, no = txtOgrNo.Text, okul = txtOkul.Text, bolum = txtBolum.Text, danisman = txtDanısman.Text, not = txtNotOrt.Text, tel = txtTel.Text, sicil = txtOgrSicil.Text, eposta = txtEposta.Text;
        string ogrcv = kod.getDataCell("select ogr_cv from ogrenci WHERE ogr_no =" + Request.QueryString["no"]);
        string ogrpp = kod.getDataCell("select ogr_resimi from ogrenci WHERE ogr_no =" + Request.QueryString["no"]);

        kod.komut("INSERT into stajyer (ogr_no, ogr_ad, ogr_soyad, ogr_okul, ogr_bolum, ogr_tel, ogr_not, ogr_email, ogr_hoca, kurum_kodu, kurum_adi, kurum_tel, kurum_email, sicil_no, ogr_cv, ogr_resim) VALUES('"+no+"', '"+ad+"', '"+soyad+"', '"+okul+"' , '"+bolum+"' , '"+tel+"' , '"+not+"' ,'"+eposta+"' , '"+danisman+"' , '"+KurumKodu+"' , '"+KurumAdi+"', '"+KurumTel+"' , '"+KurumEposta+"' , '"+sicil+"' , '"+ogrcv+"' , '"+ogrpp+"')");

        PanelStajKaydet.Visible = false;
        string StajKayitlimi = kod.getDataCell("select kurum_adi from stajyer WHERE ogr_no =" + Request.QueryString["no"]);

        Label1.Text = StajKayitlimi;
        ButtonStajİptal.Visible = true;
    }
}