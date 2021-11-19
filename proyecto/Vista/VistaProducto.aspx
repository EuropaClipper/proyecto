<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/VistaProducto.aspx.cs" Inherits="Vista_VistaProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20%;
        }
        .auto-style3 {
            height: 20%;
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 100%;
            height: 178px;
        }
        .auto-style7 {
            text-align: left;
        }

        .auto-style12 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style14 {
            font-size: large;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td class="col20" colspan="2">
                <table class="auto-style5">
                    <tr>
                        <td>
                            <asp:ImageButton ID="img1" runat="server" ImageUrl="~/Imagenes/productos/cocacola.jpg" OnClick="ImageButton1_Click" Width="30%" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="img2" runat="server" ImageUrl="~/Imagenes/productos/cocacola.jpg" OnClick="ImageButton2_Click" Width="30%" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="img3" runat="server" ImageUrl="~/Imagenes/productos/cocacola.jpg" OnClick="ImageButton3_Click" Width="30%" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="col40" colspan="2">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <br />
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/productos/cocacola.jpg" Width="50%" />
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagenes/productos/cocacola2.jpg" Width="50%" />
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Imagenes/productos/galletas1.jpg" Width="50%" />
                    </asp:View>
                </asp:MultiView>
            </td>
            <td class="col20">
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style12">Nombre</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="L_nombre" runat="server" CssClass="auto-style14" Text="Coca-Cola"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style12">Precio</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="L_precio" runat="server" CssClass="auto-style14" Text="10000"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style12">Descripcion</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="L_des" runat="server" CssClass="auto-style14" Text="Coca-Colaes una bebida gaseosa con sabor a cola, de color caramelo oscuro, sin sedimentos ni turbidez. Sabor a cola y está fabricada con saborizantes naturales, incluyendo cafeína"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td class="col20">
                &nbsp;</td>
            <td class="col20" colspan="2">
                <span class="auto-style14">Cantidad</span><asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style14" Width="100px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style14" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
            </td>
            <td class="col20">
                <asp:Button ID="Button1" runat="server" CssClass="buttonAgg" OnClick="Button1_Click" Text="Agregar Carrito " ValidationGroup="validar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="5">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

