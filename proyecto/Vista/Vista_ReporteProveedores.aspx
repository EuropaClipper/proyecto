<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Vista_ReporteProveedores.aspx.cs" Inherits="Vista_Vista_ReporteProveedores" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%">
        <tr>
            <td style="width:100%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width:100%">
                <CR:CrystalReportSource ID="CRS_Proveedores" runat="server">
                    <Report FileName="~\Reportes\ReporteProveedores.rpt">
                    </Report>
                </CR:CrystalReportSource>
                <CR:CrystalReportViewer ID="CRV_Proveedores" runat="server" AutoDataBind="true" ReportSourceID="CRS_Proveedores" ToolPanelView="None" />
            </td>
        </tr>
        <tr>
            <td style="width:100%">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

