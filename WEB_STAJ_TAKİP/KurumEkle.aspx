<%@ Page Title="" Language="C#" MasterPageFile="~/ana.master" AutoEventWireup="true" CodeFile="KurumEkle.aspx.cs" Inherits="KurumEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1 class="text-center">Kurum  Ekle</h1>
     <table class="table mx-auto" style="max-width:800px">
        <tr>
            <td>Kurum Kodu</td>
            <td><asp:TextBox ID="txtKurumKodu" CssClass="form-control" runat="server"></asp:TextBox></td>
             <td>Kurum Adı</td>
            <td><asp:TextBox ID="txtKurumAdi"  CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
            <tr>
            <td>Kurum Tel</td>
            <td><asp:TextBox ID="txtKurumTel" CssClass="form-control" runat="server"></asp:TextBox></td>
             <td>Kurum E-Posta</td>
            <td><asp:TextBox ID="txtKurumEposta"  CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
        
             <tr>
            <td>Kurum Adres</td>
            <td><asp:TextBox ID="txtKurumAdres" CssClass="form-control" runat="server"></asp:TextBox></td>
             <td>Kurum Sektör</td>
            <td><asp:TextBox ID="txtKurumSektor"  CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
        
             <tr>
            <td>Kurum Şifre</td>
            <td><asp:TextBox ID="txtKurumSifre" CssClass="form-control" runat="server"></asp:TextBox></td>
             <td>Kurum Tür</td>
            <td><asp:TextBox ID="txtKurumTur"  CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
        
            
        
             <tr>
            
             <td  colspan="2">Fotoğraf Yükle</td>
             <td>
                <asp:Label ID="Label2" runat="server" Text="Öğrenci Tarafından Yüklenir"></asp:Label></td>
        </tr>
        
        
        <tr>
            <td colspan="4" class="text-center">
                <asp:Label ID="lblDurum" runat="server" Text="Kayıt Başarılı" Visible="false" CssClass="form-control alert-success"></asp:Label>
                 <asp:Label ID="LblHata" runat="server" Text="Bir Hata Oluştu" Visible="false" CssClass="form-control alert alert-danger"></asp:Label>
                <asp:Button ID="btnEkle" runat="server" Text="Kayıt Ekle" CssClass="btn btn-success form-control w-75 " OnClick="btnEkle_Click"   />
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

