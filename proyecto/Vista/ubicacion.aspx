<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/ubicacion.aspx.cs" Inherits="Vista_ubicacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table style="width:100%">
        <tr>
            <td style="font-size:x-large;width:100%"><center><em>UBICACIÓN</td>
        </tr>
        <tr>
            <td style="width: 100%">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align:center;width:100%">
                <div class="mapouter">
                    <div class="gmap_canvas">
                        <iframe width="100%" height="400" id="gmap_canvas" 
                            src="https://maps.google.com/maps?q=4.807549967751974,%20-74.34871883647857&t=&z=13&ie=UTF8&iwloc=&output=embed"
                            frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
                        </iframe>
                        <style>.gmap_canvas {overflow:hidden;background:none!important;height:400px;width:100%;}</style>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td style="width: 100%"></td>
        </tr>
        </table>
</asp:Content>

