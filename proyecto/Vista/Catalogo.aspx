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
            <td style="width: 100%;text-align:center">
                <button class="buttonFiltro" runat="server" id="filtros" onserverclick="filtros_ServerClick" style="vertical-align:middle"><span>Filtrar productos</span></button>
            </td>
        </tr>
        <tr>
            <td style="width: 100%">
                <asp:ObjectDataSource ID="ODSCatalogo" runat="server" SelectMethod="obtenerProductosCatalogo" TypeName="DAOProducto"></asp:ObjectDataSource>
                <asp:DataList ID="DL_Productos" runat="server" CellPadding="5" CellSpacing="5" DataSourceID="ODSCatalogo" GridLines="Both" HorizontalAlign="Center" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DL_Productos_ItemCommand" Width="90%" DataKeyField="Id">
                    <ItemStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                        <table style="width: 100%">
                            <tr>
                                <td  style="width: 100%;text-align:center" colspan="2">
                                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"  style="width: 100%;text-align:center;height:15em" >
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imagen_uno") %>' Width="50%" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width:50%;text-align:end">Precio</td>
                                <td style="width:50%;text-align:start">
                                    <asp:Label ID="Precio_ventaLabel" runat="server" Text='<%# Eval("Precio_venta", "{0:C}") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width:50%;text-align:end">Categoria</td>
                                <td style="width:50%;text-align:start">
                                    <asp:Label ID="Nombre_categoriaLabel" runat="server" Text='<%# Eval("Nombre_categoria") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width:50%;text-align:end">Cantidad disponible</td>
                                <td style="width:50%;text-align:start">
                                    <asp:Label ID="Cantidad_disponible" runat="server" Text='<%# Eval("Cantidad_inventario", "{0}") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:50%;text-align:end">Cantidad</td>
                                <td style="width:50%;text-align:start">
                                    <asp:TextBox ID="TB_Cantidad" runat="server" MaxLength="3" TextMode="Number" Width="4em"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFV_Cantidad" runat="server" ControlToValidate="TB_Cantidad" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ValidationGroup='<%# Container.ItemIndex %>'></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:100%;text-align:center" colspan="2">
                                    <asp:LinkButton ID="LB_VerDetalles" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="detalles">Ver detalles</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:100%" colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width:100%;text-align:center" colspan="2">
                                    <asp:Button ID="B_Carrito" runat="server" CssClass="buttonAgg" Text="Agregar al carrito" CommandArgument='<%# Eval("id") %>' CommandName="carrito" ValidationGroup= '<%# Container.ItemIndex%>' />
                                </td>
                            </tr>
                        </table>
                        <table style="width: 100%">
                            <tr>
                                <td style="text-align:center">
                                    <asp:RangeValidator ID="RV_Cantidad" runat="server" ErrorMessage="No es posible agegar esta cantidad al carrito. ¡¡¡verifique!!!" ValidationGroup= '<%# Container.ItemIndex %>' MinimumValue="1" MaximumValue='<%# Eval("Cantidad_inventario") %>' ControlToValidate="TB_Cantidad" ForeColor="Red" Type="Integer"></asp:RangeValidator>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
