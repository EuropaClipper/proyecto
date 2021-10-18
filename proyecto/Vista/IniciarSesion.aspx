<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/IniciarSesion.aspx.cs" Inherits="Vista_IniciarSesion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td style="width:33%">&nbsp;</td>
            <td style="width:33%;justify-items:center">
                <asp:Login ID="Login" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" OnAuthenticate="Login_Authenticate" Width="100%">
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LayoutTemplate>
                        <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
                            <tr>
                                <td>
                                    <table cellpadding="0" style="width:100%;">
                                        <tr>
                                            <td align="center" colspan="2" style="color:White;background-color:#5D7B9D;font-size:1em; font-weight:bold;">Iniciar sesión</td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nombre de usuario:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="UserName" runat="server" Font-Size="1em"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="Login">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Password" runat="server" Font-Size="1em" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="Login">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:CheckBox ID="RememberMe" runat="server" Text="Recordármelo la próxima vez." />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="color:Red;">
                                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="color:Red;">
                                                <asp:HyperLink ID="H_RContraseña" runat="server" ForeColor="#003366">Recuperar contraseña</asp:HyperLink>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="2">
                                                <asp:Button ID="LoginButton" runat="server"  BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Verdana" Font-Size="Small" ForeColor="#284775" Text="Inicio de sesión" ValidationGroup="Login" />
                                            </td>
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
            <td style="width:33%">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

