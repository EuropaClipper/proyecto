<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Catalogo.aspx.cs" Inherits="Vista_Catalogo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 100%; text-align: center">
                <asp:Label Style="font-size: x-large" runat="server" Text="Catalogo de productos"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 100%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 100%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 100%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 100%">
                <asp:Localize ID="Localize1" runat="server"></asp:Localize>
                <asp:Localize ID="Localize2" runat="server"></asp:Localize>
                <asp:ObjectDataSource ID="ODSCatalogo" runat="server" SelectMethod="obtenerProductos" TypeName="DAOProducto"></asp:ObjectDataSource>
                <asp:DataList ID="DL_Productos" runat="server" CellPadding="5" CellSpacing="5" DataKeyField="Id" DataSourceID="ODSCatalogo" GridLines="Both" HorizontalAlign="Center" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DL_Productos_ItemCommand">
                    <ItemStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                        &nbsp;<asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                        <br />
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imagen_uno") %>' Width="200px" />
                        <br />
                        Precio:
                        <asp:Label ID="Precio_ventaLabel" runat="server" Text='<%# Eval("Precio_venta") %>' />
                        <br />
                        Categoria:
                        <asp:Label ID="Nombre_categoriaLabel" runat="server" Text='<%# Eval("Nombre_categoria") %>' />
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server">Ver detalles</asp:LinkButton>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Agregar al carrito" />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
