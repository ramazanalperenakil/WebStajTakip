<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HocaKayit.aspx.cs" Inherits="HocaKayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Öğrtmen Kayıt Sayfası</title>
     <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="stiller/ana.css" rel="stylesheet" />
    <link href="stiller/jquery.lightbox-0.5.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.slim.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <script src="js/menu.js"></script>

    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h1 class="text-center pb-3">Öğretmen Ekle</h1>
     <table class="table mx-auto pt-2" border="0"  style="max-width:800px">
        <tr>
            <td>Adı</td>
            <td><asp:TextBox ID="txtAd" CssClass="form-control" runat="server"></asp:TextBox></td>
             <td>Soyadı</td>
            <td><asp:TextBox ID="txtSoyad"  CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
            <tr>
            <td>Sicil No</td>
            <td><asp:TextBox ID="txtNo" CssClass="form-control" runat="server"></asp:TextBox></td>
             <td>Telefon</td>
            <td><asp:TextBox ID="txtTel"  CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
        
             <tr>
            <td>E Posta</td>
            <td><asp:TextBox ID="txtEpsota" CssClass="form-control" runat="server"></asp:TextBox></td>
             <td>Bölüm</td>
            <td><asp:TextBox ID="txtBolum"  CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
        
             <tr>
            <td>Alan</td>
            <td><asp:TextBox ID="txtAlan" CssClass="form-control" runat="server"></asp:TextBox></td>
             <td>Şifre</td>
            <td><asp:TextBox ID="txtSifre"  CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
        
           
        
             <tr>
            <td>Güvenlik Soru Cevabı Yükle</td>
             <td><asp:TextBox ID="txtCevap"  CssClass="form-control" runat="server"></asp:TextBox></td>
             <td>Fotoğraf Yükle</td>
             <td>
                 <asp:Label ID="Label1" runat="server" Text="Fotoğraf Bir Sonraki Aşamada Yüklenecektir"></asp:Label></td>
        </tr>
        
        
        <tr>
            <td colspan="4" class="text-center">
                <asp:Label ID="lblDurum" runat="server" Text="Kayıt Başarılı Fotoğraf Yükleme Alanına Yönlendiriliyorsunuz..." Visible="false" CssClass="form-control alert-success"></asp:Label>
                 <asp:Label ID="LblHata" runat="server" Text="Bir Hata Oluştu" Visible="false" CssClass="form-control alert alert-danger"></asp:Label>
                  <asp:Label ID="LabelBos" runat="server" Text="Sicil No Boş Olamaz" Visible="false" CssClass="form-control alert alert-danger"></asp:Label>
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
        </div>
    </form>
</body>
</html>
