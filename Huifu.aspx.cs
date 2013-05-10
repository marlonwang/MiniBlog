using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Huifu: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Name"]==null)
            Response.Write("<script>alert('您还没有登录，请登录后再来发言。');location='Login.aspx'</Script>");  
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {    
        try
        {

            SqlConnection con = new SqlConnection("server=(local);user id=grid; database=new_yan; pwd=grid");
            con.Open();
            
            string rewords = repBox1.Text;
            //string inid = Session["Inid"].ToString();/// the  oldone
            int inid = System.Convert.ToInt32(Page.Request.QueryString["id"]);
            //string inid = Session["nowid"].ToString();
            string sql_insert = "insert into Reply(R_ID,R_user,R_content,R_time) values('"+ inid + "','" + Session["Name"].ToString() + "','" + rewords +  "',(getdate()))";
            SqlCommand com = new SqlCommand(sql_insert, con);
            com.ExecuteNonQuery();
            //Response.Write(inid);//获取id成功。太好啦
            Response.Write("<script language=javascript>alert('评论发表成功,你可以继续评论！');location='Huifu.aspx'</script>");
            con.Close();

            Button1.Enabled = true;

        }
        catch
        {
            Response.Write("<script language=javascript>alert('发帖失败，记得再来哦。')</script>");

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        repBox1.Text = "";
    }
    protected void repBox1_TextChanged(object sender, EventArgs e)
    {

    }
}