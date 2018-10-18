<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Addtest.aspx.cs" Inherits="OnlineExam.WebForm4" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            text-align: center;
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
            text-align: justify;
        }
    </style>
    <script language="javascript" type="text/javascript">
    function validate()
    {
        var testname=document.getElementById('<%=Txttestname.ClientID %>').value;
        var subname=document.getElementById('<%=Dsub.ClientID %>').value;
        if(testname=="" || subname=="select")
        {
            alert("Please Enter Information with * marks");
            return false;
        }
        return true;
     }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 class="style8">Welcome
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Btnlogout" runat="server" onclick="Btnlogout_Click" 
        Text="Log out" />
                            </h2>
                            <h2 class="style4">Add Test</h2>
    <table class="style6">
        <tr>
            <td class="style7">
                Test Name <sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="Txttestname" runat="server" Width="209px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Subject Name<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:DropDownList ID="Dsub" runat="server" Height="16px" Width="204px">
                    <asp:ListItem>select</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Btnsave" runat="server" Text="Save" Width="69px" 
                    OnClientClick="return validate();" onclick="Btnsave_Click"  />
            </td>
            <td>
                &nbsp;<asp:Button ID="Btncancel" runat="server" Text="Cancel" Width="69px" 
                    onclick="Btncancel_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
