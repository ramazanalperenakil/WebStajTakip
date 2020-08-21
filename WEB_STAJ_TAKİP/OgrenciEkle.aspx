<%@ Page Title="" Language="C#" MasterPageFile="~/ana.master" AutoEventWireup="true" CodeFile="OgrenciEkle.aspx.cs" Inherits="kayit_OgrenciEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="text-center">Öğrenci Ekle</h1>
     <table class="table mx-auto" style="max-width:800px">
        <tr>
            <td>Adı</td>
            <td><asp:TextBox ID="txtAd" CssClass="form-control" runat="server"></asp:TextBox></td>
             <td>Soyadı</td>
            <td><asp:TextBox ID="txtSoyad"  CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
            <tr>
            <td>No</td>
            <td><asp:TextBox ID="txtNo" CssClass="form-control" runat="server"></asp:TextBox></td>
             <td>Telefon</td>
            <td><asp:TextBox ID="txtTel"  CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
        
             <tr>
            <td>Okul</td>
            <td><asp:TextBox ID="txtOkul" CssClass="form-control" runat="server"></asp:TextBox></td>
             <td>Bölüm</td>
            <td><asp:TextBox ID="txtBolum"  CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
        
             <tr>
            <td>Fakülte</td>
            <td><asp:TextBox ID="txtFakulte" CssClass="form-control" runat="server"></asp:TextBox></td>
             <td>Ortalama</td>
            <td><asp:TextBox ID="txtOrtalama"  CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
        
             <tr>
            <td>Adres </td>
            <td><asp:TextBox ID="txtAdres" CssClass="form-control" runat="server"></asp:TextBox></td>
             <td>Eposta</td>
            <td><asp:TextBox ID="txtEposta" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
        
             <tr>
            <td>Şifre</td>
            <td><asp:TextBox ID="txtSifre" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox></td>
             <td>Öğretmen Sicil</td>
            <td><asp:TextBox ID="txtSicil"  CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
        
             <tr>
            <td>CV Yükle</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Öğrenci Tarafından Yüklenir"></asp:Label></td>
             <td>Fotoğraf Yükle</td>
             <td>
                <asp:Label ID="Label2" runat="server" Text="Öğrenci Tarafından Yüklenir"></asp:Label></td>
        </tr>
        
        
        <tr>
            <td colspan="4" class="text-center">
                <asp:Label ID="lblDurum" runat="server" Text="Kayıt Başarılı" Visible="false" CssClass="form-control alert-success"></asp:Label>
                 <asp:Label ID="LblHata" runat="server" Text="Bir Hata Oluştu" Visible="false" CssClass="form-control alert alert-danger"></asp:Label>
                <asp:Button ID="btnEkle" runat="server" Text="Kayıt Ekle" CssClass="btn btn-success form-control w-75 " OnClick="btnEkle_Click"  />
            </td>
        </tr>
         <tr>
            <td colspan="4" class="text-center">
                <asp:Label ID="Label3" runat="server" Text="Kayıt Başarılı" Visible="false" CssClass="form-control alert-success"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="Bir Hata Oluştu" Visible="false" CssClass="form-control alert alert-danger"></asp:Label>

            </td>
        </tr>



    </table>
</asp:Content>

