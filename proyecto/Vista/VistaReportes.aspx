<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/VistaReportes.aspx.cs" Inherits="Vista_VistaReportes" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%">
        <tr><td style="width:100%;text-align:center;font-size:x-large" colspan="3">Consultar reportes</td> </tr>
        <tr><td style="width:100%;text-align:center;font-size:x-large" colspan="3">&nbsp;</td> </tr>
        <tr>
            <td style="width:10%;text-align:center;font-size:large" colspan="2">Reporte ingresos/gastos</td> 
            <td style="width:100%;font-size:large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Reporde de proveedores</td> 
        </tr>
        <tr>
            <td style="width:25%;text-align:right">
                <asp:Label ID="Label1" runat="server" Text="Fecha de reporte:  "></asp:Label>
            </td> 
            <td style="width:25%">
                <asp:TextBox ID="TB_FReporte" runat="server" TextMode="Date"></asp:TextBox>
            </td> 
            <td style="width:50%;text-align:center">
                <asp:RadioButtonList ID="RBL_Estado" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Selected="True">Todos</asp:ListItem>
                    <asp:ListItem>Activos</asp:ListItem>
                    <asp:ListItem>Inactivos</asp:ListItem>
                </asp:RadioButtonList>
            </td> 
        </tr>
        <tr>
            <td colspan="2" style="text-align:center">
            <asp:Button ID="B_GInforme" runat="server" Text="Generar informe" OnClick="B_GInforme_Click" />
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="B_RProveedores" runat="server" Text="Generar informe" OnClick="B_RProveedores_Click" />
            </td>
        </tr>
        <tr><td style="width:100%" colspan="3"></td> </tr>
    </table>
</asp:Content>

