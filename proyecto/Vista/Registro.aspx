<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/Registro.aspx.cs" Inherits="View_Registro" %>

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
            <asp:TextBox ID="TB_Nombre" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ValidationGroup="VG_Registrar"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="LB_Apellidos" runat="server" Text="Apellidos:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TB_Apellidos" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TB_Apellidos" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_Apellidos" ErrorMessage="*" ValidationGroup="VG_Registrar"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="LB_Cedula" runat="server" Text="Cedula:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TB_Cedula" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TB_Cedula" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_Cedula" ErrorMessage="*" ValidationGroup="VG_Registrar"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="LB_Dirrecion" runat="server" Text="Dirrecion:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TB_Dirrecion" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TB_Dirrecion" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_Dirrecion" ErrorMessage="*" ValidationGroup="VG_Registrar"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="LB_Telefono" runat="server" Text="Telefono:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TB_Telefono" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="*" ValidationGroup="VG_Registrar"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="LB_Correo" runat="server" Text="Correo Electronico:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TB_CorreoElectronico" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TB_CorreoElectronico" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TB_CorreoElectronico" ErrorMessage="*" ValidationGroup="VG_Registrar"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="LB_Usuario" runat="server" Text="Usuario:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TB_Usuario" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TB_Usuario" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TB_Usuario" ErrorMessage="*" ValidationGroup="VG_Registrar"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="LB_Contraseña" runat="server" Text="Contraseña:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TB_Contraseña" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TB_Contraseña" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TB_Contraseña" ErrorMessage="*" ValidationGroup="VG_Registrar"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="LB_ConfirmarContraseña" runat="server" Text="Confirmar Contraseña:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TB_ConfirmarContraseña" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="TB_ConfirmarContraseña" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Registrar"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TB_ConfirmarContraseña" ErrorMessage="*" ValidationGroup="VG_Registrar"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:Button ID="BTN_Registrar" runat="server" Text="Registrar" ValidationGroup="VG_Registrar" />
        </td>
    </tr>
</table>
</asp:Content>

