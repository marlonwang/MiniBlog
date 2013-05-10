<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Control.aspx.cs" Inherits="Control" Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <meta http-equiv="Content-Type" content="text/html;    charset=utf-8" />
   <meta name="keywords" content="留言板" />
   <meta name="description" content="长大在线试用期练习作业" />
 <title>留言管理</title>
</head>
 <link href="Style/style.css" rel="stylesheet"  type="text/css" />
 <body>
      <form id="form1" runat="server">
      <div class="banner"></div>
      <table style="width:755px; height:20px; background-color:#E3AFF6; margin-bottom:5px; border:1px #8A2BE2 solid;">
       <tr>
         <td>当前管理员：<asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red"></asp:Label></td>
         <td><a href="#">注册用户管理</a></td>
         <td><a href="#">所有留言管理</a></td>
         <td><a href="#">管理员名单</a></td>  
         <td>
             <asp:Button ID="btn_Exit" runat="server" Text="Exit" onclick="btn_Exit_Click" 
                 Width="34px" /></td>
      </tr>
      
      </table>
      <div class="left">
        <div id="link">
         <table style="width:168px; height:30px;">
            <tr><td class="style4"><b>管理员面板</b></td></tr>
            <tr style="font-size:9px; color:red;"><td>>>>数据无价，谨慎操作。</td></tr>
         </table>
         <table style="width:195px; background-color:#E5E9F2;">
             <tr >
               <td class="style3"><a href="Login.aspx">*用户登录*</a></td>
             </tr>
             <tr>
               <td class="style7"><a href="Register.aspx">*用户注册*</a></td>
             </tr>
             <tr>
               <td class="style3"><a href="Deliver.aspx">*发表留言*</a></td>
             </tr>
             <tr>
               <td class="style6"><a href="Deliver.aspx">*回复留言*</a></td>
             </tr>
             <tr>
               <td class="style3"><a href="Index.aspx">*返回主界面*</a></td>
             </tr>
         </table>
       
        </div>
        <div id="time"> 
     <script type="text/javascript" src="Style/js.js"></script>
	  <Style>
	      Input {font-family: verdana;font-size: 9pt;text-decoration: none;background-color: #FFFFFF;border: 1px solid #666666;color:#000000;
          }
	  .Calendar {font-family: verdana;text-decoration: none;width: 170;background-color: #C0D0E8;font-size: 9pt;border:0px dotted #1C6FA5;}
	  .CalendarTD {font-family: verdana;font-size: 7pt;color: #000000;background-color:#f6f6f6;height: 20px;width:11%;text-align: center;}
	  .Title {font-family: verdana;font-size: 11pt;font-weight: normal;height: 24px;text-align: center;color: #333333;text-decoration: none;background-color: #A4B9D7;border-top-width: 1px;border-right-width: 1px;border-bottom-width: 1px;border-left-width: 1px;border-bottom-style:1px;border-top-color: #999999;border-right-color: #999999;border-bottom-color: #999999;border-left-color: #999999;}
	  .Day {font-family: verdana;font-size: 7pt;color:#243F65;background-color: #E5E9F2;height: 20px;width:11%;text-align: center;}
	  .DaySat {font-family: verdana;font-size: 7pt;color:#FF0000;text-decoration: none;background-color:#E5E9F2;text-align: center;height: 18px;width: 12%;}
	  .DaySun {font-family: verdana;font-size: 7pt;color: #FF0000;text-decoration: none;background-color:#E5E9F2;text-align: center;height: 18px;width: 12%;}
	  .DayNow {font-family: verdana;font-size: 7pt;font-weight: bold;color: #000000;background-color: #FFFFFF;height: 20px;text-align: center;}
	  .DayTitle {font-family: verdana;font-size: 9pt;color: #000000;background-color: #C0D0E8;height: 20px;width:11%;text-align: center;}
	  .DaySatTitle {font-family: verdana;font-size: 9pt;color:#FF0000;text-decoration: none;background-color:#C0D0E8;text-align: center;height: 20px;width: 12%;}
	  .DaySunTitle {font-family: verdana;font-size: 9pt;color: #FF0000;text-decoration: none;background-color: #C0D0E8;text-align: center;height: 20px;width: 12%;}
	  .DayButton {font-family: Webdings;font-size: 9pt;font-weight: bold;color: #243F65;cursor:hand;text-decoration: none;}
	      #TextArea1
          {
              height: 40px;
              width: 175px;
          }
	      .style3
          {
              height: 20px;
              width: 154px;
          }
          .style4
          {
              height: 20px;
          }
          .style6
          {
              height: 22px;
              width: 154px;
          }
          .style7
          {
              height: 21px;
              width: 154px;
          }
          </Style>
	  <table border="0" cellpadding="0" cellspacing="1" class="Calendar" id="caltable">
	  <thead>
		   <tr align="center" valign="middle"> 
		<td colspan="7" class="Title">
		 <a href="javaScript:subMonth();" title="上一月" Class="DayButton">3</a> <input name="year" type="text" size="4" maxlength="4" onkeydown="if (event.keyCode==13){setDate()}" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"  onpaste="this.value=this.value.replace(/[^0-9]/g,'')"> 年 <input name="month" type="text" size="1" maxlength="2" onkeydown="if (event.keyCode==13){setDate()}" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"  onpaste="this.value=this.value.replace(/[^0-9]/g,'')"> 月 <a href="JavaScript:addMonth();" title="下一月" Class="DayButton">4</a>
		</td>
	   </tr>
	   <tr align="center" valign="middle"> 
		<Script LANGUAGE="JavaScript">
		    document.write("<TD class=DaySunTitle id=diary >" + days[0] + "</TD>");
		    for (var intLoop = 1; intLoop < days.length - 1; intLoop++)
		        document.write("<TD class=DayTitle id=diary>" + days[intLoop] + "</TD>");
		    document.write("<TD class=DaySatTitle id=diary>" + days[intLoop] + "</TD>"); 
		</Script>
	   </TR> 
	  </thead>
	  <TBODY border=1 cellspacing="0" cellpadding="0" ID="calendar" ALIGN=CENTER ONCLICK="getDiary()">
	   <Script LANGUAGE="JavaScript">
	       for (var intWeeks = 0; intWeeks < 6; intWeeks++) {
	           document.write("<TR style='cursor:hand'>");
	           for (var intDays = 0; intDays < days.length; intDays++) document.write("<TD class=CalendarTD onMouseover='buttonOver();' onMouseOut='buttonOut();'></TD>");
	           document.write("</TR>");
	       } 
	   </Script>
	  </TBODY>
	  </TABLE>
	  <Script  LANGUAGE="JavaScript">
	      Calendar();
	  </Script>
   
        </div>
      </div>
 <div class="right">
<!--<table style="width:543px;height:30px; background-color:#E30A12;">
         <tr >
           <td><a href="Login.aspx">用户登录</a></td>
           <td><a href="Register.aspx">用户注册</a></td>
           <td><a href="Deliver.aspx">发表留言</a></td>
           <td><a href="Deliver.aspx">
               回复留言</a></td>
         </tr>
   </table>-->
     <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
         GridLines="None" Height="364px" 
         onselectedindexchanged="GridView1_SelectedIndexChanged" 
         style="margin-left: 0px" Width="540px" AutoGenerateColumns="False" 
         onrowdeleting="GridView1_RowDeleting" 
         onrowdatabound="GridView1_RowDataBound" DataKeyNames="Author" 
         AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging" 
         PageSize="4">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:BoundField DataField="Author" HeaderText="作者" />
             <asp:BoundField DataField="Title" HeaderText="标题" />
             <asp:BoundField DataField="Content" HeaderText="留言内容" />
             <asp:CommandField HeaderText=" 删除" ShowDeleteButton="True" />
         </Columns>
         <EditRowStyle BackColor="#2461BF" />
         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#EFF3FB" />
         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#F5F7FB" />
         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
         <SortedDescendingCellStyle BackColor="#E9EBEF" />
         <SortedDescendingHeaderStyle BackColor="#4870BE" />
     </asp:GridView>
    <!-- <img src="Image/79.jpg" width="543" height="328" /> -->
   </div>
      <div class="bottom">
      <table width="755" style="height:38px"  cellpadding="0" cellspacing="0">
          <tr >
            <td><a href="http://user.qzone.qq.com/984010602">                ||关于版主||</a></td>
            <td><a href="http://www.yuol.cn">||联系交友||</a></td>
            <td><a href="#">||网站帮助||</a></td>
            <td>联系方式:&curren; E-mail:marlonwang@sina.com</td>
          </tr>
         </table>
 </div>
      <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
          Text="刷新" Width="49px" />
      </form>
 </body>
</html>

