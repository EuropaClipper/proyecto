<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/InterfazProveedores.aspx.cs" Inherits="Vista_InterfazProveedores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2">Proveedores </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2"></td>
        </tr>
        <tr>
            <td>Cedula<asp:TextBox ID="TB_Cedula" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_Cedula" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
            </td>
            <td>Nombre<asp:TextBox ID="TB_Nombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Empresa<asp:TextBox ID="TB_Empresa" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_Empresa" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
            </td>
            <td>Telefono<asp:TextBox ID="TB_Telefono" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="*" ValidationGroup="validar"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Guardar" ValidationGroup="validar" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODSProveedor" HorizontalAlign="Center" DataKeyNames="Id">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Empresa" HeaderText="Empresa" SortExpression="Empresa" />
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                        <asp:BoundField DataField="Session" HeaderText="Session" SortExpression="Session" />
                        <asp:TemplateField HeaderText="Fecha_modificacion" SortExpression="Fecha_modificacion">
                            <EditItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Fecha_modificacion")%>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Fecha_modificacion")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Actualizar" ShowEditButton="True" />
                        <asp:CommandField HeaderText="Eliminar" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ODSProveedor" runat="server" DataObjectTypeName="EProveedor" DeleteMethod="elimnarProveedor" SelectMethod="ObtenerProveedores" TypeName="DAOProveedor" UpdateMethod="actualizarproveedor">
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

