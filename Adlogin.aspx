<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adlogin.aspx.cs" Inherits="Adlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 40px;
        }    
        .style2
        {
            height: 30px;
        }
        .style3
        {
            width:180px;
            height:40px;
            }
        .style4
        {
            height: 40px;
            width: 107px;
        }
        .style5
        {
            height: 30px;
            width: 107px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
    <div>
      <table border="0" cellspacing="0" cellpadding="0" width="400px" style="margin:0 auto; background-color:#F0F0F0;">
        <tr>
           <td colspan="3" style="width:400px; height:80px; background-color:#6495ED" align="center"><h2>管理员登录</h2></td></tr>
      	<tr>
      		<td class="style4" align="center">管理员名称:</td>
            <td class="style1" align="center" colspan="2">
                <asp:TextBox ID="txtname" runat="server" Height="23px"></asp:TextBox></td>
      	</tr>
        <tr>
            <td class="style4" align="center">管理员密码:</td>
            <td class="style1" align="center" colspan="2">
                <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Height="23px" 
                    Width="151px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="style4" align="center">验 证 码:</td>
            <td class="style3" align="right">
                <asp:TextBox ID="txtcode" runat="server" Height="23px" style="margin-left: 2px" 
                    Width="76px"></asp:TextBox></td>
            <td class="style3" align="left">&nbsp;&nbsp; 
                <asp:Image ID="Image1" runat="server" ImageUrl="~/CheckCode.aspx" Height="23px" 
                    Width="50px" /></td></tr>
        <tr><td class="style5" ></td>               
            <td class="style2" align="center"><asp:Button ID="Button1" runat="server" Text="登录" onclick="Button1_Click" /></td>
            <td class="style3" align="center">
                <asp:Button  ID="btncancel" runat="server" Text="取消" /></td>
        </tr>
      </table>   
    </div>
    </form>
</body>
</html>
