<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Inicio.aspx.cs" Inherits="Vista_Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            background-color: #CCCCCC;
        }
        .auto-style5 {
            width: 127px;
            height: 62px;
        }
        .auto-style6 {
            background-color: #CCCCCC;
            height: 115px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Vista/IniciarSesion.aspx">iniciar sesion</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Vista/Registro.aspx">registrarse</asp:HyperLink>
    </p>
    <p>
     <br />
    <p>
        &nbsp;<p>
        &nbsp;<p>
        &nbsp;<p>
        &nbsp;<p>
        &nbsp;<p>
        &nbsp;<p>
        &nbsp;<p>
        &nbsp;<p>
        &nbsp;<p>
    <br />

    <center class="auto-style4"><em>
        <br />
        CONTACTENOS</em></center>
    <center class="auto-style6"><em>TELEFONO: 3138465493
        <br />
        <br />
        </em>
        <img alt="contacto" class="auto-style5" src="../Imagenes/pagina_web/contactenos.jpg" /></center>
    <center class="auto-style4"><em>HOARIO DE ATENCIÓN</em></center>
    <center class="auto-style4"><em>Lunes a viernes 7am a  8pm</em></center>
    <center class="auto-style4"><em>Sabado a Domingo  8:30am a  4pm</em></center>
</asp:Content>

