using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Adlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["CheckCode"];
        SqlConnection sqlcon = new SqlConnection("server=(local);user id=grid;database=new_yan; pwd=grid");
        sqlcon.Open();
        SqlCommand sqlcom = sqlcon.CreateCommand();
        sqlcom.CommandText = "select count(*) from Admin where admin='" + txtname.Text +
            "'and suppwd='" + txtpwd.Text + "'";
        int countAdmin = Convert.ToInt32(sqlcom.ExecuteScalar());//获取sql语句的值
        if (countAdmin > 0)
        {
            Session["Admin"] = txtname.Text;
            if (cookie.Value == txtcode.Text)
            {
                Page.Response.Redirect("Control.aspx");
                
            }
            else
            {
                Response.Write("<script>alert('验证码错误!')</script>");
            }
        }
        else
        {
            Response.Write("<script language=javascript>alert('用户名或密码有误!');location='Adlogin.aspx'</script>");//javascript.go(-1)
            return;
        }
        sqlcon.Close();

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtpwd.Text = "";
        txtcode.Text = "";
    }   
}