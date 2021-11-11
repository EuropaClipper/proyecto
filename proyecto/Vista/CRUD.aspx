<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/CRUD.aspx.cs" Inherits="Vista_CRUD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">MODIFICAR INVENTARIO </td>
        </tr>
        <tr>
            <td>
                <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id,Nombre,Descripcion,Precio_venta,Id_proveedor,Id_categoria,Estado,Session,Fecha_modificacion,Imagen_uno,Imagen_dos,Imagen_tres,Nombre_categoria,Cantidad_inventario" DataSourceID="ObjectDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Cantidad_inventario" HeaderText="Cantidad_inventario" SortExpression="Cantidad_inventario" />
                            <asp:CommandField HeaderText="Actualizar" ShowEditButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="EProducto" SelectMethod="obtenerProductos" TypeName="DAOProducto" UpdateMethod="actualizarProducto"></asp:ObjectDataSource>
                </div>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

