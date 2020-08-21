<%@ Page Language="C#" AutoEventWireup="true" CodeFile="giris.aspx.cs" Inherits="giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Stajyer Takip Sistemi Çoklu Giriş Ekranı</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="stiller/login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="login">
                <h3 class="text-center text-white pt-3">Stajyer Takip Uygulaması Çoklu Giriş Ekranı</h3>
                <div class="container">
                    <div id="login-row" class="row justify-content-center align-items-center">
                        <div id="login-column" class="col-md-6">
                            <div id="login-box" class="col-md-12">
                          
                                <form id="login-form" class="form" action="" method="post">

                                    <h3 class="text-center text-info">Öğrenci - Öğretmen - Kurum <br />Giriş Ekranı</h3>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server"  RepeatDirection="Horizontal"  RepeatLayout="Table"  BorderWidth="0" BorderColor="Blue" BorderStyle="Outset" Width="500">
                                        <asp:ListItem Value="0">&#214;ğrenci</asp:ListItem>
                                        <asp:ListItem Value="1">&#214;ğretmen</asp:ListItem>
                                        <asp:ListItem Value="2">Kurum</asp:ListItem>
                                    </asp:RadioButtonList>
                                    
                                    <div class="form-group">
                                        <label for="username" class="text-info pt-2">Öğrenci No & Sicil No & Kurum Kodu</label><br>
                                        <asp:TextBox ID="KullaniciAdi" CssClass="form-control" runat="server"></asp:TextBox>
                                        
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="text-info">Şifre</label><br>
                                         <asp:TextBox ID="Sifre" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                      
                                    </div>
                                    <asp:Button ID="GirisYap" CssClass="btn btn-info btn-md w-50" runat="server" Text="Giriş Yap" OnClick="GirisYap_Click" />
                                    <br />
                                     <br />
                                    
                                     <asp:Label ID="LabelHata" runat="server" Text="Kullanıcı Adı yada Şifre Hatalı" CssClass="alert-danger form-control pb-3"  ForeColor="red" Visible="false"></asp:Label>
                     
                                    

                                   
                                </form>
                                <asp:Label CssClass="text-center" ID="lblHata" runat="server" Text="Bu Proje Zorunlu Staj Ödevi İçin Geliştirilmiştir. "></asp:Label>

                                
                                <asp:LinkButton ID="LinkButton1" CssClass="mb-5" runat="server" OnClick="LinkButton1_Click">Öğretmen Kayıt Ol</asp:LinkButton>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
