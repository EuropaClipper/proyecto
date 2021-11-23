<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/VistaCarrito.aspx.cs" Inherits="Vista_VistaCarrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table style="width: 100%">
        <tr>
            <td style="width: 10%">&nbsp;</td>
            <td style="width: 80%; text-align: center">
                <h1>Carrito de compras</h1>
            </td>
            <td style="width: 10%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 10%">&nbsp;</td>
            <td style="width: 80%; text-align: center">
                &nbsp;</td>
            <td style="width: 10%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 10%">&nbsp;</td>
            <td style="width: 80%; text-align: center">
                Tiene 5 minutos para completar su compra</td>
            <td style="width: 10%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 10%">&nbsp;</td>
            <td style="width: 80%; text-align: center">
                <asp:ListView ID="LV_Carrito" runat="server" DataKeyNames="Id" DataSourceID="ObjectDataSource1" GroupItemCount="3" OnDataBound="LV_Carrito_DataBound" OnItemCommand="LV_Carrito_ItemCommand">
                    <EmptyDataTemplate>
                        <table runat="server" style="width: 100%">
                            <tr>
                                <td>No se han agregado productos al carrito.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <ItemTemplate>
                        <td style="width: 33.33%; border: solid; border-width: 0.5px">
                            <table runat="server">
                                <tr>
                                    <td style="width: 40%">
                                        <asp:Label ID="nombre" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label>
                                        <br />
                                        <br />
                                        Precio:
                                        <asp:Label ID="precio" runat="server" Text='<%# Eval("Precio_venta", "{0:C}") %>'></asp:Label>
                                        <br />
                                        Cantidad:
                                        <asp:Label ID="cantidad" runat="server" Text='<%# Eval("Cantidad_inventario") %>'></asp:Label>
                                    </td>
                                    <td style="width: 60%">
                                        <asp:Image ID="imagen" runat="server" ImageUrl='<%# Eval("Imagen_uno") %>' Width="40%" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="width:100%;text-align:center">
                                        <asp:Button ID="eliminar" runat="server" CssClass="buttonQuitar" CommandArgument='<%# Eval("Id") %>' Text="Quitar de carrito" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="ProductosEnCarrito" TypeName="DAOCarrito">
                    <SelectParameters>
                        <asp:SessionParameter Name="user" SessionField="user" Type="Object" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td style="width: 10%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 10%">&nbsp;</td>
            <td style="width: 80%">Total de compra: 
                <asp:Label ID="L_Total" runat="server"></asp:Label>
            </td>
            <td style="width: 10%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 10%">&nbsp;</td>
            <td style="width: 80%">&nbsp;</td>
            <td style="width: 10%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 10%">&nbsp;</td>
            <td style="width: 80%;text-align:center">
                <asp:Button ID="B_Comprar" runat="server" Text="Realizar compra" CssClass="buttonAgg" OnClick="B_Comprar_Click" />
            </td>
            <td style="width: 10%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 10%">&nbsp;</td>
            <td style="width: 80%">&nbsp;</td>
            <td style="width: 10%">&nbsp;</td>
        </tr>
    </table>

</asp:Content>

