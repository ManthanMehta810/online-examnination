<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="OnlineExam.Results" Title="Untitled Page" %>
<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            text-align: center;
        }
        .style5
        {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 class="style4">Results</h2>
    <p class="style5">&nbsp;</p>
    <p class="style5">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Show" />
    </p>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
        AutoDataBind="true" DisplayGroupTree="False" DisplayToolbar="False"></CR:CrystalReportViewer>
    <p>
    </p>
</asp:Content>
