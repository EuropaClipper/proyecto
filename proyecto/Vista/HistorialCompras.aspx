<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="HistorialCompras.aspx.cs" Inherits="Vista_HistorialCompras" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

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
                <asp:GridView ID="GV_HCompras" runat="server" AutoGenerateColumns="False" DataSourceID="ODSCompras" CellPadding="4" ForeColor="#333333" GridLines="None" Width="90%" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Factura" HeaderText="Factura" SortExpression="Factura" />
                        <asp:TemplateField HeaderText="Productos_Cantidades" SortExpression="Productos_Cantidades">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Columns="30" Rows="5" Text='<%# Bind("Productos_Cantidades") %>' TextMode="MultiLine"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Columns="50" ReadOnly="True" Rows="5" Text='<%# Bind("Productos_Cantidades") %>' TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total" SortExpression="Total">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Total") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
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

