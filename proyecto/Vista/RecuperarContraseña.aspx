<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/RecuperarContraseña.aspx.cs" Inherits="Vista_RecuperarContraseña" %>

<script runat="server">

    protected void LoginButton_Click(object sender, EventArgs e)
    {

    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td style="width: 100%" colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 100%" colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 100%" colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33%">&nbsp;</td>
            <td style="width: 33%; justify-items: center">
               
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LayoutTemplate>
                        <table cellpadding="4" cellspacing="0" style="border-collapse: collapse;">
                            <tr>
                                <td>
                                    <table cellpadding="0" style="width: 100%;">
                                        <tr>
                                            <td align="center" colspan="2" style="color: White; background-color: #5D7B9D; font-size: 1em; font-weight: bold;">RECUPERA TU CUENTA </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                Ingrese tu correo electronico</td>
                                            <td>
                                                <asp:TextBox ID="UserName" runat="server" Font-Size="1em" Width="317px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El correo es  obligatorio." ToolTip="el correo es obligatorio." ValidationGroup="Login">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="col50">
                                                <asp:Button ID="LoginButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Verdana" Font-Size="Small" ForeColor="#284775" OnClick="LoginButton_Click" Text="ENVIAR" ValidationGroup="Login" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="color: Red;">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="color: Red;">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="2">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                    <TextBoxStyle Font-Size="0.8em" />
                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                </asp:Login>
            </td>
            <td style="width: 33%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width:100%" colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width:100%" colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width:100%" colspan="3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

