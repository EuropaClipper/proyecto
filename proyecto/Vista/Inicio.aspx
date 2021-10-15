<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Inicio.aspx.cs" Inherits="Vista_Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        hola visitante
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Vista/IniciarSesion.aspx">iniciar sesion</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Vista/Registro.aspx">registrarse</asp:HyperLink>
    </p>
</asp:Content>

