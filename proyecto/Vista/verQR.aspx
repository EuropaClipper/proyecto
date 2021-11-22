<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/verQR.aspx.cs" Inherits="Vista_verQR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .Tabla {
            width: 100%;
        }
        .Col-100 {
            width: 100%;
            text-align: center;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="Tabla">
        <tr>
            <td class="Col-100">QUEJAS Y RECLAMOS</td>
        </tr>
        <tr>
            <td class="Col-100">&nbsp;</td>
        </tr>
        <tr>
            <td class="Col-100">
                <asp:Label ID="L_NumQuejas" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="Col-100">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GV_Quejas" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="95%" AutoGenerateColumns="False" DataSourceID="ODSQuejas" AllowPaging="True" OnRowCommand="GV_Quejas_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="#Factura" SortExpression="Id_Factura">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id_Factura") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripción" SortExpression="Descripcion" />
                        <asp:TemplateField HeaderText="Imagen" SortExpression="Imagen">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imagen") %>' Width="20em" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="NombreEstado" HeaderText="Estado" SortExpression="NombreEstado" />
                        <asp:BoundField DataField="NombreComprador" HeaderText="Comprador" SortExpression="NombreComprador" />
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                        <asp:TemplateField ShowHeader="False" HeaderText="Cambiar estado">
                            <ItemTemplate>
                                <asp:Button ID="BCEstado" runat="server" Text="Revisar" CommandArgument='<%# Bind("Id") %>' CommandName="revisar" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <EmptyDataTemplate>
                        No se han hecho quejas
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ODSQuejas" runat="server" SelectMethod="verQuejasreclamos" TypeName="DAOQuejasReclamos"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

