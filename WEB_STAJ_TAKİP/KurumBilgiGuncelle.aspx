<%@ Page Title="" Language="C#" MasterPageFile="~/ana.master" AutoEventWireup="true" CodeFile="KurumBilgiGuncelle.aspx.cs" Inherits="KurumBilgiGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Kurum Bİlgi Güncelle</h1>
      <table class="table mx-auto" style="max-width: 500px;">

       
        <tr>
            <td>Kurum Adı</td>
            <td>
                <asp:TextBox ID="txtAd" CssClass="form-control" runat="server"></asp:TextBox>

            </td>
            <td>Kurum Telefon</td>
            <td>
                <asp:TextBox ID="txtTel" CssClass="form-control"  runat="server"></asp:TextBox></td>
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
            <td>Kurum Sektör</td>
            <td>
                <asp:TextBox ID="txtSektor" CssClass="form-control" runat="server"></asp:TextBox></td>
            <td>Şifreniz</td>
            <td>
                <asp:TextBox ID="txtSifre" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Kurum Türü</td>
            <td>
                <asp:TextBox ID="txtKurumTur" CssClass="form-control" runat="server"></asp:TextBox></td>

            <td>Kurum Logo</td>
             <asp:Repeater ID="RepeaterKurumLogo" runat="server">
                <ItemTemplate>
                    <td><img src="<%#Eval("kurum_resim")%>" style="height:100px;" /></td>
                </ItemTemplate>
            </asp:Repeater>
            
        </tr>

          <tr>
             
             <td colspan="4" class="text-center"><a href="#" onclick="javascript: window.open('upload/KurumFotoYukle.aspx', '', 'toolbar=no, location=yes, left=100px, top=200px, status=no, menubar=no, scrollbars=no, resizable=no, width=720, height=500'); return false">Kurum Foto Güncelle</a></td>
             

        </tr>

        <tr>
            <td colspan="4" class="text-center">
                <asp:Label ID="lblDurum" runat="server" Text="Güncelleme Başarılı" Visible="false" CssClass="form-control alert-success"></asp:Label>
                <asp:Label ID="LblHata" runat="server" Text="Bir Hata Oluştu" Visible="false" CssClass="form-control alert alert-danger"></asp:Label>

            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Button ID="btnEkle" runat="server" Text="Güncelle" CssClass="btn btn-success w-100 container" OnClick="btnEkle_Click"  />
            </td>
        </tr>
    </table>
</asp:Content>

