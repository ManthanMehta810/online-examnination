<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="OnlineExam.Feedback" Title="Untitled Page" %>
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
    </style>
<script language="javascript" type="text/javascript">
function validate()
{   
    var name=document.getElementById('<%=Txtname.ClientID %>').value;
    var email=document.getElementById('<%=Txtemail.ClientID %>').value;
    var Com=document.getElementById('<%=Txtcomments.ClientID %>').value;
    if(name=="" || email=="" || Com=="")
    {
        alert("Please Enter Information with * Mark");
        return false;
    }
    var emexp=(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/);
    if(emexp.test(email) ==false)
    {
    alert("Please enter valid Email Id");
    document.getElementById('<%=Txtemail.ClientID %>').value="";
    document.getElementById('<%=Txtemail.ClientID %>').focus();
    return false;
    }
    return true;
}
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="style4">Feedback</h2>
    <table class="style6">
        <tr>
            <td class="style7">
                Name<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="Txtname" runat="server" Width="209px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style7">
                Email<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="Txtemail" runat="server" 
                    Width="209px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style7">
                Comments<sup style="color: #FF0000">*</sup>
            </td>
            <td>
                <asp:TextBox ID="Txtcomments" runat="server" TextMode="MultiLine" Width="209px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
    </table>
    <p class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Btnsub" runat="server" Text="Submit" Width="69px" 
            OnClientClick="return validate();" onclick="Btnsub_Click" />
    </p>
</asp:Content>
