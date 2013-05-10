using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Index: System.Web.UI.Page
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
               
            }
            catch
            {
                // Response.Write("<script>alert('您还没有登录,请先登录!');location='Login.aspx'</Script>");
            }
        }
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection("server=(local);user id=grid;database=new_yan; pwd=grid");
        sqlcon.Open();
        SqlCommand sqlcom = sqlcon.CreateCommand();
        sqlcom.CommandText = "select * from All_user where Users='" + txtUser.Text +
            "'and Password='" + txtPwd.Text + "'";
        //int countAdmin = Convert.ToInt32(sqlcom.ExecuteScalar());//获取sql语句的值
        SqlDataReader sdr = sqlcom.ExecuteReader();
        //if (countAdmin > 0)
        if(sdr.Read())
        {
            Session["Name"] = txtUser.Text;
            Session["Curid"] = sdr["UserID"].ToString();//获取userid成功
            //Response.Write(Session["Curid"]);
            Page.Response.Redirect("Index.aspx");
        }
        else
        {
            Response.Write("<script language=javascript>alert('用户名或密码有误!');location='Login.aspx'</script>");
            return;
        }
        sdr.Close();
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
        //btn_time.Text = DateTime.Now.ToLongTimeString();
        string strTime = DateTime.Now.ToLongTimeString();
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
      

    }
    protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
    protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)//绑定到父层id 成功！
    {
       
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Repeater rep = e.Item.FindControl("Repeater2") as Repeater;//找到里层的repeater对象
            DataRowView rowv = (DataRowView)e.Item.DataItem;//找到分类Repeater关联的数据项 
            int typeid = Convert.ToInt32(rowv["P_ID"]); //获取填充子类的id 

           // Session["Inid"] = typeid;

            string sqlstr = "select * from Reply where R_ID =" + typeid;
            SqlConnection con = new SqlConnection("server=(local);user id=grid;database=new_yan; pwd=grid");
            SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            rep.DataSource = ds;
            rep.DataBind();
        }
        
    }    
}