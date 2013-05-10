<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>留言板</title>
<style type="text/css">
  .whole {width:800px; margin-top:15px; margin:0 auto;}
  .top_left {width:300px;height:100px; background-color:#F0F0F0; float:left; background-image:url(Image/left.jpg);}             
  .top_right {width:500px;height:100px; background-color:#BCC7D8; float:left; background-image:url(Image/right.jpg);}
  .center1 {width:798px; margin-top:3px; border:1px solid #DCDCDC; height:25px; background-color:#DCDCDC;
           float:left;}
  .center2 {width:798px; margin-top:3px; border:1px solid #E6E6E6; height:25px; background-color:#D9353C;
           float:left;}
  .main_left {width:198px; margin-top:10px; background-color:#F7F7F7; float:left; height:auto; border:1px #E6E6E6 solid;}
  .main_right {width:593px; margin-left:5px; border:1px #CCCCCC solid; float:left; margin-top:10px; height:auto;}
  .footer {width:798px; margin-top:10px; border:1px #4660F0 solid; height:40px; background-color:#C0C0C0; float:left;}
  .mine {width:60px; font-size:12px; text-decoration:underline;}
  .a:hover{ text-decoration:underline; color:#203788;}
  .a { text-decoration:none; color:#800080;}
  .style1
    {
        width: 66px; font-size:12px; text-align:center;
    }
 
    .style2
    {
        width: 299px;
    }
 
</style>
</head>
<body class="whole">
    <form id="form1" runat="server">
    
      <div class="whole"></div><!--#DF6D68 模糊红 center2属性-->
      <div class="top_left"></div>
      <div class="top_right"></div>
      <div class="center1">
        <table>
          <tr align="center" style="text-align:center;">
           <td align="center">
               <asp:Label ID="Label1" runat="server" Text="欢迎您！" Font-Size="14px" 
                   ForeColor="Red" Height="20px" Width="58px"></asp:Label></td>
           <td><asp:Label ID="Labguestname" runat="server" Height="20px" Width="92px"></asp:Label></td>
           <td class="style1">用户名：</td>
           <td style="width:80px;">
               <asp:TextBox ID="txtUser" runat="server" Height="18px" Width="70px" 
                   ontextchanged="txtUser_TextChanged"></asp:TextBox>
              </td>
           <td align="center" style="font-size:12px;" >密 码:</td>
           <td>
               <asp:TextBox ID="txtPwd" runat="server" Height="18px" TextMode="Password" 
                   Width="70px"></asp:TextBox>
              </td>
           <td>&nbsp;&nbsp;</td>
           <td align="center">
               <asp:Button ID="btn_login" runat="server" Height="20px" Text="登录" 
                   Width="42px" onclick="btn_login_Click" />
              </td>
           <td>&nbsp;&nbsp;</td>
           <td align="center">
               <asp:Button ID="btn_register" runat="server" Height="19px" Text="注册" 
                   Width="42px" onclick="btn_register_Click" />
              </td>
           <td>&nbsp;&nbsp;</td>
           <td align="center">
               <asp:Button ID="Exit" runat="server" Height="19px" Text="退出"
                   Width="42px" onclick="Exit_Click" />
              </td>
          </tr>
        </table>
      </div>
      <div class="center2">
         <table>
            <tr align="right"; style="text-align:center;">
              <td class="mine"></td>
              <td class="mine"><a href="#" class="a">我的空间</a></td>
              <td >&nbsp;&nbsp;</td>
              <td class="mine"><a href="Deliver.aspx" class="a">留言</a></td>
              <td >&nbsp;&nbsp;</td>
              <td class="mine"><a href="Deliver.aspx" class="a">回复</a></td>
              <td class="style2"></td>
              <td style="width:160px">
                  <asp:Label ID="btn_time" runat="server"></asp:Label></td>
            </tr>
         </table>


      </div>
      <div class="main_left">
         
          <asp:Image ID="Image1" runat="server" ImageUrl="Image/xixi.jpg" />
         
         <ul>
            <li>============</li>
            <li><a href="#" class="a">1234567</a></li>
            <li><a href="#" class="a">1234567</a></li>
            <li><a href="#" class="a">1234567</a></li>
            <li><a href="#" class="a">1234567</a></li>
            <li><a href="#" class="a">1234567</a></li>
            <li>============</li>
            <li>------------</li>
            <li><a href="#" class="a">---12345</a></li>
            <li><a href="#" class="a">--12345</a></li>
            <li><a href="#" class="a">-12345</a></li>
            <li><a href="#" class="a">--12345</a></li>
            <li><a href="#" class="a">---12345</a></li>
            <li><a href="#" class="a">------------</a></li>
            <li>------------</li>
         </ul>
      </div>
      <div class="main_right">
          <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
              DataSourceID="SqlDataSource1" ForeColor="#333333" Height="592px" 
              Width="591px">
              <AlternatingItemStyle BackColor="White" />
              <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <ItemStyle BackColor="#E3EAEB" />
              <ItemTemplate>
                  发言人:
                  <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                  <br />
                  主  题:
                  <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                  <br />
                  内  容:
                  <asp:Label ID="ContentLabel" runat="server" Text='<%# Eval("Content") %>' />
                  <br />
                  时  间:
                  <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                  <br />
                  <asp:LinkButton ID="LinkButton1" runat="server"><a href="huifu.aspx">回复</a></asp:LinkButton>
                  <br />
              </ItemTemplate>
              <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
          </asp:DataList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:new_yanConnectionString %>" 
              SelectCommand="SELECT [Author], [Title], [Content], [Time] FROM [Publishing]">
          </asp:SqlDataSource>
      </div>
      <div class="footer">
         <table width="798" style="height:40px"  cellpadding="0" cellspacing="0">
          <tr align="center" >
            <td><a href="http://user.qzone.qq.com/984010602" class="a">                ||关于版主||</a></td>
            <td><a href="http://www.yuol.cn" class="a">||联系交友||</a></td>
            <td><a href="#" class="a">||网站帮助||</a></td>
            <td>联系方式:&curren; E-mail:marlonwang@sina.com</td>
          </tr>
         </table>
      </div>
    
    
    </form>
</body>
</html>
