<%@ Page Title="" Language="C#" MasterPageFile="~/ana.master" AutoEventWireup="true" CodeFile="OgrMenuOgrenciDetay.aspx.cs" Inherits="OgrMenuOgrenciDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Öğretmen Menü Öğrenci Detay</h1>

    <div class="container">
        <div class="row">



            <table class="table table-bordered success" style="max-width: 800px;">
                <thead>
                    <asp:Repeater ID="RepeaterOgrenciDetay" runat="server">
                        <ItemTemplate>
                            <tr>
                                <th>Öğrenci No</th>
                                <td><%#Eval("ogr_no")%></td>
                            </tr>
                            <tr>
                                <th class="info">Adı Soyadı</th>
                                <td><%#Eval("ogr_ad")%> &nbsp;  <%#Eval("ogr_soyad")%>  </td>
                            </tr>
                            <tr>
                                <th class="info">Okul</th>
                                <td><%#Eval("ogr_okul")%></td>
                            </tr>
                            <tr>
                                <th class="info">Bölüm</th>
                                <td><%#Eval("ogr_bolum")%></td>
                            </tr>

                            <tr>
                                <th class="info">Telefon</th>
                                <td><%#Eval("ogr_tel")%></td>
                            </tr>
                            <tr>
                                <th class="info">Not Ort.</th>
                                <td><%#Eval("ogr_not_ort")%></td>
                            </tr>
                            <tr>
                                <th class="info">E-posta</th>
                                <td><%#Eval("ogr_email")%></td>
                            </tr>

                        </ItemTemplate>
                    </asp:Repeater>




                    <tr>


                        <asp:Repeater ID="RepeaterOgrResim" runat="server">
                            <ItemTemplate>
                                <td>
                                    <img src="<%#Eval("ogr_resimi")%>" style="height: 100px;" /></td>
                            </ItemTemplate>
                        </asp:Repeater>


                        <asp:Repeater ID="RepeaterCV" runat="server">
                            <ItemTemplate>
                                <td><a href='<%#Eval("ogr_cv")%>' class="gallery">


                                    <img src="<%#Eval("ogr_cv")%>" style="height: 100px;" /></a></td>
                            </ItemTemplate>
                        </asp:Repeater>

                    </tr>

                </thead>

            </table>
        </div>
    </div>
</asp:Content>

