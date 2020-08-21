using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgretmenBilgiGuncelle : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataTable pp = kod.GetDataTable("select hoca_resim from hoca WHERE sicil_no = " + Request.QueryString["sicil"] + "");


            RepeaterPP.DataSource = pp;
            RepeaterPP.DataBind();

            DataRow dr = kod.GetDataRow("Select * from hoca WHERE sicil_no = " + Request.QueryString["sicil"] + "");
            txtAd.Text = dr[2].ToString();
            txtSoyad.Text = dr[3].ToString();
            txtTel.Text = dr[4].ToString();
            txtBolum.Text = dr[7].ToString();
            txtAlan.Text = dr[8].ToString();
            txtSifre.Text = dr[6].ToString();
            txtEposta.Text = dr[5].ToString();
        }
       
    }

    protected void btnEkle_Click(object sender, EventArgs e)
    {
        try
        {
            kod.komut("UPDATE hoca SET hoca_adi='" + txtAd.Text + "' , hoca_soyadi='" + txtSoyad.Text + "' , hoca_tel='" + txtTel.Text + "' , hoca_eposta='" + txtEposta.Text + "' , hoca_sifre='" + txtSifre.Text + "' , hoca_bolum='" + txtBolum.Text + "' , hoca_alan='" + txtAlan.Text + "' WHERE sicil_no =" + Request.QueryString["sicil"]);
            lblDurum.Visible = true;
        }
        catch 
        {

            LblHata.Visible = true;
        }
        

    }
}