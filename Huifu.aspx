<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Huifu.aspx.cs" Inherits="Huifu" Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>回复</title>
    <style type="text/css">
        .container{width:602px; height:auto; margin:0 auto; margin-top:20px;border:1px solid #F0F0F0;}
        .head{width:600px; height:80px;}
        .pub{ width:600px; height:100px;}
        .repl {width:600px; height:100px; }
        .style1
        {
            width: 595px;
            height: 80px;
            background-image: url('Image/1112.gif');
        }
        .style2
        {
            width: 595px;
        }
        .style3
        {
            width: 595px;
            height: auto;
        }
        .font
        {
            font-size:12px;
        }
    </style>
</head>
<body class="container">
    <form id="form1" runat="server">
    <div >
    <table>
      <tr>
        <td class="style1" align="center"><h2 style="width: 595px">留 言 回 复</h2></td> 
      </tr>
      <tr><td class="style2"><a href="Index.aspx">返回首页</a></td></tr>
      <tr>
        <td class="style3">
            <asp:DataList 
                ID="DataList1" runat="server" CellPadding="4" 
                DataSourceID="SqlDataSource_SR" ForeColor="#333333" Height="100px" 
                style="margin-right: 0px" Width="594px" DataKeyField="P_ID">
                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <ItemTemplate>
                 <table>
                   <tr class="font"><td style="width:210px">楼主：<asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' /></td>
                       <td align="center" style="width:180px">主题：<asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' /></td>
                       <td align="right" style="width:200px">时间：<asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' /></td>
                   </tr>
                   <tr>
                       <td colspan="3">内容：</td>  
                   </tr>
                   <tr> 
                       <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="ContentLabel" runat="server" Text='<%# Eval("Content") %>' /></td>
                   </tr>
                   <tr><td colspan="3"><hr style="width:100%; color:#BCC7D8; height:1px"/></td></tr>
                   <tr><asp:DataList ID="DataList2" runat="Server" DataSourceID="SqlDataSourse_RE" DataKeyField="R_ID">
                       <ItemTemplate>
                            <table><tr><td colspan="3" class="font" style="color:#FEA73B">回复：</td></tr>
                                   <tr><td class="font" style="width:200px">回复者：<asp:Label ID="R_userLabel" runat="Server" Text='<%# Eval("R_user") %>' /></td>
                                       <td>&nbsp;&nbsp;</td>
                                       <td align="right" class="font" style="width:200px">Time：<asp:Label ID="R_timeLabel" runat="Server" Text='<%# Eval("R_time") %>' /></td>
                                   </tr>
                                   <tr><td colspan="3" class="font">回话：&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="R_contentLabel" runat="Server" Text='<%# Eval("R_content") %>' /></td>
                                   </tr>
                            </table>
                       </ItemTemplate>
                       </asp:DataList>
                       <asp:SqlDataSource ID="SqlDataSourse_RE" runat="Server"
                            ConnectionString="<%$ ConnectionStrings:new_yanConnectionString4 %>"
                            SelectCommand="SELECT * FROM [Reply] WHERE ([R_ID] = @R_ID) ORDER by [R_time]">
                            <SelectParameters>
                               <asp:QueryStringParameter Name="R_ID" QueryStringField="id" Type="Int32" />
                            </SelectParameters>
                       </asp:SqlDataSource>
                    </tr>                  
                  </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource_SR" runat="server" 
                ConnectionString="<%$ ConnectionStrings:new_yanConnectionString4 %>" 
                SelectCommand="SELECT * FROM [Publishing] WHERE ([P_ID] = @P_ID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="P_ID" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
         </td> 
      </tr>
      <tr>
        <td class="style3">
            <asp:TextBox ID="repBox1" runat="server"  
                TextMode="MultiLine" Width="595px" Height="147px" 
                ontextchanged="repBox1_TextChanged"></asp:TextBox>
        </td>  
      </tr>
    </table>
    <table><tr style="width:600px; background-color:#D2D2D4"><td align="center" style="width:300px"><asp:Button ID="Button1" 
            runat="server" Text="提交" onclick="Button1_Click" /></td>
               <td align="center" style="width:300px"><asp:Button ID="Button2" runat="server" Text="取消" 
                       onclick="Button2_Click" /></td>
           </tr>
    </table>     
    </div>
    </form>
</body>
</html>
