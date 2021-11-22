<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/Quienes_somos.aspx.cs" Inherits="Vista_Quienes_somos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 421px;
        }

        .auto-style5 {
            margin-left: 424px;
        }

        .auto-style6 {
            margin-left: 691px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="box-sizing: border-box; font-family: &quot; segoe ui&quot; , system-ui, &quot; apple color emoji&quot; , &quot; segoe ui emoji&quot; , sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;">
        <p style="margin-bottom: 11px; text-align: justify;">
            &nbsp;
        </p>
        <article>
            <p class="auto-style5">&nbsp;</p>
            <p class="auto-style6">QUIENES SOMOS</p>
            <p class="auto-style5">MISION</p>
            <p class="auto-style5">Nuestra misión es poner al alcance de nuestros clientes los mejores productos para sus necesidades diarias, su bienestar y su salud. Nos diferencia la calidad de nuestros productos frescos. Bajo el eslogan "ventas en línea JP&M" resumimos nuestro compromiso fundamental: proporcionar un servicio cercano, atento y de confianza..</p>
        </article>
    </div>
    <div class="contenedor_Vision">
        <article>
            <p class="auto-style4">VISION</p>
        </article>
    </div>
    <article>
        <p class="auto-style4">La micro tienda “ventas en línea JP&M” será reconocida a nivel nacional e internacional por la calidad de sus productos y su aporte a las personas a las cuales deleitaremos cada vez más, ser una de las mejores tiendas en toda el área.</p>
    </article>
    <table style="width:100%">
        <tr>
            <td style="width:100%">

            </td>
        </tr>
        <tr>
            <td style="width:100%;text-align:center">
                <asp:Button ID="B_MasInfo" runat="server" Text="Ver más información del negocio" PostBackUrl="~/Vista/InformacionNegocio.aspx" />
            </td>
        </tr>
    </table>
</asp:Content>

