<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Stud1.aspx.cs" Inherits="OnlineExam.Stud1" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 style="text-align: justify">Welcome
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </h2>
<ul style="font-size: medium">
      <li><a href="Changepassword.aspx" style="color: #2571AB">Change Password</a></li>
      <li><a href="Exam.aspx" style="color: #2571AB">Online Exam</a></li>
    </ul>
</asp:Content>
