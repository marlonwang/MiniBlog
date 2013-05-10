<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            height: 48px;
        }
        .style5
        {
            width: 150px;
            height: 27px;
            background-color:#BCC7D8;
        }
        .style6
        {
            height: 27px;
        }
        .style8
        {
            width: 344px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
          <div>
          <table style="width: 347px; height:112px; margin:0 auto; border:#293955 1px solid;">
          <tr style="background-color:Orange;"><td colspan="2" align="center" class="style2">本机IP查询</td></tr>
            <tr>
               <td class="style5">客户端IP：</td>
               <td class="style6">
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
               <td class="style5">服务器IP：</td>
               <td class="style6">
                   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
               <td class="style5">服务器名称：</td>
               <td class="style6">
                   <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr style="background-color:#F5F5DC"><td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="查看" onclick="Button1_Click" /></td></tr>
              <asp:Repeater ID="Repeater1" runat="server">
              </asp:Repeater>
          </table>

          <table style="margin:0 auto; text-align:center; width: 341px;">
          <tr><td class="style8"><script language="JavaScript" type="text/javascript">
                      var thisdiv
                      function go(i) {
                          var thisdiv2 = document.getElementById("s" + i);
                          var sup = document.getElementById("sup" + i);
                          if (thisdiv != undefined && thisdiv != thisdiv2) thisdiv.style.display = "none";
                          if (thisdiv2.style.display == "none") {
                              thisdiv2.style.display = "block";
                              sup.innerHTML = "-";
                              thisdiv = thisdiv2;
                          }
                          else {
                              thisdiv2.style.display = "none";
                              sup.innerHTML = "+";
                          }
                      }
                   </script>
              </td></tr>
                   <tr><td class="style8"><div style="background-color:ThreeDFace" id="d5" onclick="go(5)"><span id=sup5>+</span>菜单5<br />
                      <div style="background-color:Orange; display: none" id="s5">5<br />55555<br />55<br />555</div>
                      </div></td>
                   </tr>
         </table>
          </div> 
          <table style="margin:0 auto; text-align:center; width: 341px;">
            <tr><td><asp:Label ID="Label1" runat="server"
                        Text="Label"></asp:Label></td>
            </tr>
          </table>  
    </div>
    </form>
</body>
</html>
