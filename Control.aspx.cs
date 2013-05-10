using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Control: System.Web.UI.Page
{
    SqlConnection sqlcon;
    SqlCommand sqlcom;
    string ConStr = "Server=(local); user=grid; pwd=grid; database=new_yan";

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection("server=(local);user=grid;database=new_yan;pwd=grid");
        if (!IsPostBack)
        {
            try
            {
                Label1.Text = Session["Admin"].ToString() + "!";
                string strsql = "select * from Reply";
                sqlcon.Open();
                SqlDataAdapter myApter = new SqlDataAdapter(strsql, sqlcon);
                DataSet myDS = new DataSet();
                myApter.Fill(myDS, "Replies");
                sqlcon.Close();
            }
            catch
            {
                Response.Write("<script language=javascript>alert('您还没有登录或登录不合法！');location='Adlogin.aspx'</Script>");
            }
        }
           
            sqlcon = new SqlConnection(ConStr);
            string SqlStr = "select [Author],[Describe],[Title],[Content] from Publishing";
            SqlDataAdapter da = new SqlDataAdapter(SqlStr, sqlcon);
            sqlcon.Open();
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            sqlcon.Close();            
    } 
      
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, System.EventArgs e)
    { try
        {
            
            sqlcon = new SqlConnection(ConStr);
            string SqlStr = "select  [Author],[Title],[Content] from Publishing";
            SqlDataAdapter da = new SqlDataAdapter(SqlStr, sqlcon);
            sqlcon.Open();
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            sqlcon.Close();
        //    Response.Write("<script language=javascript>alert('连接成功,正在载入数据...')</script>");

        }
        catch
        {
            Response.Write("<script language=javascript>alert('连接失败,请检查网络环境')</script>");
        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sql_str = "delete from Publishing where Author='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
        sqlcon = new SqlConnection(ConStr);
        sqlcom = new SqlCommand(sql_str,sqlcon);
        sqlcon.Open();
        sqlcom.ExecuteNonQuery();
        sqlcon.Close();
        sqlcon.Open();
        string SqlStr = "select * from Publishing";
        SqlDataAdapter ada = new SqlDataAdapter(SqlStr, sqlcon);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataKeyNames = new System.String[] { "Author" };
        GridView1.DataBind();
        sqlcon.Close();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ((LinkButton)(e.Row.Cells[3].Controls[0])).Attributes.Add("onclick", "return confirm('确定要删除吗？')");
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        sqlcon = new SqlConnection(ConStr);
        string SqlStr = "select [Author],[Title],[Content] from Publishing";
        SqlDataAdapter da = new SqlDataAdapter(SqlStr, sqlcon);
        sqlcon.Open();
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        sqlcon.Close();
    }
    protected void btn_Exit_Click(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)             //判断session是否存在
            Response.Write("<script language=javascript>alert('你还没有登录,无需退出');location='Index.aspx'</script>");
        else
        {
            Session.Clear();                     //清除Session的内存
            Session.Abandon();                   //取消会话状态
            Response.Redirect("Adlogin.aspx");
        }
    }
}