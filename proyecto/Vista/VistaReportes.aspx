<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="VistaReportes.aspx.cs" Inherits="Vista_VistaReportes" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%">
        <tr><td style="width:100%;text-align:center;font-size:x-large" colspan="2">Consultar reportes</td> </tr>
        <tr><td style="width:100%;text-align:center;font-size:x-large" colspan="2">&nbsp;</td> </tr>
        <tr><td style="width:50%;text-align:right">
            <asp:Label ID="Label1" runat="server" Text="Fecha de reporte:  "></asp:Label>
            </td> 
            <td style="width:50%">
                <asp:TextBox ID="TB_FReporte" runat="server" TextMode="Date"></asp:TextBox>
            </td> 
        </tr>
        <tr>
            <td colspan="2">

            </td>
        </tr>
        <tr><td style="width:100%;text-align:center" colspan="2">
            <asp:Button ID="B_GInforme" runat="server" Text="Generar informe" OnClick="B_GInforme_Click" />
            </td> </tr>
        <tr><td style="width:100%" colspan="2"></td> </tr>
    </table>
</asp:Content>

