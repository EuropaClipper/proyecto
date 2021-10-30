<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/VistaCarrito.aspx.cs" Inherits="Vista_VistaCarrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" DataSourceID="DAOCarrito">
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
                                <td style="width:50%;text-align:end">Cantidad</td>
                                <td style="width:50%;text-align:start">
                                    <asp:Label ID="Label2" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:100%;text-align:center" colspan="2">
                                    &nbsp;</td>
                            </tr>
                        </table>
        </ItemTemplate>
    </asp:DataList>
    
    <asp:ObjectDataSource ID="DAOCarrito" runat="server" SelectMethod="obtenerCarrito" TypeName="DAOCarrito">
        <SelectParameters>
            <asp:Parameter Name="Carrito" Type="Object" />
        </SelectParameters>
    </asp:ObjectDataSource>
    
    </asp:Content>

