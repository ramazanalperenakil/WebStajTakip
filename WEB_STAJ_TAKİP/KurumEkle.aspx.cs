using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KurumEkle : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEkle_Click(object sender, EventArgs e)
    {
        try
        {
            kod.komut("INSERT INTO kurum (kurum_kodu, kurum_adi, kurum_tel, kurum_eposta, kurum_adres, kurum_sektor, kurum_sifre, kurum_tur, kurum_resim) VALUES ('" + txtKurumKodu.Text+"' , '"+txtKurumAdi.Text+"' , '"+txtKurumTel.Text+"' , '"+txtKurumEposta.Text+"' , '"+txtKurumAdres.Text+"' , '"+txtKurumSektor.Text+"' , '"+txtKurumSifre.Text+"' , '"+txtKurumTur.Text+"' , '0')");

            Label3.Visible = true;
        }
        catch
        {
            Label4.Visible = true;

        }
    }
}