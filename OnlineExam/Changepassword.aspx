<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Changepassword.aspx.cs" Inherits="OnlineExam.Changepassword" Title="Untitled Page" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
<script language="javascript" type="text/javascript">
function validate()
    {
        var opass=document.getElementById('<%=Txtopassword.ClientID %>').value;
        var npass=document.getElementById('<%=Txtnpassword.ClientID %>').value;
        var cpass=document.getElementById('<%=Txtcpassword.ClientID %>').value;
        if(opass=="" || npass=="" || cpass =="||")
        {
            alert("Please Enter Information with * Mark");
            return false;
        }
        if(npass!=cpass)
        {
            alert("Password didn't match");
            return false;
        }
        return true;
     }            
</script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align: center">Change Password</h2>
    <p style="text-align: center">
    <br />
        <asp:Label ID="Label1" runat="server" style="font-size: medium; color: #2571AB" 
            Text="Old Password"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Txtopassword" runat="server" Width="209px" TextMode="Password"></asp:TextBox>
    </p>
    <p style="text-align: center">
    <br />
        <asp:Label ID="Label2" runat="server" style="font-size: medium; color: #2571AB" 
            Text="New Password"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Txtnpassword" runat="server" Width="209px" TextMode="Password"></asp:TextBox>
    </p>
    <p style="text-align: center">
    <br />
        <asp:Label ID="Label3" runat="server" style="font-size: medium; color: #2571AB" 
            Text="Confirm Password"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Txtcpassword" runat="server" Width="209px" TextMode="Password"></asp:TextBox>
    </p>
    <p style="text-align: center">
    <br />
        <asp:Button ID="Btnsave" runat="server" Text="Save" Width="56px" OnClientClick="return validate();" onclick="Btnsave_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Btncancel" runat="server" Text="cancel" 
            onclick="Btncancel_Click" />
    </p>
</asp:Content>
