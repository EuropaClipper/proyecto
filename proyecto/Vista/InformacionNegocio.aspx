<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/InformacionNegocio.aspx.cs" Inherits="Vista_InformacionNegocio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 40%;
            height: 30px;
        }
        .auto-style2 {
            width: 60%;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%">
        <tr>
            <td style="width:100%;text-align:center;font-size:x-large">Información del negocio</td>
        </tr>
        <tr>
            <td>

            </td>
        </tr>
        <tr>
            <td style="width:100%;text-align:center">
                NIT:
               <asp:Label ID="L_NIT" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width:100%;text-align:center">
                NOMBRE:
               <asp:Label ID="L_Nombre" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width:100%;text-align:center">
                TELEFONO:
               <asp:Label ID="L_Telefono" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width:100%;text-align:center">
                DIRECCIÓN:
               <asp:Label ID="L_Direccion" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width:100%;text-align:center">
                CORREO:
                <asp:Label ID="L_Correo" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width:100%;text-align:center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:100%;text-align:center">
                <asp:Button ID="B_Editar" runat="server" Text="Editar información" Visible="False" OnClick="B_Editar_Click" />
            </td>
        </tr>
        <tr>
            <td style="width:100%;text-align:center">
                <asp:Panel ID="P_Editar" runat="server" Visible="False">
                    <table style="width:100%">
                        <tr>
                            <td style="width:100%" colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style1">Nombre</td>
                            <td style="text-align:left" class="auto-style2">
                                <asp:TextBox ID="TB_Nombre" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="validar"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Za-z &amp;]{3,30}" ValidationGroup="validar">Este campo sólo permite caracteres alfabéticos</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:40%;text-align:right">Telefono</td>
                            <td style="width:60%;text-align:left">
                                <asp:TextBox ID="TB_Telefono" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Telefono" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="validar"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REV_Telefono" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]{10}" ValidationGroup="validar">Este campo sólo permite caracteres numéricos</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:40%;text-align:right">Dirección</td>
                            <td style="width:60%;text-align:left">
                                <asp:TextBox ID="TB_Direccion" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Direccion" runat="server" ControlToValidate="TB_Direccion" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="validar"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REV_Direccion" runat="server" ControlToValidate="TB_Direccion" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Za-z0-9\#\- ]{7,30}" ValidationGroup="validar">Caracteres permitidos: alfanuméricos, # y - </asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:40%;text-align:right">Correo</td>
                            <td style="width:60%;text-align:left">
                                <asp:TextBox ID="TB_Correo" runat="server" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Correo" runat="server" ControlToValidate="TB_Correo" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="validar"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REV_Correo" runat="server" ControlToValidate="TB_Correo" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="validar">Verifique la estructura de su correo</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align:center;width:100%">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align:center;width:100%">
                                <asp:Button ID="B_Guardar" runat="server" Text="Actualizar información" ValidationGroup="validar" OnClick="B_Guardar_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

