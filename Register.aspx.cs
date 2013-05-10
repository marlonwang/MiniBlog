using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    public bool ValidateName(string str)
    {
        return Regex.IsMatch(str, "^[\u4E00-\u9FA5]{0,}$");
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      /*  SqlConnection con = new SqlConnection("server=localhost; user=grid; database=new_yan; password=grid");
        con.Open();
        string inser = "insert into All_user(Users,Sex,Age,Password,Realname,Email) values('Brown','男','21','123456','张三','123@163.com')";
        SqlCommand com = new SqlCommand(inser, con);
        com.ExecuteNonQuery();
        con.Close();  、、、、、、、、、测试正常、、、、、*/

          try
           {
       
           SqlConnection con = new SqlConnection("server=(local);user id=grid;database=new_yan; pwd=grid");
           con.Open();
           string name = TextBox1.Text;
           string sex = DropDownList1.Text;
           string age = TextBox2.Text;
           string pwd = TextBox3.Text;
           string reput = TextBox4.Text;
           string rname = TextBox5.Text;
           string email = TextBox6.Text;
           string sqlinsert = "insert into All_user(Users,Sex,Age,Password,Realname,Email)values('"+name+"','"+sex+ "','"+age+"','"+ pwd +"','"+ rname+"','"+email+"')";
           SqlCommand com = new SqlCommand(sqlinsert,con);    
           com.ExecuteNonQuery();
          
           Response.Write("<script language=javascript>alert('注册成功,请在新页面登录')</script>");
           con.Close();

           Button1.Enabled = true;
           }
           catch
           {
              Response.Write("<script language=javascript>alert('注册失败!')</script>");

           }

           if (!ValidateName(TextBox5 .Text))
           {
               Response.Write("<script>alert('输入的登录名应为汉字')</script>");
           } 
           else
           {
               
               Response.Write("<script>alert('恭喜你，会员注册成功！'</script>");
           }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        DropDownList1.Text = "";

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

}