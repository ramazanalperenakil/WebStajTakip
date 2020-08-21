<%@ Page Title="" Language="C#" MasterPageFile="~/ana.master" AutoEventWireup="true" CodeFile="StajyerlerinKurumlariniGoruntule.aspx.cs" Inherits="StajyerlerinKurumlariniGoruntule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Stajyerlerin Kurumlarını Görüntüle</h1>

    <div class="container">
        
        
        <table class="table table-sm" style="max-width:800px;">
            <thead>
                <tr>

                    <th>Kurum Kodu</th>
                    <th>kurum Adı</th>
                    <th>Kurum Tel</th>
                    <th>Kurum Eposta</th>
                    <th>Detay Görüntüle</th>
                </tr>
            </thead>
            <asp:Repeater ID="RepeaterStajyerKurumlariListele" runat="server">
                        <ItemTemplate>
            <tbody>
                <tr>
                    
                            <td><%#Eval("kurum_kodu")%></td>
                        <td><%#Eval("kurum_adi")%></td>
                        <td><%#Eval("kurum_tel")%></td>
                        <td><%#Eval("kurum_eposta")%></td>
                        <td>
                            <a href="#" onclick="javascript: window.open('OgretmenMenuKurumDetay.aspx?tur=ogretmen&sicil=<%#Eval("kurum_id")%>&KurumId=<%#Eval("kurum_id")%>', '', 'toolbar=no, location=yes, left=100px, top=200px, status=no, menubar=no, scrollbars=no, resizable=no, width=1200, height=800'); return false" >Detay Görüntüle</a>

                          <%--  <a href="OgrMenuStajyerDetay.aspx?tur=ogretmen&no=<%#Eval("sicil_no")%>&stajyerId=<%#Eval("stajyer_id")%>">Detay Görüntüle</a>--%>
                            <%--<asp:LinkButton ID="LinkButtonOgrMenuStajyerDetay" runat="server" OnClick="LinkButtonOgrMenuStajyerDetay_Click">Bilgileri Göster</asp:LinkButton>--%></td>
                       

                </tr>

            </tbody>
             </ItemTemplate>
                        
                    </asp:Repeater>
        </table>
    </div>
</asp:Content>

