<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/VistaCarrito.aspx.cs" Inherits="Vista_VistaCarrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style1">
        <tr>
            <td style="width:10%">&nbsp;</td>
            <td style="width:80%">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="DAOCarrito" RepeatDirection="Horizontal" Width="100%">
                    <ItemTemplate>
                        <table style="width: 100%">
                            <tr>
                                <td colspan="2" style="width: 100%;text-align:center">
                                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="width: 100%;text-align:center;height:15em">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imagen_uno") %>' Width="50%" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width:50%;text-align:end">Cantidad</td>
                                <td style="width:50%;text-align:start">
                                    <asp:Label ID="Label2" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="width:100%;text-align:center">&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:ObjectDataSource ID="DAOCarrito" runat="server" SelectMethod="obtenerCarrito" TypeName="DAOCarrito">
                    <SelectParameters>
                        <asp:Parameter Name="Carrito" Type="Object" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td style="width:10%">&nbsp;</td>
        </tr>
    </table>
    
    </asp:Content>

