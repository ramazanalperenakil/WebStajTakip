<%@ Page Title="" Language="C#" MasterPageFile="~/ana.master" AutoEventWireup="true" CodeFile="Ogrenci_Bilgi_Guncelle.aspx.cs" Inherits="Ogrenci_Bilgi_Guncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 class="text-center">Öğrenci Bilgi Güncelle</h1>
    <table class="table mx-auto" style="max-width: 800px;">

        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <tr>
            <td>Adı</td>
            <td>
                <asp:TextBox ID="txtAd" CssClass="form-control" runat="server"></asp:TextBox>

            </td>
            <td>Soyadı</td>
            <td>
                <asp:TextBox ID="txtSoyadi" CssClass="form-control"  runat="server"></asp:TextBox></td>
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
            <td>Fakülte</td>
            <td>
                <asp:TextBox ID="txtFakulte" CssClass="form-control" runat="server"></asp:TextBox></td>
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
            <td>Adres</td>
            <td>
                <asp:TextBox ID="txtAdres" CssClass="form-control" runat="server"></asp:TextBox></td>
            <td>E-Posta</td>
            <td>
                <asp:TextBox ID="txtEposta" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Öğretmen Sicil</td>
            <td>
                <asp:TextBox ID="txtOgrSicil" CssClass="form-control" runat="server"></asp:TextBox></td>
            <td>Şifreniz</td>
            <td>
                <asp:TextBox ID="txtSifre" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Profil Foto</td>
            <asp:Repeater ID="RepeaterOgrResim" runat="server">
                <ItemTemplate>
                    <td><img src="<%#Eval("ogr_resimi")%>" style="height:100px;" /></td>
                </ItemTemplate>
            </asp:Repeater>

            <td>CV</td>
             <asp:Repeater ID="RepeaterCV" runat="server">
                <ItemTemplate>
                    <td><img src="<%#Eval("ogr_cv")%>" style="height:100px;" /></td>
                </ItemTemplate>
            </asp:Repeater>
            
        </tr>

         <tr>
            <td colspan="2" class="text-center"><a href="#" onclick="javascript: window.open('upload/OgrenciFotoYukle.aspx', '', 'toolbar=no, location=yes, left=100px, top=200px, status=no, menubar=no, scrollbars=no, resizable=no, width=720, height=500'); return false" >Profil Foto Güncelle</a></td>
             
             <td colspan="2" class="text-center"><a href="#" onclick="javascript: window.open('upload/OgrenciCvYukle.aspx', '', 'toolbar=no, location=yes, left=100px, top=200px, status=no, menubar=no, scrollbars=no, resizable=no, width=720, height=500'); return false">CV Foto Güncelle</a></td>
             

        </tr>

        <tr>
            <td colspan="4" class="text-center">
                <asp:Label ID="lblDurum" runat="server" Text="Güncelleme Başarılı" Visible="false" CssClass="form-control alert-success"></asp:Label>
                <asp:Label ID="LblHata" runat="server" Text="Bir Hata Oluştu" Visible="false" CssClass="form-control alert alert-danger"></asp:Label>

            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Button ID="btnEkle" runat="server" Text="Güncelle" CssClass="btn btn-success w-100 container" OnClick="btnEkle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

