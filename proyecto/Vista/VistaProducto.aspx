﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/VistaProducto.aspx.cs" Inherits="Vista_VistaProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 2px solid #00FFFF;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            width: 418px;
            text-align: center;
            height: 111px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style12 {
            height: 23px;
            width: 410px;
        }
        .auto-style13 {
            width: 410px;
            text-align: center;
            height: 111px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">

            <tr>

            <td style="100%" colspan="3">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Imagenes/pagina_web/imgAtras.png" OnClick="ImageButton2_Click" />
                </td>

        </tr>
            <tr>

            <td style="100%" colspan="3">
                &nbsp;</td>

        </tr>
        
            <td style="100%" colspan="3">
                &nbsp;</td>

        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Image runat="server" BorderColor="Black" BorderStyle="NotSet" Height="110px" Width="173px" ID="Image1" />
            </td>
            <td class="auto-style6">
                <asp:Image ID="Image2" runat="server" BorderStyle="None" Height="110px" Width="173px" />
            </td>
            <td class="auto-style13">
                <asp:Image ID="Image3" runat="server" Height="110px" Width="173px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="2">
                <h1 class="col50">
                    <asp:Label ID="L_Nombre" runat="server"></asp:Label>
                </h1>
            </td>
            <td class="auto-style12">
                <asp:Label ID="L_Precio" runat="server" CssClass="auto-style5" Font-Size="XX-Large"></asp:Label></td>
        </tr>
        <tr>
            <td class="col50" colspan="3">
                <asp:Button ID="Button1" runat="server" CssClass="buttonAgg" Text="Agregar al carrito" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

