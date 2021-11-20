<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/QuejasReclamos.aspx.cs" Inherits="Vista_QuejasReclamos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="blb_nombre" runat="server" Text="Nombre"></asp:Label>
    <asp:TextBox class="txt_form" ID="TextBox_nombre"  placeholder = "Nombre" runat="server"></asp:TextBox>
    <asp:Label ID="blb_email" runat="server" Text="Email"></asp:Label>
    <asp:TextBox class="txt_form" ID="TextBox_email"  placeholder = "Email" runat="server"></asp:TextBox>
    <asp:Label ID="blb_mensaje" runat="server" Text="Mensaje"></asp:Label>
    <asp:TextBox class="txt_form" ID="TextBox_mensaje"  placeholder = "Mensaje" runat="server"></asp:TextBox>
            
          <br />
    <img  ID="img" alt="" style="width:300px" />
    <br />
            
            <div class="bt_fu">
                <asp:FileUpload ID="FileUpload1" runat="server" onchange="showimagepreview(this)" />
                &nbsp;
                <br />
                <br />
                <asp:Button ID="Button_guardar" runat="server" Text="Guardar" OnClick="Button_guardar_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <ItemTemplate>
                        
                    </ItemTemplate>
            </div>
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

