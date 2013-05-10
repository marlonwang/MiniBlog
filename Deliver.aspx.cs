using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Deliver: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       SqlConnection sqlcon = new SqlConnection("server=(local);user=grid;database=new_yan;pwd=grid");
       
       if (!IsPostBack)
        {
            try
            {             
                labUserName.Text = Session["Name"].ToString() + "!";
                string strsql = "select * from Reply";
                sqlcon.Open();
                SqlDataAdapter myApter = new SqlDataAdapter(strsql, sqlcon);
                DataSet myDS = new DataSet();
                myApter.Fill(myDS, "Replies");
                sqlcon.Close();                
            }
            catch
            {
                Response.Write("<script language=javascript>alert('您还没有登录，或服务器超时，请重新登录!');location='Login.aspx'</Script>");
            }
        }
    }
    protected void btnDeliver_Click(object sender, EventArgs e)
    {
            //try
            //{
                string constr = "server=(local); user id=grid; database=new_yan; pwd=grid";
                
                SqlConnection conn = new SqlConnection(constr);
                conn.Open();

                string t_tle = txtCardTitle.Text;
                string d_ribe = TextBox1.Text;
                string c_tent = txtCardContent.Text;
               // DateTime date =DateTime.Parse(DateTime.Now.ToString()) ; 
               

                string sql_insert = "insert into Publishing(AuthorID,Author,Title,Describe,[Content],Time) values ('"+ Session["Curid"].ToString() + "','" + Session["Name"].ToString() + "','" + t_tle + "','" + d_ribe + "','" + c_tent + "',(getdate()))";//搞定 注意"',
                SqlCommand com = new SqlCommand(sql_insert,conn);
                com.ExecuteNonQuery();
                Response.Write("<script language=javascript>alert('帖子发表成功，恭喜你又多了一条成长记录！');location='Deliver.aspx'</script>");
                conn.Close();
                btnDeliver.Enabled = true;
           //}
           //catch
           // {
           //     Response.Write("<script language=javascript>alert('发帖失败，记得再来哦。')</script>");
           // }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }
}