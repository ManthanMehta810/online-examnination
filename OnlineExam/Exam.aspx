<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="OnlineExam.Exam" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style4
    {
        width: 100%;
    }
    .style5
    {
    }
        .style6
        {
            width: 244px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style4">
    <tr>
        <td class="style6" align="right">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="#6600FF" Text="WELCOME"></asp:Label>
        </td>
        <td>
            &nbsp;
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                ForeColor="Red" Text="Label"></asp:Label>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6" align="right">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style6">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF0066" 
                Text="Select Subject Name:"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="Dsub" runat="server" Font-Bold="True" 
                ForeColor="#0000CC" Height="24px" Width="160px" 
                onselectedindexchanged="Dsub_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style6">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#FF0066" 
                Text="Select Test Name:"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="Dtest" runat="server" Font-Bold="True" 
                ForeColor="#0000CC" Height="30px" Width="160px" AutoPostBack="True">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="style5" colspan="2">
            <asp:Button ID="btn_starttest" runat="server" Font-Bold="True" 
                Font-Names="Sylfaen" Font-Size="Large" Font-Underline="False" 
                ForeColor="Maroon" Height="38px" Text="START TEST" Width="137px" 
                onclick="btn_starttest_Click" />
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td>
    <asp:Button ID="Btnlogout" runat="server" onclick="Btnlogout_Click" 
        Text="Log Out" />
                            </td>
    </tr>
</table>
</asp:Content>
