using System;
using System.Net;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class test : System.Web.UI.Page
{
    public void GetId()
    {
        string nam=Session["Name"].ToString();
        SqlConnection cnn = new SqlConnection("server=(local);user=grid;database=new_yan;pwd=grid");
        //构造查询字符串
        string str = @"Select * from Publishing";
        //新建SqlCommand对象
        SqlCommand cmd = new SqlCommand(str, cnn);
        //打开数据库连接
        cnn.Open();
        //返回dr对象
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        string x = dr["P_ID"].ToString();
        //Label1.Text = dr["P_ID"].ToString();
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        GetId();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = Request.UserHostAddress;
        string hostname = Dns.GetHostName();
        TextBox3.Text = hostname;
        IPAddress[] ips;
        ips = Dns.GetHostAddresses(hostname);
        foreach (IPAddress ip in ips)
        {
            TextBox2.Text = ip.ToString();
        }
    }

    protected void HiddenField1_ValueChanged(object sender, EventArgs e)
    {
        Response.Write("<script language=javascript></script>");
    }


    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
}