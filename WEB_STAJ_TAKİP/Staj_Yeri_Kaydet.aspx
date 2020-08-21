<%@ Page Title="" Language="C#" MasterPageFile="~/ana.master" AutoEventWireup="true" CodeFile="Staj_Yeri_Kaydet.aspx.cs" Inherits="Staj_Yeri_Kaydet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <div class="  pt-5 pb-5 text-center">
    <h1 class="text-center">Staj Yeri Kayıt ve İptal Sayfası</h1>
   
        <h1 class="text-center">Staj  Yapacağınız Kurum :
        <asp:Label ID="Label1" runat="server" Text="Staj Yeri Seçmediniz"></asp:Label></h1>
        
              <asp:Button ID="ButtonStajİptal" runat="server" Text="Staj Yeri İptal Et" CssClass="btn pt-2 w-50 btn-danger" OnClick="ButtonStajİptal_Click" />

       
        
        
    </div>



    <asp:Panel ID="PanelStajKaydet" Visible="false" runat="server">


        <table class="table mx-auto" style="max-width: 800px;">
            <tr>
                <td>Kurum Seçiniz</td>
                <td>
                    <asp:DropDownList ID="DropDownListKurumlar" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListKurumlar_SelectedIndexChanged">
                        <asp:ListItem>...Seçiniz...</asp:ListItem>
                    </asp:DropDownList></td>

                <td>Kurum Kodu</td>
                <td>
                    <asp:Label ID="LabelKurumKodunuz" runat="server" Text="Kurum Kodu"></asp:Label></td>
            </tr>
            <tr>
                <td>Kurum Adres</td>
                <td>
                    <asp:Label ID="LabelKurumTel" runat="server" Text="Kuurm Telefon"></asp:Label></td>
                <td>Kurum Tel</td>
                <td>
                    <asp:Label ID="LabelKurumEPosta" runat="server" Text="Kurum E-Posta"></asp:Label></td>
            </tr>
            <tr>
                <td>Adı</td>
                <td>
                    <asp:TextBox ID="txtAd" CssClass="form-control" runat="server"></asp:TextBox>

                </td>
                <td>Soyadı</td>
                <td>
                    <asp:TextBox ID="txtSoyadi" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Öğrenci No</td>
                <td>
                    <asp:TextBox ID="txtOgrNo" CssClass="form-control" runat="server"></asp:TextBox></td>
                <td>Okul</td>
                <td>
                    <asp:TextBox ID="txtOkul" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>Bölüm</td>
                <td>
                    <asp:TextBox ID="txtBolum" CssClass="form-control" runat="server"></asp:TextBox></td>
                <td>Danışman</td>
                <td>
                    <asp:TextBox ID="txtDanısman" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>Not Ort.</td>
                <td>
                    <asp:TextBox ID="txtNotOrt" CssClass="form-control" runat="server"></asp:TextBox></td>
                <td>Telefon</td>
                <td>
                    <asp:TextBox ID="txtTel" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>Öğretmen Sicil</td>
                <td>
                    <asp:TextBox ID="txtOgrSicil" CssClass="form-control" runat="server"></asp:TextBox></td>
                <td>E-Posta</td>
                <td>
                    <asp:TextBox ID="txtEposta" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>Profil Foto</td>
                <asp:Repeater ID="RepeaterOgrResim" runat="server">
                    <ItemTemplate>
                        <td>
                            <img src="<%#Eval("ogr_resimi")%>" style="height: 100px;" /></td>
                    </ItemTemplate>
                </asp:Repeater>

                <td>CV</td>
                <asp:Repeater ID="RepeaterCV" runat="server">
                    <ItemTemplate>
                        <td>
                            <img src="<%#Eval("ogr_cv")%>" style="height: 100px;" /></td>
                    </ItemTemplate>
                </asp:Repeater>

            </tr>





            <tr>
                <td colspan="4" class="text-center">
                    <asp:Label ID="lblDurum" runat="server" Text="Güncelleme Başarılı" Visible="false" CssClass="form-control alert-success"></asp:Label>
                    <asp:Label ID="LblHata" runat="server" Text="Bir Hata Oluştu" Visible="false" CssClass="form-control alert alert-danger"></asp:Label>

                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Button ID="btnEkle" runat="server" Text="Staj Yeri Kaydet" CssClass="btn btn-success w-100 container" OnClick="btnEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>


</asp:Content>

