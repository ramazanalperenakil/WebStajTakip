<%@ Page Title="" Language="C#" MasterPageFile="~/ana.master" AutoEventWireup="true" CodeFile="OgrMenuTumOgrenciler.aspx.cs" Inherits="OgrMenuTumOgrenciler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Öğretmenin Tüm Öğrencileri</h1>
    <div class="container row">


        <table class="table table-sm" style="max-width: 800px;">
            <thead>
                <tr>

                    <th>Numara</th>
                    <th>Adı</th>
                    <th>Soyadı</th>
                    <th>Okul</th>
                    <th>Bölüm</th>
                    <th>Not Ort</th>
                    <th>Tel</th>
                    <th>E-Posta</th>
                    <th>Detay Görüntüle</th>
                </tr>
            </thead>
            <asp:Repeater ID="RepeaterStajyerlerListele" runat="server">
                        <ItemTemplate>
            <tbody >
                <tr>
                    
                            <td><%#Eval("ogr_no")%></td>
                            <td><%#Eval("ogr_ad")%></td>
                            <td><%#Eval("ogr_soyad")%></td>
                            <td><%#Eval("ogr_okul")%></td>
                            <td><%#Eval("ogr_bolum")%></td>
                            <td><%#Eval("ogr_not_ort")%></td>
                            <td><%#Eval("ogr_tel")%></td>
                            <td><%#Eval("ogr_email")%></td>
                            <td>
                                <a href="#" onclick="javascript: window.open('OgrMenuOgrenciDetay.aspx?tur=ogretmen&sicil=<%#Eval("sicil_no")%>&ogrId=<%#Eval("ogr_id")%>', '', 'toolbar=no, location=yes, left=100px, top=200px, status=no, menubar=no, scrollbars=no, resizable=no, width=1200, height=800'); return false">Detay Görüntüle</a>

                                <%--  <a href="OgrMenuStajyerDetay.aspx?tur=ogretmen&no=<%#Eval("sicil_no")%>&stajyerId=<%#Eval("stajyer_id")%>">Detay Görüntüle</a>--%>
                                <%--<asp:LinkButton ID="LinkButtonOgrMenuStajyerDetay" runat="server" OnClick="LinkButtonOgrMenuStajyerDetay_Click">Bilgileri Göster</asp:LinkButton>--%></td>
                      

                </tr>

            </tbody>
              </ItemTemplate>

                    </asp:Repeater>
        </table>
    </div>
</asp:Content>

