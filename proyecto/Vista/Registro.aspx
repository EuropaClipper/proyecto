<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Registro.aspx.cs" Inherits="View_Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style4 {
        width: 206px;
        text-align: left;
    }
    .auto-style5 {
        text-align: center;
        width: 581px;
    }
    .auto-style6 {
        width: 206px;
        text-align: left;
        height: 30px;
    }
    .auto-style7 {
        text-align: center;
        width: 581px;
        height: 30px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:Label ID="LB_RegistroUsuario" runat="server" Text="Registro de usuario "></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="LB_Nombre" runat="server" Text="Nombre:"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="TB_Nombre" runat="server" MaxLength="30"></asp:TextBox>
            <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="^[A-Za-z ]{3,30}"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="LB_Apellidos" runat="server" Text="Apellidos:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TB_Apellidos" runat="server" MaxLength="30"></asp:TextBox>
            <asp:RegularExpressionValidator ID="REV_Apellidos" runat="server" ControlToValidate="TB_Apellidos" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="^[A-Za-z ]{3,30}"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RFV_Apellidos" runat="server" ControlToValidate="TB_Apellidos" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="LB_Cedula" runat="server" Text="Cedula:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TB_Cedula" runat="server" MaxLength="10"></asp:TextBox>
            <asp:RegularExpressionValidator ID="REV_Cedula" runat="server" ControlToValidate="TB_Cedula" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="^[0-9]{3,10}"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RFV_Cedula" runat="server" ControlToValidate="TB_Cedula" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="LB_Dirrecion" runat="server" Text="Dirrecion:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TB_Dirrecion" runat="server" MaxLength="30"></asp:TextBox>
            <asp:RegularExpressionValidator ID="REV_Direccion" runat="server" ControlToValidate="TB_Dirrecion" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="^[A-Za-z0-9\#\- ]{7,30}"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RFV_Direccion" runat="server" ControlToValidate="TB_Dirrecion" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="LB_Telefono" runat="server" Text="Telefono:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TB_Telefono" runat="server" MaxLength="10"></asp:TextBox>
            <asp:RegularExpressionValidator ID="REV_Telefono" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="^[0-9]{10}"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RFV_Telefono" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="LB_Correo" runat="server" Text="Correo Electronico:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TB_CorreoElectronico" runat="server" MaxLength="100" TextMode="Email"></asp:TextBox>
            <asp:RegularExpressionValidator ID="REV_Correo" runat="server" ControlToValidate="TB_CorreoElectronico" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RFV_Correo" runat="server" ControlToValidate="TB_CorreoElectronico" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="LB_Usuario" runat="server" Text="Usuario:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TB_Usuario" runat="server" MaxLength="30"></asp:TextBox>
            <asp:RegularExpressionValidator ID="REV_Usuario" runat="server" ControlToValidate="TB_Usuario" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="[A-Za-z0-9_]{3,30}"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RFV_Usuario" runat="server" ControlToValidate="TB_Usuario" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="LB_Contraseña" runat="server" Text="Contraseña:"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="TB_Contrasena" runat="server" MaxLength="60" TextMode="Password"></asp:TextBox>
            <asp:RegularExpressionValidator ID="REV_Contrasena" runat="server" ControlToValidate="TB_Contrasena" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="[A-Za-z0-9_]{3,60}"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RFV_Contrasena" runat="server" ControlToValidate="TB_Contrasena" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="LB_ConfirmarContraseña" runat="server" Text="Confirmar Contraseña:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TB_ConfirmarContrasena" runat="server" MaxLength="60" TextMode="Password"></asp:TextBox>
            <asp:RegularExpressionValidator ID="REV_Confirmacion" runat="server" ControlToValidate="TB_ConfirmarContrasena" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar" SetFocusOnError="True" ValidationExpression="[A-Za-z0-9_]{3,60}"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RFV_Confirmar" runat="server" ControlToValidate="TB_ConfirmarContrasena" ErrorMessage="*" ValidationGroup="VG_Registrar" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:Button ID="BTN_Registrar" runat="server" Text="Registrar" ValidationGroup="VG_Registrar" OnClick="BTN_Registrar_Click" />
        </td>
    </tr>
</table>
</asp:Content>

