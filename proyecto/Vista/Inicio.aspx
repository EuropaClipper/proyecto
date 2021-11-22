<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Inicio.aspx.cs" Inherits="Vista_Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table class="auto-style1">
        <tr>
            <td class="col20">&nbsp;</td>
            <td class="col80">
                &nbsp;</td>
            <td class="col10">&nbsp;</td>
        </tr>
        <tr>
            <td class="col20">&nbsp;</td>
            <td class="col80">
                &nbsp;</td>
            <td class="col10">&nbsp;</td>
        </tr>
        <tr>
            <td class="col20">&nbsp;</td>
            <td class="col80">
                <div id="rondellCarousel" class="col70">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <a href="<%#Container.DataItem %>">
                                <img src="<%#Container.DataItem %>" />
                            </a>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </td>
            <td class="col10">&nbsp;</td>
        </tr>
        <tr>
            <td class="col20">&nbsp;</td>
            <td class="col80">
                &nbsp;</td>
            <td class="col10">&nbsp;</td>
        </tr>
    </table>

</asp:Content>

