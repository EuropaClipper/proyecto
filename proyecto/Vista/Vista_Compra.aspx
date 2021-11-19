<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Vista_Compra.aspx.cs" Inherits="Vista_Vista_Compra" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%">
        <tr>
            <td style="width:10%">&nbsp;</td>
            <td style="width:80%">
                <CR:CrystalReportViewer ID="CRV_Compra" runat="server" AutoDataBind="True"  Height="1202px" ReportSourceID="CRS_Compra"  ToolPanelWidth="200px" Width="1104px" />
                <CR:CrystalReportSource ID="CRS_Compra" runat="server">
                    <Report FileName="C:\Users\Benzoil M\source\repos\EuropaClipper\proyecto\proyecto\Reportes\Factura.rpt">
                    </Report>
                </CR:CrystalReportSource>
            </td>
            <td style="width:10%">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

