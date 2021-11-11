<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Vista_Compra.aspx.cs" Inherits="Vista_Vista_Compra" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td style="width:10%">&nbsp;</td>
            <td style="width:80%">
                <CR:CrystalReportViewer ID="CRV_Compra" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1202px" ReportSourceID="CRS_Compra" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Visible="False" Width="1104px" />
                <CR:CrystalReportSource ID="CRS_Compra" runat="server">
                    <Report FileName="C:\Users\Benzoil M\source\repos\EuropaClipper\proyecto\proyecto\Reportes\Factura.rpt">
                    </Report>
                </CR:CrystalReportSource>
            </td>
            <td style="width:10%">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

