<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="ReporteDia.aspx.cs" Inherits="Vista_ReporteDia" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%">
        <tr>
            <td>

            </td>
        </tr>
        <tr>
            <td>

                <CR:CrystalReportViewer ID="CRV_RDia" runat="server" AutoDataBind="true" ReportSourceID="CRS_RDia" />

            </td>
        </tr>
        <tr>
            <td>

                <CR:CrystalReportSource ID="CRS_RDia" runat="server">
                    <Report FileName="C:\Users\Benzoil M\source\repos\EuropaClipper\proyecto\proyecto\Reportes\ReporteDia.rpt">
                    </Report>
                </CR:CrystalReportSource>

            </td>
        </tr>
        <tr>
            <td>

                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

