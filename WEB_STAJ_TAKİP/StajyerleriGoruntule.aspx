<%@ Page Title="" Language="C#" MasterPageFile="~/ana.master" AutoEventWireup="true" CodeFile="StajyerleriGoruntule.aspx.cs" Inherits="StajyerleriGoruntule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 class="text-center">Stajyerleri Görüntüle</h1>

    <div class="container">
        
        
        <table class="table table-sm" style="max-width:800px;">
            <thead>
                <tr>

                    <th>Numara</th>
                    <th>Adı</th>
                    <th>Soyadı</th>
                    <th>Staj Yapacağı Kurum</th>
                    <th>Detay Görüntüle</th>
                </tr>
            </thead>
            <asp:Repeater ID="RepeaterStajyerlerListele" runat="server">
                        <ItemTemplate>
            <tbody>
                <tr>
                    
                            <td><%#Eval("ogr_no")%></td>
                        <td><%#Eval("ogr_ad")%></td>
                        <td><%#Eval("ogr_soyad")%></td>
                        <td><%#Eval("kurum_adi")%></td>
                        <td>
                            <a href="#" onclick="javascript: window.open('OgrMenuStajyerDetay.aspx?tur=ogretmen&sicil=<%#Eval("sicil_no")%>&stajyerId=<%#Eval("stajyer_id")%>', '', 'toolbar=no, location=yes, left=100px, top=200px, status=no, menubar=no, scrollbars=no, resizable=no, width=1200, height=800'); return false" >Detay Görüntüle</a>

                          <%--  <a href="OgrMenuStajyerDetay.aspx?tur=ogretmen&no=<%#Eval("sicil_no")%>&stajyerId=<%#Eval("stajyer_id")%>">Detay Görüntüle</a>--%>
                            <%--<asp:LinkButton ID="LinkButtonOgrMenuStajyerDetay" runat="server" OnClick="LinkButtonOgrMenuStajyerDetay_Click">Bilgileri Göster</asp:LinkButton>--%></td>
                       

                </tr>

            </tbody>
             </ItemTemplate>
                        
                    </asp:Repeater>
        </table>
    </div>
</asp:Content>

