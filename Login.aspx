<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>用户登录</title>
    <style type="text/css">
        .style1
        {
            width: 600px; background-image:url(Image/login0.jpg); background-repeat:no-repeat;
             height:50px;
        }
        .height_l
        {
            width:150px; background-color:#BCC7D8; text-align:center;
            }
        .height_r
        {
            width:450px; background-color:#F0F0F0; text-align:center;
            }
        
        .style2
        {
            width: 176px;
            background-color: #BCC7D8;
            text-align: center;
        }
        .style3
        {
            width: 250px;
        }
        
        .style4
        {
            width: 176px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <table style="width:500px; height:395px; border:1px #5547F0 solid"; align="center"; cellspacing="0"; cellpadding="0">
        <tr>
       		<td class="style1" colspan="3">
               </td>
       	</tr>
        <tr style="height:20px;">
            <td class="style2"><asp:Label ID="labUserName" runat="Server" Text="用户名:" 
                    Font-Size="14px" ></asp:Label></td>
            <td class="height_r" colspan="2">
                <asp:TextBox ID="txtUserName" runat="Server" Font-Size="14px" 
                    Height="20px" Width="172px"></asp:TextBox></td>
        </tr>
        <tr style="height:20px">
            <td class="style2"><asp:Label ID="labPwd" runat="server" Text="密 码:" Font-Size="14px">
                    </asp:Label></td>
            <td class="height_r" colspan="2">
                <asp:TextBox ID="txtPassword" runat="Server" Font-Size="14px" 
                    Height="20px" Width="172px" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr style="height:20px">
           <td class="style2">
               <asp:Label ID="Label1" runat="server" Text="验证码:"></asp:Label></td>
           <td style="background-color:#F0F0F0; width:225px; text-align:right" >
               <asp:TextBox runat="server" ID="txtCode" Height="20px" Width="86px"></asp:TextBox></td>
           <td style="background-color:#F0F0F0; width:225px">&nbsp;&nbsp;<asp:Image ID="Image1" 
                   runat="server"  Height="22px" 
                   ImageUrl="CheckCode.aspx" Width="65px" /></td>
            
        </tr>
        <tr style="height:20px; background-color:#E8F7DD;">
            <td class="style4" align="center"; style="background-color: #BCC7D8;
            text-align: center;">&nbsp;
                    <asp:Button ID="btnLogin" runat="Server" Text="登录" OnClick="btnLogin_Click" 
                      Font-Size="14px" Width="81px" Height="20px"/>&nbsp;&nbsp;</td>
            <td class="style3" align="center"; colspan="2">
                    <asp:Button ID="btnCancel" runat="Server" Text="取消" OnClick="btnCancel_Click"
                     Font-Size="14px" Height="20px" Width="80px"/></td>
        </tr>
        <tr style="width:500px; height:15px; background-color:#D7B3F0">
            <td align="center"; class="style4">
                   <asp:Button ID="btnRegieter" runat="Server" Text="注册" OnClick="btnRegister_Click"
                    Font-Size="14px" Height="22px" Width="80px" /></td>
            <td align="center"; colspan="2"><b>! 单击左边按钮可注册</b></td>
                   
        </tr>
       </table>
    </div>
    </form>
</body>
</html>

