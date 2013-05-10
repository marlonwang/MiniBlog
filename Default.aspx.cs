using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection("server=(local);user id=grid;database=new_yan; pwd=grid");
        if (!IsPostBack)
        {
            try
            {
                Labguestname.Text = Session["Name"].ToString() + "!";
                string strsql = "select * from Reply";
                sqlcon.Open();
                SqlDataAdapter myApter = new SqlDataAdapter(strsql, sqlcon);
                DataSet myDS = new DataSet();
                myApter.Fill(myDS, "Replies");
                sqlcon.Close();
                // ddlModuleName.DataSource = myDS;
                //ddlModuleName.DataValueField = "ModuleName";
                //ddlModuleName.DataBind();
            }
            catch
            {
              //  Response.Write("<script>alert('您还没有登录,请先登录!');location='Login.aspx'</Script>");
            }
        }
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection("server=(local);user id=grid;database=new_yan; pwd=grid");
        sqlcon.Open();
        SqlCommand sqlcom = sqlcon.CreateCommand();
        sqlcom.CommandText = "select count(*) from All_user where Users='" + txtUser.Text +
            "'and Password='" + txtPwd.Text + "'";
        int countAdmin = Convert.ToInt32(sqlcom.ExecuteScalar());//获取sql语句的值
        if (countAdmin > 0)
        {
            Session["Name"] = txtUser.Text;
            Page.Response.Redirect("Index.aspx");
        }
        else
        {
            Response.Write("<script language=javascript>alert('用户名或密码有误!');location='Login.aspx'</script>");
            return;
        }
        sqlcon.Close();
              
        //Response.Redirect("Login.aspx");
    }
    protected void btn_register_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    protected void txtUser_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Exit_Click(object sender, EventArgs e)
    {
        if (Session["Name"] == null)             //判断session是否存在
            Response.Write("<script language=javascript>alert('你还没有登录,无需退出');location='Index.aspx'</script>");
        else
        {
            Session.Clear();                     //清除Session的内存
            Session.Abandon();                   //取消会话状态
            Response.Redirect("Index.aspx");
        }
    }
    protected void get_time(object sender, EventArgs e)
    {
        btn_time.Text = DateTime.Now.ToLongTimeString();
        //string strTime = DateTime.Now.ToLongTimeString();

       
    }
}