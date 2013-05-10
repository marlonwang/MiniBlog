<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Deliver.aspx.cs" Inherits="Deliver" Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>发表留言</title>
    <style type="text/css">
        .all
    {
        border-style: none;
            border-color: inherit;
            border-width: medium;
            width:700px; height:541px; 
            margin: 0 auto;padding: 0;font-family: 宋体; font-size: 14px;
        }
    .header
    {  width:702px; height:120px; background:url(Image/header2.jpg); background-repeat:no-repeat;
      
     } 
    .part1
    {
        width:200px; text-align:center; background-color:#DEE1E7;
    }  
        .style2
        {
            height: 30px; background-color:#F0F0F0;
        }
        .style3
        {
            width: 200px;
            text-align: center;
            background-color: #DEE1E7;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="all">
       <div class="header" >
       </div>
       <table align="center" cellpadding="0" cellspacing="0" width="702px" >
               <tr style="height:20px;">
                 <td align="center" colspan="2" style="background-color:#DEE1E7;">
                     <asp:Label ID="Label1" runat="server" Text="欢迎您，" ForeColor="red"></asp:Label><asp:Label
                         ID="labUserName" runat="server" ></asp:Label>
                 </td>
               </tr>
               <tr>
                   <td class="style3">
                       标&nbsp;&nbsp;题：
                   </td>
                   <td class="style2">
                       &nbsp;
                       <asp:TextBox ID="txtCardTitle" runat="server" Height="22px" Width="465px"></asp:TextBox>
                   </td>
               </tr>
               
               <tr style="height:3px;">
                  <td style="background-color:#DEE1E7;">
                      &nbsp;</td>
                  <td style="background-color:#F0F0F0;"></td>
               </tr>

               <tr style="height:30px">
                   <td  class="part1">
                       留言描述：
                   </td>
                   <td class="style2">
                       &nbsp;
                       <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="465px"></asp:TextBox>
                   </td>
               </tr>            
               <tr>
                   <td  class="part1">
                       内&nbsp;&nbsp;容：
                   </td>
                   <td style="height:300px" class="style2">
                       &nbsp;
                       <asp:TextBox ID="txtCardContent" runat="server" Width="461px" Height="232px" 
                           TextMode="MultiLine" style="margin-top: 0px"></asp:TextBox>
                   </td>
               </tr>
                <tr style="height:25px;"> 
                   <td style="background-color:#BCC7D8" >
                       &nbsp;
                   </td>
                   <td align="center" style="background-color:#F0F0F0;">
                       &nbsp;
                       <asp:Button ID="btnDeliver" runat="server" Text="发表" OnClick="btnDeliver_Click" />&nbsp;&nbsp;
                       &nbsp;&nbsp;
                       <asp:Button ID="btnCancel" runat="server" Text="返回" OnClick="btnCancel_Click" />
                   </td>
               </tr>
       </table>
    </div>
    </form>
</body>
</html>

