<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/CRUD.aspx.cs" Inherits="Vista_CRUD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            text-align: left;
            height: 31px;
        }
        .auto-style5 {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">MODIFICAR INVENTARIO </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <table class="auto-style1">
                    <tr>
                        <td colspan="3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">NombreP<asp:TextBox ID="TB_NombreP" runat="server" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_NombreP" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style4">Descripcion<asp:TextBox ID="TB_Descripcion" runat="server" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_Descripcion" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style4">NPoveedor<asp:TextBox ID="TB_NProveedor" runat="server"  Width="170px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_NProveedor" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Categoria<asp:TextBox ID="TB_Categoria" runat="server" Width="193px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_Categoria" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style3">Cantidad Inventario<asp:TextBox ID="TB_CantidaInventario" runat="server" TextMode="Number" Width="150px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TB_CantidaInventario" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style3">PrecioVenta<asp:TextBox ID="TB_PrecioVenta" runat="server" TextMode="Number" Width="165px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TB_PrecioVenta" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Imagen Uno<asp:FileUpload ID="FU_Foto" runat="server" Width="200px" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="FU_Foto" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style3">Imagen Dos<asp:FileUpload ID="FU_Foto2" runat="server" Width="200px" />
                        </td>
                        <td class="auto-style3">Imagen Tres<asp:FileUpload ID="FU_Foto3" runat="server" Width="200px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Fecha<asp:TextBox ID="TB_Fecha" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TB_Fecha" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click" ValidationGroup="validar" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id,Nombre,Descripcion,Precio_venta,Id_proveedor,Id_categoria,Estado,Session,Fecha_modificacion,Imagen_uno,Imagen_dos,Imagen_tres,Nombre_categoria,Cantidad_inventario,id_inventario,nombre_proveedor" DataSourceID="ODSCRUD">
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                        <asp:BoundField DataField="Precio_venta" HeaderText="Precio_venta" SortExpression="Precio_venta" />
                        <asp:CheckBoxField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                        <asp:TemplateField HeaderText="Fecha_modificacion" SortExpression="Fecha_modificacion">
                            <EditItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Fecha_modificacion")%>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Fecha_modificacion")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Imagen_uno" SortExpression="Imagen_uno">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imagen_uno") %>' Width="40%" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Imagen_dos" SortExpression="Imagen_dos">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Imagen_dos") %>' Width="40%" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Imagen_tres" SortExpression="Imagen_tres">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload3" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image3" runat="server" Width="40%" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Nombre_categoria" HeaderText="Nombre_categoria" SortExpression="Nombre_categoria" />
                        <asp:BoundField DataField="Cantidad_inventario" HeaderText="Cantidad_inventario" SortExpression="Cantidad_inventario" />
                        <asp:BoundField DataField="nombre_proveedor" HeaderText="nombre_proveedor" SortExpression="nombre_proveedor" />
                        <asp:CommandField HeaderText="Actualizar" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ODSCRUD" runat="server" DataObjectTypeName="EProducto" SelectMethod="obtenerProductos" TypeName="DAOProducto" UpdateMethod="actualizar"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

