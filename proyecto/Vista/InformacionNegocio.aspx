<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/InformacionNegocio.aspx.cs" Inherits="Vista_InformacionNegocio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 23px;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">INFORMACION DEL NEGOCIO</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <div class="auto-style4">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="ODSInformacion" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="NombreNegocio" HeaderText="Nombre Negocio" SortExpression="NombreNegocio" />
                            <asp:BoundField DataField="Tel" HeaderText="Telefono" SortExpression="Tel" />
                            <asp:BoundField DataField="Dir" HeaderText="Direccion" SortExpression="Dir" />
                            <asp:BoundField DataField="Nit" HeaderText="Nit" SortExpression="Nit" />
                            <asp:CommandField EditText="Actualizar" HeaderText="Actualizar" ShowEditButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </div>
                <asp:ObjectDataSource ID="ODSInformacion" runat="server" DataObjectTypeName="EInformacionNegocio" SelectMethod="obtener" TypeName="DAOInformacion" UpdateMethod="actualizarInformacion">
                    <SelectParameters>
                        <asp:Parameter Name="InformacionNegocio" Type="Object" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

