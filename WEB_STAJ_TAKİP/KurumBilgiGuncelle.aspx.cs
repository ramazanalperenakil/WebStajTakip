using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KurumBilgiGuncelle : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataTable pp = kod.GetDataTable("select kurum_resim from kurum WHERE kurum_kodu = '" + Request.QueryString["kurumkod"] + "'");


            RepeaterKurumLogo.DataSource = pp;
            RepeaterKurumLogo.DataBind();

            DataRow dr = kod.GetDataRow("Select * from kurum WHERE kurum_kodu = '" + Request.QueryString["kurumkod"] + "'");
            txtAd.Text = dr[2].ToString();
            txtTel.Text = dr[3].ToString();
            txtAdres.Text = dr[5].ToString();
            txtEposta.Text = dr[4].ToString();
            txtSektor.Text = dr[6].ToString();
            txtSifre.Text = dr[7].ToString();
            txtKurumTur.Text = dr[8].ToString();
        }
       

    }

    protected void btnEkle_Click(object sender, EventArgs e)
    {
        kod.komut("UPDATE kurum SET kurum_adi='"+txtAd.Text+ "', kurum_tel='"+txtTel.Text+ "', kurum_eposta='"+txtEposta.Text+ "', kurum_adres='"+txtAdres.Text+ "', kurum_sektor='"+txtSektor.Text+ "', kurum_sifre='"+txtSifre.Text+ "', kurum_tur= '"+txtKurumTur.Text+ "' WHERE  kurum_kodu = '" + Request.QueryString["kurumkod"] + "'");
    }
}