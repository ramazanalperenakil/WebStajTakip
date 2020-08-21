<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KurumFotoYukle.aspx.cs" Inherits="upload_KurumFotoYukle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="fuDosya" CssClass="form-control-file" runat="server" />
            <asp:Button ID="yukle" runat="server" Text="YÜKLE" OnClick="yukle_Click"  />

            <asp:Label ID="lblDurum" Visible="false" runat="server" Text="Yükleme Başarılı"></asp:Label>

           <%-- <asp:Image ID="Image1" runat="server" ImageUrl="" />--%>
        </div>
    </form>
</body>
</html>
