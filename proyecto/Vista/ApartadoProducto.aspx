<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/ApartadoProducto.aspx.cs" Inherits="Vista_ApartadoProducto" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:DataList ID="DataList1" runat="server" DataSourceID="ODS_inventario" GridLines="Both" BorderColor="Black">
<ItemTemplate>
Nombre:
<asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
<br />
<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Imagen_uno") %>' Width="30%" />
<br />
Cantidad:
<asp:Label ID="CantidadLabel" runat="server" Text='<%# Eval("Cantidad_inventario") %>' />
<br />
Precio:
<asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Precio_venta") %>' />
<br />
<asp:Button ID="CheckBox1" runat="server" Text="Estado"  CommandName='<%# Eval("Nombre") %>' CommandArgument='<%# Eval("Nombre") %>' OnCommand="CheckBox1_Command"/>
<br />
</ItemTemplate>
</asp:DataList>
<asp:ObjectDataSource ID="ODS_inventario" runat="server" SelectMethod="obtenerProductos" TypeName="DAOproducto"></asp:ObjectDataSource>
</asp:Content>