<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/RecuperarContrasena.aspx.cs" Inherits="Vista_RecuperarContraseña" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%">
        <tr>
            <td colspan="4"> &nbsp;</td>
        </tr>
        <tr>
            <td style="width:25%"> </td>
            <td style="width:25%"> Nueva contraseña</td>
            <td style="width:25%"> 
                <asp:TextBox ID="TB_Contrasena" runat="server"></asp:TextBox>
            </td>
            <td style="width:25%"> </td>
        </tr>
        <tr>
            <td style="width:25%"> &nbsp;</td>
            <td style="width:25%"> Confirme contraseña</td>
            <td style="width:25%"> 
                <asp:TextBox ID="TB_CContrasena" runat="server"></asp:TextBox>
            </td>
            <td style="width:25%"> &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4"> &nbsp;</td>
        </tr>
        <tr>
            <td style="width:25%"> &nbsp;</td>
            <td colspan="2" style="width:50%;text-align:center"> 
                <asp:Button ID="B_Confirmar" runat="server" Text="Guardar" OnClick="B_Confirmar_Click" />
            </td>
            <td style="width:25%"> &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4"> &nbsp;</td>
        </tr>
    </table>
</asp:Content>

