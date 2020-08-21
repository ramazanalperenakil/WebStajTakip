<%@ Page Title="" Language="C#" MasterPageFile="~/ana.master" AutoEventWireup="true" CodeFile="OgretmenMenuKurumDetay.aspx.cs" Inherits="OgretmenMenuKurumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Öğretmen Menü Kurum Detay</h1>

    <div class="container">
        <div class="row">



            <table class="table table-bordered success" style="max-width: 800px; max-height:1000px;">
                <thead>
                    <asp:Repeater ID="RepeaterKurumDetay" runat="server">
                        <ItemTemplate>

                            <tr>
                                <th class="info">Kurum Kodu</th>
                                <td><%#Eval("kurum_kodu")%></td>
                            </tr>
                            <tr>
                                <th class="info">Kurum Adı</th>
                                <td><%#Eval("kurum_adi")%></td>
                            </tr>
                            <tr>
                                <th class="info">Kurum Tel</th>
                                <td><%#Eval("kurum_tel")%></td>
                            </tr>
                            <tr>
                                <th class="info">Kurum E-Posta</th>
                                <td><%#Eval("kurum_eposta")%></td>
                            </tr>
                            <tr>
                                <th class="info">Kurum tür</th>
                                <td><%#Eval("kurum_tur")%></td>
                            </tr>
                            <tr>
                                <th class="info">Kurum Adres</th>
                                <td><%#Eval("kurum_adres")%></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>






                </thead>

            </table>
        </div>
    </div>
</asp:Content>

