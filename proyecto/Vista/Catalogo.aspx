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
            <td style="width: 100%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 100%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 100%">
                <asp:ObjectDataSource ID="ODSCatalogo" runat="server" SelectMethod="obtenerProductos" TypeName="DAOProducto"></asp:ObjectDataSource>
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
                                <td style="width:50%;text-align:end">Precio:</td>
                                <td style="width:50%;text-align:start">
                                    <asp:Label ID="Precio_ventaLabel" runat="server" Text='<%# Eval("Precio_venta", "{0}") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width:50%;text-align:end">Categoria:</td>
                                <td style="width:50%;text-align:start">
                                    <asp:Label ID="Nombre_categoriaLabel" runat="server" Text='<%# Eval("Nombre_categoria") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width:50%;text-align:end">Cantidad</td>
                                <td style="width:50%;text-align:start">
                                    <asp:TextBox ID="TB_Cantidad" runat="server" MaxLength="3" TextMode="Number" Width="3em"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFV_Cantidad" runat="server" ControlToValidate="TB_Cantidad" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ValidationGroup='<%# Container.ItemIndex +1 %>'></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:100%;text-align:center" colspan="2">
                                    <asp:LinkButton ID="LB_VerDetalles" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="detalles">Ver detalles</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:100%" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width:100%;text-align:center" colspan="2">
                                    <asp:Button ID="B_Carrito" runat="server" CssClass="buttonAgg" Text="Agregar al carrito" CommandArgument='<%# Eval("id") %>' CommandName="carrito" ValidationGroup= '<%# Container.ItemIndex +1 %>' />
                                </td>
                            </tr>
                        </table>
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="No es posible agegar esta cantidad al carrito. ¡¡¡verifique!!!" ValidationGroup= '<%# Container.ItemIndex +1 %>' MinimumValue="1" MaximumValue="1" ControlToValidate="TB_Cantidad"></asp:RangeValidator>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
