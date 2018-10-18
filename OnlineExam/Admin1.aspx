<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin1.aspx.cs" Inherits="OnlineExam.Admin1" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 style="text-align: justify">Welcome
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Btnlogout" runat="server" onclick="Btnlogout_Click" 
        Text="Log out" />
                            </h2>
<ul style="font-size: medium">
      <li><a href="Studreg.aspx" style="color: #2571AB">Student registration</a></li>
      <li><a href="Addsubject.aspx" style="color: #2571AB">Add Subject</a></li>
      <li><a href="Addtest.aspx" style="color: #2571AB">Add Test</a></li>
      <li><a href="Addquestion.aspx" style="color: #2571AB">Add Question</a></li>
      <li><a href="#">View Result</a></li>
    </ul>

</asp:Content>
