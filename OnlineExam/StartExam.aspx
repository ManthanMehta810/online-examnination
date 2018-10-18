<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StartExam.aspx.cs" Inherits="OnlineExam.StartExam" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            width: 100%;
            height: 461px;
        }
        .style5
        {
            height: 22px;
        }
        .style6
        {
            width: 139px;
        }
        .style7
        {
            height: 22px;
            width: 139px;
        }
        .style8
        {
            height: 24px;
        }
        .style9
        {
            width: 180px;
        }
        .style10
        {
            height: 22px;
            width: 180px;
        }
        .style11
        {
            height: 13px;
            width: 139px;
        }
        .style12
        {
            height: 13px;
            width: 180px;
        }
        .style13
        {
            height: 13px;
        }
        .style14
        {
            height: 17px;
            width: 139px;
        }
        .style15
        {
            height: 17px;
            width: 180px;
        }
        .style16
        {
            height: 17px;
        }
        .style17
        {
            width: 139px;
            height: 31px;
        }
        .style18
        {
            width: 180px;
            height: 31px;
        }
        .style19
        {
            height: 31px;
        }
        .style20
        {
            height: 10px;
            width: 139px;
        }
        .style21
        {
            height: 10px;
            width: 180px;
        }
        .style22
        {
            height: 10px;
        }
        .style23
        {
            width: 139px;
            height: 19px;
        }
        .style24
        {
            width: 180px;
            height: 19px;
        }
        .style25
        {
            height: 19px;
        }
        .style26
        {
            width: 139px;
            height: 16px;
        }
        .style27
        {
            width: 180px;
            height: 16px;
        }
        .style28
        {
            height: 16px;
        }
        .style29
        {
            width: 139px;
            height: 15px;
        }
        .style30
        {
            width: 180px;
            height: 15px;
        }
        .style31
        {
            height: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style4">
        <tr>
            <td class="style6">
                <asp:TextBox ID="txt_ans" runat="server" Width="25px" Visible="False"></asp:TextBox>
                <asp:TextBox ID="txt_marks" runat="server" Width="21px" Visible="False"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:Button ID="btn_start" runat="server" onclick="btn_start_Click" 
                    Text="CLICK TO START" style="height: 26px" Font-Bold="True" 
                    Width="124px" />
            </td>
            <td>
                <asp:Button ID="btn_getresult" runat="server" onclick="btn_getresult_Click" 
                    Text="END EXAM" Font-Bold="True" Visible="False" />
            </td>
        </tr>
        <tr>
            <td class="style29">
            </td>
            <td class="style30">
            </td>
            <td class="style31">
                </td>
        </tr>
        <tr>
            <td class="style6" align="right" 
                style="font-size: small; color: #000080; font-weight: bold">
                Question No.
            </td>
            <td class="style9">
                <asp:TextBox ID="txt_qno" runat="server" Width="70px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style26">
                </td>
            <td class="style27">
                </td>
            <td class="style28">
                </td>
        </tr>
        <tr>
            <td class="style8" colspan="3" 
                style="font-size: small; color: #000080; font-weight: bold">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Question:&nbsp;                 
                <asp:Label ID="lbl_que" runat="server" Text="Label" Font-Bold="True" 
                    Font-Size="Small" ForeColor="Blue"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style23">
                </td>
            <td class="style24">
                </td>
            <td class="style25">
                </td>
        </tr>
        <tr>
            <td class="style6" align="center" 
                style="font-size: small; color: #000080; font-weight: bold">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Options:</td>
            <td class="style9">
                <asp:RadioButton ID="rdb_opt1" runat="server" AutoPostBack="True" 
                    GroupName="q" Font-Bold="True" ForeColor="#990099" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                </td>
            <td class="style15">
                </td>
            <td class="style16">
                </td>
        </tr>
        <tr>
            <td class="style17">
                </td>
            <td class="style18">
                <asp:RadioButton ID="rdb_opt2" runat="server" AutoPostBack="True" 
                    GroupName="q" Font-Bold="True" ForeColor="#990099" />
            </td>
            <td class="style19">
                </td>
        </tr>
        <tr>
            <td class="style11">
                </td>
            <td class="style12">
                </td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="style7">
            </td>
            <td class="style10">
                <asp:RadioButton ID="rdb_opt3" runat="server" AutoPostBack="True" 
                    GroupName="q" Font-Bold="True" ForeColor="#990099" />
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style10">
                <asp:RadioButton ID="rdb_opt4" runat="server" AutoPostBack="True" 
                    GroupName="q" Font-Bold="True" ForeColor="#990099" />
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20">
                </td>
            <td class="style21">
                </td>
            <td class="style22">
                </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style10">
                <asp:Button ID="btn_submit" runat="server" Text="Submit Answer" 
                    onclick="btn_submit_Click" />
                &nbsp;&nbsp;&nbsp;
            </td>
            <td class="style5">
                <asp:LinkButton ID="btn_next" runat="server" onclick="btn_next_Click" 
                    Font-Bold="True" Font-Size="Small">Next Question&gt;&gt;</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
