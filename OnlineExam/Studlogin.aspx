<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Studlogin.aspx.cs" Inherits="OnlineExam.Studlogin" Title="Student Log In" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align: center">Welcome to Student Log In
    </h2>
    <br /> 
    <br />
    <table style="width: 100%">
        <tr>
            <td style="font-size: medium; color: #2571AB">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Roll No.</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="209px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #2571AB">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="209px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        </table>
        <p>
        <br />
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" style="text-align: center" 
                Text="Log In" Width="69px" onclick="Button1_Click" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;
        
        </p>
    </asp:Content>
