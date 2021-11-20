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
                        <td colspan="3" class="auto-style3">Agregar producto</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3" class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Nombre producto <asp:TextBox ID="TB_NombreP" runat="server" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_NombreP" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style4">Descripcion <asp:TextBox ID="TB_Descripcion" runat="server" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_Descripcion" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style4">Nombre proveedor<asp:TextBox ID="TB_NProveedor" runat="server"  Width="170px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_NProveedor" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Categoria&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TB_Categoria" runat="server" Width="193px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_Categoria" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style3">Cantidad Inventario<asp:TextBox ID="TB_CantidaInventario" runat="server" TextMode="Number" Width="150px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TB_CantidaInventario" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style3">PrecioVenta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TB_PrecioVenta" runat="server" TextMode="Number" Width="165px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TB_PrecioVenta" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Imagen Uno&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:FileUpload ID="FU_Foto" runat="server" Width="200px" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="FU_Foto" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style3">Imagen Dos&nbsp; <asp:FileUpload ID="FU_Foto2" runat="server" Width="200px" />
                        </td>
                        <td class="auto-style3">Imagen Tres <asp:FileUpload ID="FU_Foto3" runat="server" Width="200px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
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
                <asp:GridView ID="GV_Inventario" runat="server" AutoGenerateColumns="False" DataKeyNames="Id,Nombre,Descripcion,Precio_venta,Id_proveedor,Id_categoria,Estado,Session,Fecha_modificacion,Imagen_uno,Imagen_dos,Imagen_tres,Nombre_categoria,Cantidad_inventario,id_inventario,nombre_proveedor" DataSourceID="ODSCRUD" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" OnRowUpdating="GridView1_RowUpdating">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CheckBoxField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
<asp:TemplateField HeaderText="Nombre" SortExpression="Nombre"><EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                            
</EditItemTemplate>
<ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                            
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="Descripcion" SortExpression="Descripcion"><EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Descripcion") %>'></asp:TextBox>
                            
</EditItemTemplate>
<ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                            
</ItemTemplate>
</asp:TemplateField>
                        <asp:BoundField DataField="Nombre_categoria" HeaderText="Categoria" SortExpression="Nombre_categoria" />
<asp:TemplateField HeaderText="Precio unidad" SortExpression="Precio_venta"><EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Precio_venta") %>'></asp:TextBox>
                            
</EditItemTemplate>
<ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Precio_venta", "{0:C}") %>'></asp:Label>
                            
</ItemTemplate>
</asp:TemplateField>
                        <asp:TemplateField HeaderText="Cantidad en inventario" SortExpression="Cantidad_inventario">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Cantidad_inventario") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Cantidad_inventario") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Proveedor" SortExpression="nombre_proveedor">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("nombre_proveedor") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("nombre_proveedor") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Imagen" SortExpression="Imagen_uno">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FU_Imagen1" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imagen_uno") %>' Width="40%" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Imagen" SortExpression="Imagen_dos">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FU_Imagen2" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Imagen_dos") %>' Width="40%" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Imagen" SortExpression="Imagen_tres">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FU_Imagen3" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("Imagen_tres") %>' Width="40%" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fecha modificacion" SortExpression="Fecha_modificacion">
                            <EditItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Fecha_modificacion", "{0:d}") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Fecha_modificacion", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Actualizar" ShowEditButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ODSCRUD" runat="server" DataObjectTypeName="EProducto" SelectMethod="obtenerProductos" TypeName="DAOProducto" UpdateMethod="actualizar"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

