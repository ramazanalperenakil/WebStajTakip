using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HocaKayit : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {

    }





    protected void btnEkle_Click(object sender, EventArgs e)
    {
        try
        {
            kod.komut("INSERT INTO hoca (sicil_no, hoca_adi, hoca_soyadi, hoca_tel, hoca_eposta, hoca_sifre, hoca_bolum, hoca_alan, hoca_resim, soru) VALUES ('" + txtNo.Text + "' , '" + txtAd.Text + "', '" + txtSoyad.Text + "'  , '" + txtTel.Text + "' , '" + txtEpsota.Text + "', '" + txtSifre.Text + "', '" + txtBolum.Text + "' , '" + txtAlan.Text + "', 'resim', '" + txtCevap.Text + "' ) ");
            lblDurum.Visible = true;
            Response.AppendHeader("Refresh", "5;url=upload/HocaKayit.aspx?no=" + txtNo.Text);
        }
        catch 
        {
            LblHata.Visible = true;
        }
       
    }
}