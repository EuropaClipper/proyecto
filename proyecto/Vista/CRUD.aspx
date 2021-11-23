<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/CRUD.aspx.cs" Inherits="Vista_CRUD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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

        .auto-style5 {
            text-align: justify;
            height: 22px;
        }
        .auto-style6 {
            height: 96px;
        }
        .auto-style7 {
            width: 313px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                        <td class="auto-style3" colspan="3">Agregar producto</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Proveedor<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ODSProveedor" DataTextField="Nombre" DataValueField="Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Seleccionar" ForeColor="Red" MaximumValue="100" MinimumValue="1" Type="Integer" ValidationGroup="validar"></asp:RangeValidator>
                            <asp:ObjectDataSource ID="ODSProveedor" runat="server" SelectMethod="obtenerProvedoresDDL" TypeName="DAOProveedor"></asp:ObjectDataSource>
                        </td>
                        <td class="auto-style3">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Nuevo" />
                        </td>
                        <td class="auto-style3">
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Existente" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="3">
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server"></asp:View>
                                <asp:View ID="View2" runat="server">
                                    <table class="auto-style1">
                                        <tr>
                                            <td>Nombre&nbsp;<asp:TextBox ID="TB_Nombre" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                                            </td>
                                            <td class="auto-style7">Descripcion<asp:TextBox ID="TB_Descripcion" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_Descripcion" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                                            </td>
                                            <td>Precio Venta<asp:TextBox ID="TB_Precio_venta" runat="server" TextMode="Number"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_Precio_venta" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Precio Compra<asp:TextBox ID="TB_Precio_Compra" runat="server" TextMode="Number"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TB_Precio_Compra" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                                            </td>
                                            <td class="auto-style7">Cantidad<asp:TextBox ID="TB_Cantidad" runat="server" TextMode="Number"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_Cantidad" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                                            </td>
                                            <td>Categoria<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Categoria" DataValueField="Id">
                                                </asp:DropDownList>
                                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Seleccione" ForeColor="Red" MaximumValue="100" MinimumValue="1" Type="Integer" ValidationGroup="validar"></asp:RangeValidator>
                                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="obtenerCategoriasDDL" TypeName="DAOCategoria"></asp:ObjectDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Imagen 1<asp:FileUpload ID="FU_Foto" runat="server" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FU_Foto" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                                            </td>
                                            <td class="auto-style7">Imagen 2<asp:FileUpload ID="FU_Foto2" runat="server" />
                                            </td>
                                            <td>Imagen 3<asp:FileUpload ID="FU_Foto3" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View3" runat="server">
                                    <table class="auto-style1">
                                        <tr>
                                            <td class="auto-style6">
                                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                    <ContentTemplate>
                                                        Producto<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ODSProducto" DataTextField="Nombre" DataValueField="Id">
                                            </asp:DropDownList>
                                                        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Seleccionar" ForeColor="Red" MaximumValue="100" MinimumValue="1" Type="Integer" ValidationGroup="validar"></asp:RangeValidator>
                                                <asp:ObjectDataSource ID="ODSProducto" runat="server" SelectMethod="obtenerProductoDDL" TypeName="DAOProducto">
                                                    <SelectParameters>
                                                        <asp:SessionParameter Name="idProveedor" SessionField="id" Type="String" />
                                                    </SelectParameters>
                                                </asp:ObjectDataSource>
                                                    </ContentTemplate>
                                                    <Triggers>
                                                        <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged" />
                                                    </Triggers>
                                                </asp:UpdatePanel>
                                            </td>
                                            <td class="auto-style6">Cantidad<asp:TextBox ID="TB_Cantidad2" runat="server" TextMode="Number"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TB_Cantidad2" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                                            </td>
                                            <td class="auto-style6">Precio Venta<asp:TextBox ID="TB_Precio_venta2" runat="server" TextMode="Number"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TB_Precio_venta2" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                                            </td>
                                            <td class="auto-style6">Precio Compra<asp:TextBox ID="TB_PCmpra2" runat="server" TextMode="Number"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TB_PCmpra2" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                            </asp:MultiView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
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
                        <asp:TemplateField HeaderText="Nombre" SortExpression="Nombre">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>

                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>

                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Descripcion" SortExpression="Descripcion">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Descripcion") %>'></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>

                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>

                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Categoria" SortExpression="Nombre_categoria">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Categoria" DataValueField="Id">
                                </asp:DropDownList>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Seleccione" ForeColor="Red" MaximumValue="100" MinimumValue="1" Type="Integer" ValidationGroup="val"></asp:RangeValidator>
                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="obtenerCategoriasDDL" TypeName="DAOCategoria"></asp:ObjectDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Nombre_categoria") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Precio Venta" SortExpression="Precio_venta">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Precio_venta") %>'></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>

                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Precio_venta", "{0:C}") %>'></asp:Label>

                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Precio Compra" SortExpression="precio_compra">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("precio_compra") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("precio_compra") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Cantidad en inventario" SortExpression="Cantidad_inventario">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Cantidad_inventario") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Cantidad_inventario") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Proveedor" SortExpression="nombre_proveedor">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ODSProveedor" DataTextField="Nombre" DataValueField="Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Editar" ForeColor="Red" MaximumValue="100" MinimumValue="1" Type="Integer" ValidationGroup="val"></asp:RangeValidator>
                                <asp:ObjectDataSource ID="ODSProveedor" runat="server" SelectMethod="obtenerProvedoresDDL" TypeName="DAOProveedor"></asp:ObjectDataSource>
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
                        <asp:TemplateField HeaderText="Actualizar" ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" ValidationGroup="val"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
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

