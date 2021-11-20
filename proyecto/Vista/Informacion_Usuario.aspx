<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Informacion_Usuario.aspx.cs" Inherits="Vista_Informacion_Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  
   
    Nombre
    <asp:TextBox ID="TB_nombreE" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RFV_nombreE" runat="server" ControlToValidate="TB_nombreE" ErrorMessage="*" ValidationGroup="edicion"></asp:RequiredFieldValidator>
    <br />
    Usuario <asp:TextBox ID="TB_usuarioE" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RFV_usuarioE" runat="server" ControlToValidate="TB_usuarioE" ErrorMessage="*" ValidationGroup="edicion"></asp:RequiredFieldValidator>
    <br />
    Contraseña
    <asp:TextBox ID="TB_contraseñaE" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RFV_contraseñaE" runat="server" ControlToValidate="TB_contraseñaE" ErrorMessage="*" ValidationGroup="edicion"></asp:RequiredFieldValidator>
    <br />
    Correo
    <asp:TextBox ID="TB_correoE" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RFV_correoE" runat="server" ControlToValidate="TB_correoE" ErrorMessage="*" ValidationGroup="edicion"></asp:RequiredFieldValidator>
    <br />
    Telefono
    <asp:TextBox ID="TB_telefonoE" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RFV_telefonoE" runat="server" ControlToValidate="TB_telefonoE" ErrorMessage="*" ValidationGroup="edicion"></asp:RequiredFieldValidator>
    <br />
    Direccion
    <asp:TextBox ID="TB_direccionE" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RFV_direccionE" runat="server" ControlToValidate="TB_direccionE" ErrorMessage="*" ValidationGroup="edicion"></asp:RequiredFieldValidator>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Modificar" ValidationGroup="edicion" OnClick="Button1_Click" />
    <asp:Button ID="B_restaurar" runat="server" OnClick="B_restaurar_Click" Text="Restaurar" />
    <br />

  
   
</asp:Content>

