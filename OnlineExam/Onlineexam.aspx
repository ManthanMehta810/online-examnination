<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Onlineexam.aspx.cs" Inherits="OnlineExam.Onlineexam" Title="Untitled Page" %>
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
        .style6
        {
            width: 100%;
        }
        .style7
        {
            font-size: medium;
            color: #2571AB;
        }
        .style8
        {
            font-size: large;
            color: #2571AB;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 class="style5">Welcome
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Btnlogout" runat="server" onclick="Btnlogout_Click" 
        Text="Log Out" />
                            </h2>
                            <h2 class="style4">Online Exam</h2>
    <p>
        <span class="style8">Question</span>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" style="font-size: large; color: #2571AB" 
            Text="Label"></asp:Label>
    </p>
    <table class="style6">
        <tr class="style7">
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton2" runat="server" 
                    oncheckedchanged="RadioButton2_CheckedChanged" />
            </td>
        </tr>
        <tr class="style7">
            <td>
                <asp:RadioButton ID="RadioButton3" runat="server" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton4" runat="server" />
            </td>
        </tr>
    </table>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Next" Width="69px" />
    </p>
</asp:Content>
