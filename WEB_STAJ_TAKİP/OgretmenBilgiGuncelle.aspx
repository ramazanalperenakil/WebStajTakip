<%@ Page Title="" Language="C#" MasterPageFile="~/ana.master" AutoEventWireup="true" CodeFile="OgretmenBilgiGuncelle.aspx.cs" Inherits="OgretmenBilgiGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 class="text-center">Öğretmen Bİlgi Güncelle</h1>
    <table class="table mx-auto" style="max-width: 800px;">

        <tr>
            <td>Adınız</td>
            <td>
                <asp:TextBox ID="txtAd" CssClass="form-control" runat="server"></asp:TextBox>

            </td>
            <td>Soyadınız</td>
            <td>
                <asp:TextBox ID="txtSoyad" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Telefon</td>
            <td>
                <asp:TextBox ID="txtTel" CssClass="form-control" runat="server"></asp:TextBox></td>
            <td>Bölümünüz</td>
            <td>
                <asp:TextBox ID="txtBolum" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Alanınız</td>
            <td>
                <asp:TextBox ID="txtAlan" CssClass="form-control" runat="server"></asp:TextBox></td>
            <td>Şifreniz</td>
            <td>
                <asp:TextBox ID="txtSifre" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Eposta</td>
            <td>
                <asp:TextBox ID="txtEposta" CssClass="form-control" runat="server"></asp:TextBox></td>

            <td>Profil Fotoğrafı</td>
            <asp:Repeater ID="RepeaterPP" runat="server">
                <ItemTemplate>
                    <td>
                        <img src="<%#Eval("hoca_resim")%>" style="height: 100px;" /></td>
                </ItemTemplate>
            </asp:Repeater>

        </tr>

        <tr>

            <td colspan="4" class="text-center"><a href="#" onclick="javascript: window.open('upload/Hoca.aspx', '', 'toolbar=no, location=yes, left=100px, top=200px, status=no, menubar=no, scrollbars=no, resizable=no, width=720, height=500'); return false">Profil Fotoğrafı Güncelle</a></td>


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

