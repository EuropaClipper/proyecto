<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/QuejasReclamos.aspx.cs" Inherits="Vista_QuejasReclamos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="blb_nombre" runat="server" Text="Nombre"></asp:Label>
    <asp:TextBox class="txt_form" ID="TextBox_nombre"  placeholder = "Nombre" runat="server"></asp:TextBox>
    <asp:Label ID="blb_email" runat="server" Text="Email"></asp:Label>
    <asp:TextBox class="txt_form" ID="TextBox_email"  placeholder = "Email" runat="server"></asp:TextBox>
    <asp:Label ID="blb_mensaje" runat="server" Text="Mensaje"></asp:Label>
    <asp:TextBox class="txt_form" ID="TextBox_mensaje"  placeholder = "Mensaje" runat="server"></asp:TextBox>
            
          <br />
    <br />
            
          <div class="todo">
            <div class="bt_fu">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Button_guardar" runat="server" Text="Guardar" OnClick="Button_guardar_Click" />
            &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("Direccion") %>' ImageUrl='<%# Eval("Direccion") %>' ImageWidth="100px" Text='<%# Eval("Direccion") %>' runat="server"></asp:HyperLink>
                    </ItemTemplate>
            </div>
            <div class="c_datalist ">
                </asp:Content>

