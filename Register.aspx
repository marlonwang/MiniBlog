<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    
   
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>用户注册</title>
    <style type="text/css">
      .body
      {
          width:400px; height:435px; margin:0 auto; border:1px #83F029 solid;
          }
      .up
      {
          width:400px; height:120px; margin-bottom:10px; background-image:url(Image/reg.jpg);
          background-repeat:no-repeat;
      }
        .style1
        {
            width: 101px;
            height: 30px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="body">
      <div class="up">
      </div>
        <table style="width:400px;  font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; text-decoration: none; background-color:#F5F9FC;" align="center">
            <tr>
                <td class="style1" >昵 称:</td>
                <td align="center">
                    <asp:TextBox ID="TextBox1" runat="server" Width="160px" Height="25px" ></asp:TextBox>
                    </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="昵称不能为空">昵称不能为空</asp:RequiredFieldValidator>
                    </td>
                
            </tr>
            <tr>
                <td class="style1">性 别:</td>
                <td align="center">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="160px">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td></td>
               
            </tr>
            <tr>
                <td class="style1">年 龄:</td>
                <td align="center">
                    <asp:TextBox ID="TextBox2" runat="server" Width="160px" Height="25px"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="输入的年龄不合理" MaximumValue="100" 
                        MinimumValue="1" Type="Integer">输入的年龄不合理</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">密 码:</td>
                <td align="center">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Height="25px" 
                        Width="160px"></asp:TextBox>
                </td>
                <td></td>
                
            </tr>
             <tr>
                <td class="style1">重复密码:</td>
                <td align="center">
                    <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="160px" 
                        TextMode="Password"></asp:TextBox></td>
                <td>   <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox3" ErrorMessage="输入密码不一致" 
                        ControlToValidate="TextBox4"></asp:CompareValidator>
                </td>
                
            </tr>
             <tr>
                <td class="style1">真实姓名:</td>
                <td align="center">
                    <asp:TextBox ID="TextBox5" runat="server" Width="160px" Height="25px"></asp:TextBox>
                </td>
                <td></td>
               
            </tr>
             <tr>
                <td class="style1">电子邮件:</td>
                <td align="center">
                    <asp:TextBox ID="TextBox6" runat="server" Width="160px" Height="25px"></asp:TextBox></td>
                <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="电子邮件格式不正确" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">电子邮件格式不正确</asp:RegularExpressionValidator>
                </td>
               
            </tr>
            <tr>
               <td style="height:40px;" colspan="2" align="right">
                   <asp:Button ID="Button1" runat="server" Font-Bold="False" Font-Size="16px" 
                       Height="26px" Text="注册" Width="65px" onclick="Button1_Click" />
                  </td>
               <td align="right">
                   <asp:Button ID="Button2" runat="server" Font-Bold="False" Font-Size="16px" 
                       Height="25px" Text="重填" Width="65px" onclick="Button2_Click" />
                </td>
            </tr>
            <tr>
               <td colspan="3" style="height: 30px" bgcolor="#CCCCFF">欢迎注册！Have  a  good  time!&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" BackColor="#CCFF66" 
               Font-Underline="True" Height="20px" Width="40px" onclick="LinkButton1_Click" Text="登录"></asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

