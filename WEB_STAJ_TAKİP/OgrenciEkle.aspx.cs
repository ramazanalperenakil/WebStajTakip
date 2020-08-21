using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kayit_OgrenciEkle : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSicil.Text = Request.QueryString["sicil"].ToString();
    }

    protected void btnEkle_Click(object sender, EventArgs e)
    {
        try
        {
            kod.komut("INSERT INTO ogrenci (ogr_ad,ogr_no,ogr_okul,ogr_soyad,ogr_bolum,ogr_fakulte,ogr_not_ort,ogr_tel,ogr_adres,ogr_email,sicil_no,ogr_sifre,ogr_cv,ogr_resimi,soru) VALUES ('" + txtAd.Text + "' , '" + txtNo.Text + "', '" + txtOkul.Text + "' , '" + txtSoyad.Text + "' , '" + txtBolum.Text + "', '" + txtFakulte.Text + "', '" + txtOrtalama.Text + "' , '" + txtTel.Text + "' , '" + txtAdres.Text + "' , '" + txtEposta.Text + "' , '" + txtSicil.Text + "' , '" + txtSifre.Text + "', '0' , '0' , '0' )");
            Label3.Visible = true;
        }
        catch 
        {
            Label4.Visible = true;
            
        }
           
    }
}