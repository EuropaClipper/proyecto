<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Registro.aspx.cs" Inherits="View_Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="col100_texto_centrado_xlarge" colspan="3">
            <asp:Label ID="LB_RegistroUsuario" runat="server" Text="Registro de usuario "></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="col40_textoDerecha">
            <asp:Label ID="LB_Nombre" runat="server" Text="Nombre:"></asp:Label>
        </td>
        <td class="col20">
            <asp:TextBox ID="TB_Nombre" runat="server" MaxLength="30" Width="90%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td class="col40">
            <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="^[A-Za-z ]{3,30}">Este campo sólo permite caracteres alfabéticos</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="col40_textoDerecha">
            <asp:Label ID="LB_Apellidos" runat="server" Text="Apellidos:"></asp:Label>
        </td>
        <td class="col20">
            <asp:TextBox ID="TB_Apellidos" runat="server" MaxLength="30" Width="90%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_Apellidos" runat="server" ControlToValidate="TB_Apellidos" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td class="col40">
            <asp:RegularExpressionValidator ID="REV_Apellidos" runat="server" ControlToValidate="TB_Apellidos" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="^[A-Za-z ]{3,30}">Este campo sólo permite caracteres alfabéticos</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="col40_textoDerecha">
            <asp:Label ID="LB_Cedula" runat="server" Text="Cedula:"></asp:Label>
        </td>
        <td class="col20">
            <asp:TextBox ID="TB_Cedula" runat="server" MaxLength="10" Width="90%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_Cedula" runat="server" ControlToValidate="TB_Cedula" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td class="col40">
            <asp:RegularExpressionValidator ID="REV_Cedula" runat="server" ControlToValidate="TB_Cedula" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="^[0-9]{3,10}">Este campo sólo permite caracteres numéricos</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="col40_textoDerecha">
            <asp:Label ID="LB_Dirrecion" runat="server" Text="Dirrecion:"></asp:Label>
        </td>
        <td class="col20">
            <asp:TextBox ID="TB_Dirrecion" runat="server" MaxLength="30" Width="90%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_Direccion" runat="server" ControlToValidate="TB_Dirrecion" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td class="col40">
            <asp:RegularExpressionValidator ID="REV_Direccion" runat="server" ControlToValidate="TB_Dirrecion" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="^[A-Za-z0-9\#\- ]{7,30}">Caracteres permitidos: alfanuméricos, # y - </asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="col40_textoDerecha">
            <asp:Label ID="LB_Telefono" runat="server" Text="Telefono:"></asp:Label>
        </td>
        <td class="col20">
            <asp:TextBox ID="TB_Telefono" runat="server" MaxLength="10" Width="90%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_Telefono" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td class="col40">
            <asp:RegularExpressionValidator ID="REV_Telefono" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="^[0-9]{10}">Este campo sólo permite caracteres numéricos</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="col40_textoDerecha">
            <asp:Label ID="LB_Correo" runat="server" Text="Correo Electronico:"></asp:Label>
        </td>
        <td class="col20">
            <asp:TextBox ID="TB_CorreoElectronico" runat="server" MaxLength="100" TextMode="Email" Width="90%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_Correo" runat="server" ControlToValidate="TB_CorreoElectronico" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td class="col40">
            <asp:RegularExpressionValidator ID="REV_Correo" runat="server" ControlToValidate="TB_CorreoElectronico" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Verifique la estructura de su correo: ej nombre@organización.tipo</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="col40_textoDerecha">
            <asp:Label ID="LB_Usuario" runat="server" Text="Usuario:"></asp:Label>
        </td>
        <td class="col20">
            <asp:TextBox ID="TB_Usuario" runat="server" MaxLength="30" Width="90%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_Usuario" runat="server" ControlToValidate="TB_Usuario" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td class="col40">
            <asp:RegularExpressionValidator ID="REV_Usuario" runat="server" ControlToValidate="TB_Usuario" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="[A-Za-z0-9_]{3,30}">Este campo sólo permite caracteres alfanuméricos y _</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="col40_textoDerecha">
            <asp:Label ID="LB_Contraseña" runat="server" Text="Contraseña:"></asp:Label>
        </td>
        <td class="col20">
            <asp:TextBox ID="TB_Contrasena" runat="server" MaxLength="60" TextMode="Password" Width="90%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_Contrasena" runat="server" ControlToValidate="TB_Contrasena" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td class="col40">
            <asp:RegularExpressionValidator ID="REV_Contrasena" runat="server" ControlToValidate="TB_Contrasena" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="[A-Za-z0-9_]{3,60}">Este campo sólo permite caracteres alfanuméricos y _</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="col40_textoDerecha">
            <asp:Label ID="LB_ConfirmarContraseña" runat="server" Text="Confirmar Contraseña:"></asp:Label>
        </td>
        <td class="col20">
            <asp:TextBox ID="TB_ConfirmarContrasena" runat="server" MaxLength="60" TextMode="Password" Width="90%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_Confirmar" runat="server" ControlToValidate="TB_ConfirmarContrasena" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td class="col40">
            <asp:RegularExpressionValidator ID="REV_Confirmacion" runat="server" ControlToValidate="TB_ConfirmarContrasena" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="[A-Za-z0-9_]{3,60}">Este campo sólo permite caracteres alfanuméricos y _</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="width:100%" colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width:100%;text-align:center" colspan="3">
            <asp:Button ID="BTN_Registrar" runat="server" Text="Completar registro" ValidationGroup="VG_Registrar" OnClick="BTN_Registrar_Click" Font-Size="Medium" />
        </td>
    </tr>
    <tr>
        <td style="width:100%;text-align:center" colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width:100%;text-align:center" colspan="3">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

