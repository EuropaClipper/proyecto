<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Informacion_Usuario.aspx.cs" Inherits="Vista_Informacion_Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width:100%">
        <tr>
            <td style="width: 40%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 40%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 40%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 40%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 40%;text-align:right">Cedula</td>
            <td style="width: 20%">
                <asp:Label ID="L_Cedula" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 40%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 40%;text-align:right">Nombre</td>
            <td style="width: 20%">
                <asp:TextBox ID="TB_nombreE" runat="server" MaxLength="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_nombreE" runat="server" ControlToValidate="TB_nombreE" ErrorMessage="*" ValidationGroup="edicion" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 40%">
            <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="TB_nombreE" ErrorMessage="*" ForeColor="Red" ValidationGroup="edicion" SetFocusOnError="True" ValidationExpression="^[A-Za-z ]{3,30}">Este campo sólo permite caracteres alfabéticos</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 40%;text-align:right">Usuario</td>
            <td style="width: 20%">
                <asp:TextBox ID="TB_usuarioE" runat="server" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_usuarioE" runat="server" ControlToValidate="TB_usuarioE" ErrorMessage="*" ValidationGroup="edicion" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 40%">
            <asp:RegularExpressionValidator ID="REV_Usuario" runat="server" ControlToValidate="TB_usuarioE" ErrorMessage="*" ForeColor="Red" ValidationGroup="edicion" SetFocusOnError="True" ValidationExpression="[A-Za-z0-9_]{3,30}">Este campo sólo permite caracteres alfanuméricos y _</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 40%;text-align:right">Contraseña</td>
            <td style="width: 20%">
                <asp:TextBox ID="TB_contraseñaE" runat="server" MaxLength="60"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_contraseñaE" runat="server" ControlToValidate="TB_contraseñaE" ErrorMessage="*" ValidationGroup="edicion" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 40%">
            <asp:RegularExpressionValidator ID="REV_Usuario0" runat="server" ControlToValidate="TB_contraseñaE" ErrorMessage="*" ForeColor="Red" ValidationGroup="edicion" SetFocusOnError="True" ValidationExpression="[A-Za-z0-9_]{3,30}">Este campo sólo permite caracteres alfanuméricos y _</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 40%;text-align:right">Correo</td>
            <td style="width: 20%">
                <asp:TextBox ID="TB_correoE" runat="server" MaxLength="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_correoE" runat="server" ControlToValidate="TB_correoE" ErrorMessage="*" ValidationGroup="edicion" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 40%">
            <asp:RegularExpressionValidator ID="REV_Correo" runat="server" ControlToValidate="TB_correoE" ErrorMessage="*" ForeColor="Red" ValidationGroup="edicion" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Verifique la estructura de su correo: ej nombre@organización.tipo</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 40%;text-align:right">Telefono</td>
            <td style="width: 20%">
                <asp:TextBox ID="TB_telefonoE" runat="server" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_telefonoE" runat="server" ControlToValidate="TB_telefonoE" ErrorMessage="*" ValidationGroup="edicion" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 40%">
            <asp:RegularExpressionValidator ID="REV_Telefono" runat="server" ControlToValidate="TB_telefonoE" ErrorMessage="*" ForeColor="Red" ValidationGroup="edicion" SetFocusOnError="True" ValidationExpression="^[0-9]{10}">Este campo sólo permite caracteres numéricos</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 40%;text-align:right">Dirección</td>
            <td style="width: 20%">
                <asp:TextBox ID="TB_direccionE" runat="server" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_direccionE" runat="server" ControlToValidate="TB_direccionE" ErrorMessage="*" ValidationGroup="edicion" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 40%">
            <asp:RegularExpressionValidator ID="REV_Direccion" runat="server" ControlToValidate="TB_direccionE" ErrorMessage="*" ForeColor="Red" ValidationGroup="edicion" SetFocusOnError="True" ValidationExpression="^[A-Za-z0-9\#\- ]{7,30}">Caracteres permitidos: alfanuméricos, # y - </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 40%;text-align:right">
                &nbsp;</td>
            <td style="width: 20%">
                &nbsp;</td>
            <td style="width: 40%">&nbsp;</td>
        </tr>
    </table>

    <table style="width:100%">
        <td>
            <td style="width: 25%;text-align:right"></td>
            <td style="width: 25%;text-align:right">
                <asp:Button ID="B_Modificar" runat="server" Text="Modificar" ValidationGroup="edicion" OnClick="Button1_Click" />
            </td>
            <td style="width: 25%;text-align:left">
                <asp:Button ID="B_restaurar" runat="server" OnClick="B_restaurar_Click" Text="Restaurar" />
            </td>
            <td style="width: 25%;text-align:right"></td>
        </tr>

        <tr>
        <td>
            &nbsp;<td style="width: 25%;text-align:right">&nbsp;</td>
            <td style="width: 25%;text-align:right">&nbsp;</td>
            <td style="width: 25%;text-align:left">&nbsp;</td>
            <td style="width: 25%;text-align:right">&nbsp;</td>
        </tr>

    </table>



</asp:Content>

