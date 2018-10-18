<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result1.aspx.cs" Inherits="OnlineExam.Result1" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style2
        {
            font-weight: bold;
            font-size: 20pt;
            text-align: center;
        }
        .style3
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2 class="style3">Result</h2>
        <p class="style2">&nbsp;<asp:Button ID="Button1" runat="server" 
                onclick="Button1_Click" Text="Back" Width="69px" />
            &nbsp;&nbsp;&nbsp;&nbsp; Enter Roll No.
            <asp:TextBox ID="TextBox1" runat="server" Width="209px"></asp:TextBox>
&nbsp;
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Show" 
                Width="69px" />
        </p>
        <p class="style2">
            &nbsp;</p>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
            AutoDataBind="true" DisplayGroupTree="False" DisplayToolbar="False" 
            style="text-align: center" />
        <p>
        </p>
    </div>
    </form>
</body>
</html>
