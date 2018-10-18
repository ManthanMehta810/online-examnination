<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Studreg.aspx.cs" Inherits="OnlineExam.Studreg" Title="student registration" %>


<asp:Content ID="Content2" ContentPlaceHolderId="head" runat="server">

    <script language="javascript" type="text/javascript">
function validate()
{
var name=document.getElementById('<%=Txtname.ClientID %>').value;
var address=document.getElementById('<%=Txtaddress.ClientID %>').value;
var email=document.getElementById('<%=Txtemail.ClientID %>').value;
var Contactno=document.getElementById('<%=Txtno.ClientID %>').value;
var rollno=document.getElementById('<%=Txtrollno.ClientID %>').value;
var password=document.getElementById('<%=Txtpass.ClientID %>').value;
var cpassword=document.getElementById('<%=Txtcpass.ClientID %>').value;
if(name=="" || address=="" || email=="" || Contactno=="" || rollno=="" || password=="" || cpassword=="" )
{
alert("Please Enter Information with * Mark");
return false;
}
if(!name.match(/^[a-z A-Z]+$/))
{
alert("Please enter Name in Characters only");
name=document.getElementById('<%=Txtname.ClientID %>').value="";
document.getElementById('<%=Txtname.ClientID %>').focus();
return false;
}
var cnoexp=(/^[0-9]{10}$/);
if(cnoexp.test(Contactno)==false)
{
alert("Please enter only 10 digit number");
document.getElementById('<%=Txtno.ClientID %>').value="";
document.getElementById('<%=Txtno.ClientID %>').focus();
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
if(password != cpassword)
{
alert("Password Didn't match");
return false;
}
return true;
}
</script>
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


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="style5">Welcome
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Btnlogout" runat="server" onclick="Btnlogout_Click" 
            Text="Log out" />
                            </h2>
                            <h2 class="style4">&nbsp;&nbsp; Student Registration</h2>
    <table style="width: 100%">
        <tr>
            <td style="font-size: medium; color: #2571AB">
                Name<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="Txtname" runat="server" Width="209px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #2571AB">
                Address<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="Txtaddress" runat="server" TextMode="MultiLine" Width="209px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #2571AB">
                Gender<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #2571AB">
                Email<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="Txtemail" runat="server" Width="209px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #2571AB">
                Contact No.<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="Txtno" runat="server" Width="209px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #2571AB">
                Branch<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Computer Engineering</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #2571AB">
                Year<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>1st</asp:ListItem>
                    <asp:ListItem>2nd</asp:ListItem>
                    <asp:ListItem>3rd</asp:ListItem>
                    <asp:ListItem>4th</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #2571AB">
                Roll No.<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="Txtrollno" runat="server" Width="209px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #2571AB">
                Password<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="Txtpass" runat="server" TextMode="Password" Width="209px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #2571AB">
                Confirm Password<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="Txtcpass" runat="server" Width="209px" TextMode="Password"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #2571AB">
            <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Btnsave" runat="server" Text="Save" 
                    Width="70px" OnClientClick="return validate();" onclick="Btnsave_Click" />
            </td>
            <td>
                <br />
                <asp:Button ID="Btncancel" runat="server" 
                    Text="Cancel " Width="70px" onclick="Btncancel_Click1" />
            </td>
        </tr>
        </table>
    <br />
    <br />
    </asp:Content>
