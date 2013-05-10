using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["CheckCode"];
        SqlConnection sqlcon = new SqlConnection("server=(local);user id=grid;database=new_yan; pwd=grid");
        sqlcon.Open();
        SqlCommand sqlcom = sqlcon.CreateCommand();
        sqlcom.CommandText = "select count(*) from All_user where Users='" + txtUserName.Text +
            "'and Password='" + txtPassword.Text + "'";
        int countAdmin = Convert.ToInt32(sqlcom.ExecuteScalar());//获取sql语句的值
       
        if (countAdmin > 0)
        {
            Session["Name"] = txtUserName.Text;
            //Session["Curid"] = adr["UserID"].ToString();//获取用户id
            if(cookie.Value==txtCode.Text)
            Page.Response.Redirect("Index.aspx");
            else
            {
                Response.Write("<script>alert('验证码错误!')</script>");
            }
        }
        else
        {
            Response.Write("<script language=javascript>alert('用户名或密码有误!');location='Login.aspx'</script>");//javascript.go(-1)
            return;
        }
        sqlcon.Close();

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtUserName.Text = "";
        txtPassword.Text = "";
        
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("Register.aspx");
    }
}