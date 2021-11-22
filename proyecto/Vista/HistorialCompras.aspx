<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/HistorialCompras.aspx.cs" Inherits="Vista_HistorialCompras" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%">
        <tr>
            <td style="width:100%;text-align:center;font-size:xx-large">Historial de compras</td>
        </tr>
        <tr>
            <td style="width:100%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width:100%">
                <asp:GridView ID="GV_HCompras" runat="server" AutoGenerateColumns="False" DataSourceID="ODSCompras" CellPadding="4" ForeColor="#333333" GridLines="None" Width="90%" HorizontalAlign="Center" OnRowCommand="GV_HCompras_RowCommand">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Factura" SortExpression="Factura">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Factura") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Productos_Cantidades" SortExpression="Productos_Cantidades">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Columns="50" ReadOnly="True" Rows="5" Text='<%# Bind("Productos_Cantidades") %>' TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total" SortExpression="Total">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Total", "{0:C}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                        <asp:TemplateField HeaderText="Ver factura">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandArgument='<%# Bind("Factura") %>' CommandName="Select" Text="Ver" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <EmptyDataTemplate>
                        <div class="auto-style1">
                            No ha realizado compras.</div>
                    </EmptyDataTemplate>
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
                <asp:ObjectDataSource ID="ODSCompras" runat="server" SelectMethod="ObtenerComprasUsuario" TypeName="DAOPedidos">
                    <SelectParameters>
                        <asp:SessionParameter Name="usuario" SessionField="user" Type="Object" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td style="width:100%">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

