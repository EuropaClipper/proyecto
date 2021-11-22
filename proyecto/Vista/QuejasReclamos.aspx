<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/QuejasReclamos.aspx.cs" Inherits="Vista_QuejasReclamos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .Tabla {
            width: 100%;
        }

        .Col-100 {
            width: 100%;
            text-align: center;
        }

        .Col-50L {
            width: 50%;
            text-align: left;
        }

        .Col-50R {
            width: 50%;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table class="Tabla">
        <tr>
            <td class="Col-100">HACER QUEJAS O RECLAMOS</td>
        </tr>
        <tr>
            <td class="Col-100">&nbsp;</td>
        </tr>
        <tr>
            <td class="Col-100">
                <p>Recuerde que solo puede hacer quejas o reclamos sobre compras hechas en las últimas 24 horas</p>
            </td>
        </tr>
        <tr>
            <td class="Col-100">&nbsp;</td>
        </tr>
    </table>
    <table class="Tabla">
        <tr>
            <td class="Col-100">
                <asp:GridView ID="GV_Quejas" runat="server" AutoGenerateColumns="False" DataSourceID="ODSCompras" CellPadding="4" ForeColor="#333333" GridLines="None" Width="90%" HorizontalAlign="Center" OnRowCommand="GV_Quejas_RowCommand" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Factura" SortExpression="Factura">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Factura") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Productos / Cantidades" SortExpression="Productos_Cantidades">
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
                        <asp:TemplateField HeaderText="hacer queja o reclamo" ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="BQueja" runat="server" CommandArgument='<%# Bind("Factura") %>' CommandName="HQueja" Text="Redactar" />
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
                <asp:ObjectDataSource ID="ODSCompras" runat="server" SelectMethod="ObtenerComprasQuejas" TypeName="DAOPedidos">
                    <SelectParameters>
                        <asp:SessionParameter Name="usuario" SessionField="user" Type="Object" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="Col-100">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="Col-100">
                <asp:Panel ID="PQuejas" runat="server" Visible="False">
                    <table class="Tabla">
                        <tr>
                            <td colspan="2">
                                <p><strong>REDACTE SU QUEJA O RECLAMO</strong></p>
                            </td>
                        </tr>
                        <tr>
                            <td class="Col-50R">Numero de factura: </td>
                            <td class="Col-50L">
                                <asp:Label ID="L_NFactura" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="Col-100" colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="Col-100" colspan="2">
                                <asp:TextBox ID="TB_Descripcion" runat="server" MaxLength="500" Rows="7" TextMode="MultiLine" Width="80%"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Desc" runat="server" ControlToValidate="TB_Descripcion" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="validacion"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="Col-100" colspan="2">
                                <asp:RegularExpressionValidator ID="REV_Desc" runat="server" ControlToValidate="TB_Descripcion" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Za-z ,.0-9]{3,30}" ValidationGroup="validacion">Este campo sólo permite caracteres alfabéticos, numericos, . y ,</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="Col-100" colspan="2">
                                <img id="img" alt="" style="width: 300px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="Col-50R">Cargue una imagen </td>
                            <td class="Col-50L">
                                <asp:FileUpload ID="FU_Img" runat="server" onchange="showimagepreview(this)" />
                            </td>
                        </tr>
                        <tr>
                             <td class="Col-100" colspan="2">&nbsp;</td>
                        </tr>

                        <tr>
                            <td class="Col-100" colspan="2">
                                <asp:Button ID="B_Enviar" runat="server" CssClass="buttonAgg" OnClick="B_Enviar_Click" Text="Enviar" ValidationGroup="validacion" />
                            </td>
                        </tr>
                        <tr>
                            <td class="Col-100" colspan="2">&nbsp;</td>
                        </tr>

                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    <script type="text/javascript">
        function showimagepreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    document.getElementsByTagName("img")[0].setAttribute("src", e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</asp:Content>

