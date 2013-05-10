<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" Debug="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>留言板</title>
    <script type="text/javascript" >
<!--

        function alertHeight() {

            var divH1 = document.getElementById("main_left");
            var divH2 = document.getElementById("main_right");
            var allHeight = divH1.clientHeight > divH2.clientHeight ? divH1.clientHeight : divH2.clientHeight;
            divH1.style.height = allHeight + 'px';
            divH2.style.height = allHeight + 'px';
        }
        window.onload = alertHeight;
-->
</script>
<style type="text/css">
  .whole {width:810px; margin-top:15px; margin:0 auto;}
  .top {width:810px;height:100px; background-color:#F2F3F5; float:left; background-image:url(Image/mark.jpg); background-repeat:no-repeat; }
  .center1 {width:808px; margin-top:3px; border:1px solid #DCDCDC; height:25px; background-color:#DCDCDC;
           float:left;}
  .center2 {width:808px; margin-top:3px; border:1px solid #E6E6E6; height:25px; background-color:#6495ED;
           float:left;}
  #main_left {width:198px; margin-top:10px; background-color:#F7F7F7; float:left; height:auto; border:1px #E6E6E6 solid;}
  #main_right {width:603px; margin-left:5px; border:1px #CCCCCC solid; float:left; margin-top:10px; height:auto; }
  .footer {width:808px; margin-top:10px; border:1px #4660F0 solid; height:40px; background-color:#C0C0C0; float:left;}
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
    .rep_l{width:180px; background-color:#F5F6F8;}
    .rep_2{width:413px; background-color:#F1F3F8; text-align:right;}
    .clear{clear:both;}
</style>
</head>
<body class="whole">
    <form id="form1" runat="server">
    <!--.top_left {width:300px;height:100px; background-color:#F0F0F0; float:left; background-image:url(Image/left1.jpg); }             
  .top_right {width:500px;height:100px; background-color:#BCC7D8; float:left; background-image:url(Image/right.jpg);}-->
      <div class="whole"></div><!--#DF6D68 模糊红 --#D9353C(原始红)  center2属性-->
      <div class="top"></div>
     <!-- <div class="top_right"></div>-->
      <div class="center1">
        <table>
          <tr align="center" style="text-align:center;">
           <td align="center">
               <asp:Label ID="Label1" runat="server" Text="欢迎您！" Font-Size="14px" 
                   ForeColor="Red" Height="20px" Width="58px"></asp:Label></td>
           <td><asp:Label ID="Labguestname" runat="server" Height="20px" Width="92px" 
                   Font-Bold="True" ForeColor="Black">游客</asp:Label></td>
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
              <td class="mine"><a href="Default.aspx" class="a">我的空间</a></td>
              <td >&nbsp;&nbsp;</td>
              <td class="mine"><a href="Deliver.aspx" class="a">留言</a></td>
              <td >&nbsp;&nbsp;</td>
              <td class="mine"><a href="Deliver.aspx" class="a">回复</a></td>
              <td class="style2"></td>
              <td style="width:160px">
                  <a href="Adlogin.aspx" class="a">管理员</a></td>
            </tr>
         </table>


      </div>
      
      <div id="main_left">
         
          <asp:Image ID="Image1" runat="server" ImageUrl="Image/xixa.jpg" />
          <ul>
            <li><h3>友情链接</h3></li>
            <li><a href="http://www.yangtzeu.edu.cn/" class="a">长江大学</a></li>
            <li><a href="http://www.yuol.cn" class="a">长大在线</a></li>
            <li><a href="http://ishare.iask.sina.com.cn" class="a">爱问共享</a></li>
            <li><a href="http://tech.163.com" class="a">网易学院</a></li>
            <li><a href="http://www.enet.com.cn" class="a">硅谷动力</a></li>
            <li><a href="http://www.hjenglish.com" class="a">沪江英语</a></li>
            <li><a href="http://www.csdn.net" class="a">CSDN社区</a></li>
            <li><a href="http://www.elecfans.com" class="a">电子发烧友</a></li>
         </ul>
         
         <ul>
            <li>==========</li>
            <li><a href="#" class="a">1234567</a></li>
            <li><a href="#" class="a">1234567</a></li>
            <li><a href="#" class="a">1234567</a></li>
            <li><a href="#" class="a">1234567</a></li>
            <li><a href="#" class="a">广   告</a></li>
            <li>==========</li>
            <li>----------</li>
         </ul>
           <asp:Image ID="Image3" runat="server" 
              ImageUrl="Image/转笔.gif" Height="135px" Width="195px" />
         <ul>
           <li>----------</li>
         </ul>           
          <asp:Image ID="Image2" runat="server" ImageUrl="Image/go.gif" Height="230px" 
              Width="195px" />      
      </div>   
      <div id="main_right">
          <asp:Repeater ID="Repeater1" runat="server" 
              DataSourceID="SqlDataSource1" onitemcommand="Repeater1_ItemCommand" OnItemDataBound="Repeater1_ItemDataBound" >
              <HeaderTemplate><table width="593px"></HeaderTemplate>
              <ItemTemplate><tr style="height:14px">
                                <td class="rep_l" >发言人: <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' /></td>
                                <td class="rep_2">时间:<asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' /></td>
                            </tr>
                           
                            <tr style="height:14px"><td>内容:</td><td></td></tr>
                            <tr style="height:100px; background-color:#FFFFFF"><td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="ContentLabel" runat="server" Text='<%# Eval("Content") %>'  /></td></tr>
 
                            <tr style="height:20px;width:auto; border:0.5px solid #BCC7D8; background-color:#DEE1E7">
                              
                                <td>&nbsp;&nbsp;<asp:Label ID="labtransid" runat="server"  Visible="False" Text='<%# Eval("P_ID") %>'></asp:Label></td><%--隐藏的label用于传外层repeaterid--%>
                                <td  align="center" colspan="2">
                                   <a href='Huifu.aspx?id=<%# Eval("P_ID") %>' target="_blank">回 复</a>
                                    
                                  <!-- <asp:Button ID="btn_reply" runat="server" Text="回复" Height="20px" Font-Size="11px" />--></td>
                            </tr>
                            <tr><td colspan="2">
                                <asp:Repeater ID="Repeater2" runat="server"  onitemcommand="Repeater2_ItemCommand">
                                <HeaderTemplate><table width="593px"></HeaderTemplate>
                                <ItemTemplate><tr style="height:auto">
                                                  <td style="width:180px; font-size:10px;">回复者:<asp:Label ID="AuthorLabe2" runat="Server" Text='<%# Eval("R_user") %>'/></td>
                                                  <td style="width:473px; font-size:10px;">时间:<asp:Label ID="TimeLabel2" runat="Server" Text='<%# Eval("R_time") %>' /></td>
                                              </tr>
                                              <tr style="height:14px"><td colspan="2" style="font-size:10px" >内容:</td><td></td></tr>
                                              <tr><td colspan="2"><asp:Label ID="ContentLabe2" runat="server" Text='<%# Eval("R_content") %>' /></td></tr>
                                               <tr style="height:2px"><td colspan="2"><hr style="color:#D9D9D9; height:1px;"/></td></tr>
                                </ItemTemplate>
                                <FooterTemplate></table></FooterTemplate>
                                </asp:Repeater>
                            
                              </td></tr>
                           
              </ItemTemplate>
              <FooterTemplate></table></FooterTemplate>
          </asp:Repeater>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:new_yanConnectionString %>" 
              SelectCommand="SELECT  [P_ID], [Author], [Title], [Content], [Time] FROM [Publishing] ORDER by [Time] DESC">
          </asp:SqlDataSource>

      </div>
      <div class="clear"></div>
      
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