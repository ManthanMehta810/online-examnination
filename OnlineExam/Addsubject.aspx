<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Addsubject.aspx.cs" Inherits="OnlineExam.Addsubject" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            font-size: medium;
            color: #2571AB;
        }
    </style>
    <script language="javascript" type="text/javascript">
    function validate()
    {
        var subid=document.getElementById('<%=TxtSubid.ClientID %>').value;
        var subname=document.getElementById('<%=Txtname.ClientID %>').value;
        var moid=(/^[0-9]/);

        if(subid=="" || subname=="")
        {
            alert("Please Enter Information with * Mark");
            return false;
        }
        if(moid.test(subid)==false)
        {
            alert("Please Enter Subject ID in Numbers Only");
            document.getElementById('<%=TxtSubid.ClientID %>').value="";
            document.getElementById('<%=TxtSubid.ClientID %>').focus();
            return false;
        
        }
        return true;
       }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 style="text-align: justify">Welcome
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Btnlogout" runat="server" onclick="Btnlogout_Click" 
        Text="Log out" />
                            </h2>
                            <h2 style="text-align: center">Add Subject</h2>
    <table class="style4">
        <tr>
            <td class="style5">
                Subject Id <sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="TxtSubid" runat="server" Width="209px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #2571AB">
                Subject Name<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="Txtname" runat="server" Width="209px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #2571AB">
                Year<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>1st</asp:ListItem>
                    <asp:ListItem>2nd</asp:ListItem>
                    <asp:ListItem>3rd</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
    </table>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button 
            ID="Btnsave" runat="server" Text="Save" Width="69px" 
            OnClientClick="return validate();" onclick="Btnsave_Click1" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Btncancel" runat="server" Text="Cancel" 
            onclick="Btncancel_Click" />
    </p>
</asp:Content>
