<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Filtros.aspx.cs" Inherits="Vista_Filtros" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%">
        <tr>
            <td style="width:100%;text-align:center" colspan="4" style="font-size:xx-large">Filtrar productos del catalogo</td>
        </tr>
        <tr>
            <td style="width:100%" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td style="width:100%;text-align:left" colspan="4">Filtrar productos por:</td>
        </tr>
        <tr>
            <td style="width:25%">
                <asp:CheckBox ID="CB_Nombre" runat="server" OnCheckedChanged="CB_Nombre_CheckedChanged" Text="NOMBRE" AutoPostBack="True" />
            </td>
            <td style="width:25%;text-align:center">
                <asp:TextBox ID="TB_Nombre" runat="server" Width="90%" Enabled="False" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" ControlToValidate="TB_Nombre" Enabled="False" ErrorMessage="*" ValidationGroup="VG_Filtros" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="width:50%" colspan="2">
            <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ForeColor="Red" ValidationGroup="VG_Filtros" SetFocusOnError="True" ValidationExpression="^[A-Za-z ]{1,45}">Este campo sólo permite caracteres alfabéticos</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width:25%">
                <asp:CheckBox ID="CB_Precio" runat="server" Text="PRECIO" AutoPostBack="True" OnCheckedChanged="CB_Precio_CheckedChanged" />
            </td>
            <td style="width:25%;text-align:center">
                <asp:Label ID="Label1" runat="server" Text="MIN"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TB_Min" runat="server" TextMode="Number" Enabled="False" MaxLength="6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_PMin" runat="server" ControlToValidate="TB_Min" Enabled="False" ErrorMessage="*" ValidationGroup="VG_Filtros" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="width:25%;text-align:center">
                <asp:Label ID="Label2" runat="server" Text="MAX"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TB_Max" runat="server" TextMode="Number" Enabled="False" MaxLength="6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_PMax" runat="server" ControlToValidate="TB_Max" Enabled="False" ErrorMessage="*" ValidationGroup="VG_Filtros" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="width:25%"></td>
        </tr>
        <tr>
            <td style="width:25%">
                <asp:CheckBox ID="CB_Categoria" runat="server" OnCheckedChanged="CB_Categoria_CheckedChanged" Text="CATEGORIA" AutoPostBack="True" />
            </td>
            <td style="width:25%;text-align:center">
                <asp:DropDownList ID="DDL_Categorias" runat="server" Width="90%" Enabled="False" DataSourceID="ODS_Categorias" DataTextField="Categoria" DataValueField="Id">
                </asp:DropDownList>
                <asp:RangeValidator ID="RV_DDL" runat="server" ControlToValidate="DDL_Categorias" ErrorMessage="*" MaximumValue="20" MinimumValue="1" Type="Integer" ValidationGroup="VG_Filtros" Enabled="False" ForeColor="Red"></asp:RangeValidator>
                <asp:ObjectDataSource ID="ODS_Categorias" runat="server" SelectMethod="obtenerCategoriasDDL" TypeName="DAOProducto"></asp:ObjectDataSource>
            </td>
            <td style="width:50%" colspan="2"></td>
        </tr>
        <tr>
            <td colspan="4" style="width:100%;text-align:center">
                <asp:Button ID="B_Buscar" runat="server" Text="BUSCAR" ValidationGroup="VG_Filtros" OnClick="B_Buscar_Click"/>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="width:100%;text-align:center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="width:100%;text-align:center">
                <asp:DataList ID="DL_Filtros" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="20" DataKeyField="Id" DataSourceID="ODSPFiltrados" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Center" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DL_Filtros_ItemCommand">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
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
                                    <asp:Label ID="Precio_ventaLabel" runat="server" Text='<%# Eval("Precio_venta", "${0:N}") %>' />
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
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:ObjectDataSource ID="ODSPFiltrados" runat="server" SelectMethod="obtenerProductosFiltrados" TypeName="DAOProducto">
                    <SelectParameters>
                        <asp:SessionParameter Name="nombre" SessionField="nombre" Type="String" />
                        <asp:SessionParameter Name="precio" SessionField="precio" Type="Object" />
                        <asp:SessionParameter Name="categoria" SessionField="categoria" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

