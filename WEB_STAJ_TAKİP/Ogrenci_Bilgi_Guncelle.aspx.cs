using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ogrenci_Bilgi_Guncelle : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {


            //  string id = kod.getDataCell("select ogr_id  from ogrenci WHERE ogr_no =  " + Request.QueryString["no"]);

            DataRow dr = kod.GetDataRow("Select * from ogrenci WHERE ogr_no =" + Request.QueryString["no"]);
            txtAd.Text = dr[1].ToString();
            txtSoyadi.Text = dr[4].ToString();
            txtOgrNo.Text = dr[2].ToString();
            txtOkul.Text = dr[3].ToString();
            txtBolum.Text = dr[5].ToString();
            txtFakulte.Text = dr[6].ToString();
            txtNotOrt.Text = dr[7].ToString();
            txtTel.Text = dr[8].ToString();
            txtAdres.Text = dr[9].ToString();
            txtEposta.Text = dr[10].ToString();
            txtOgrSicil.Text = dr[11].ToString();
            txtSifre.Text = dr[12].ToString();

            DataTable pp = kod.GetDataTable("select ogr_resimi from ogrenci WHERE ogr_no =" + Request.QueryString["no"]);
            RepeaterOgrResim.DataSource = pp;
            RepeaterOgrResim.DataBind();


            DataTable cv = kod.GetDataTable("select ogr_cv from ogrenci WHERE ogr_no =" + Request.QueryString["no"]);
            RepeaterCV.DataSource = cv;
            RepeaterCV.DataBind();

           
        }
    }

    protected void btnEkle_Click(object sender, EventArgs e)
    {
        string id = kod.getDataCell("Select ogr_id from ogrenci WHERE ogr_no = "+ Request.QueryString["no"] );

        string ogrcv = kod.getDataCell("select ogr_cv from ogrenci WHERE ogr_no =" + Request.QueryString["no"]);
        string ogrpp = kod.getDataCell("select ogr_resimi from ogrenci WHERE ogr_no =" + Request.QueryString["no"]);

        kod.komut("UPDATE ogrenci set ogr_ad = '" + txtAd.Text + "' , ogr_no='" + txtOgrNo.Text + "' , ogr_okul='" + txtOkul.Text + "' , ogr_soyad='" + txtSoyadi.Text + "', ogr_bolum='" + txtBolum.Text + "' , ogr_fakulte='" + txtFakulte.Text + "', ogr_not_ort='" + txtNotOrt.Text + "', ogr_tel='" + txtTel.Text + "', ogr_adres='" + txtAdres.Text + "' , ogr_email='" + txtEposta.Text + "' , sicil_no='" + txtOgrSicil.Text + "', ogr_sifre='" + txtSifre.Text + "' , ogr_cv= '"+ ogrcv + "', ogr_resimi='"+ ogrpp + "' WHERE  ogr_id =" + id);
    }
}