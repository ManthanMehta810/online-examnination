<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Addquestion.aspx.cs" Inherits="OnlineExam.Addquestion" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            text-align: center;
        }
        .style5
        {
            width: 100%;
        }
        .style6
        {
            color: #2571AB;
            font-size: medium;
        }
    </style>
    <script language ="javascript" type="text/javascript">
    function validate()
    {
        var q=document.getElementById('<%=TxtQues.ClientID %>').value;
        var t1=document.getElementById('<%=Txt1.ClientID %>').value;
        var t2=document.getElementById('<%=Txt2.ClientID %>').value;
        var t3=document.getElementById('<%=Txt3.ClientID %>').value;
        var t4=document.getElementById('<%=Txt4.ClientID %>').value;
        if(q=="" || t1=="" || t2 =="" || t3=="" || t4=="")
        {
            alert("Please Enter Information with * Mark");
            return false;
        }
        return true;
     }            
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 class="style3">Welcome
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Btnlogout" runat="server" onclick="Btnlogout_Click" 
        Text="Log Out" />
                            </h2>
                            <h2 class="style4">Add Question</h2>
    <table class="style5">
        <tr>
            <td class="style6">
                Subject Name<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:DropDownList ID="Dsub" runat="server" style="margin-left: 0px" 
                    AutoPostBack="True" onselectedindexchanged="Dsub_SelectedIndexChanged">
                    <asp:ListItem>select</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style6">
                Test Name<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:DropDownList ID="Dtest" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="Dtest_SelectedIndexChanged1">
                    <asp:ListItem>select</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style6">
                Question Number <sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="txtqno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Enter Question<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="TxtQues" runat="server" TextMode="MultiLine" Width="209px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style6">
                Enter 1<sup>st</sup> Option<sup style="color: #FF0000">*</sup>
            </td>
            <td>
                <asp:TextBox ID="Txt1" runat="server" TextMode="MultiLine" Width="209px"></asp:TextBox>
                <br />
            </td>
        </tr>0
        <tr>
            <td class="style6">
                Enter 2<sup>nd</sup> Option<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="Txt2" runat="server" TextMode="MultiLine" Width="209px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style6">
                Enter 3<sup>rd</sup> Option<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="Txt3" runat="server" TextMode="MultiLine" Width="209px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style6">
                Enter 4<sup>th</sup> Option<sup style="color: #FF0000">*</sup></td>
            <td>
                <asp:TextBox ID="Txt4" runat="server" TextMode="MultiLine" Width="209px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <span class="style6">Enter Right Option<sup style="color: #FF0000">*</sup></span> </td>
            <td>
                <asp:TextBox ID="txt_ans" runat="server" Height="30px" TextMode="MultiLine" 
                    Width="204px"></asp:TextBox>
                <br />
            </td>
        </tr>
  </table>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Btnsave" runat="server" Text="Save" Width="69px" 
        OnClientClick="return validate();" onclick="Btnsave_Click"  />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Btncancel" runat="server" Text="Cancel" Width="69px" 
        onclick="Btncancel_Click" />
</p>
</asp:Content>
