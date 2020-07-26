using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime time;
        time = DateTime.Now;
        SqlConnection con = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
        con.Open();
        SqlCommand com1 = new SqlCommand("Update seller set status = 'OPEN' where Last_date < @ctime AND status = 'stock'", con);
        com1.Parameters.AddWithValue("@ctime", time);
        com1.ExecuteNonQuery();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        
        SqlConnection con = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from buyer_table where buyer_email=@eid and buyer_pass=@pass", con);
        cmd.Parameters.AddWithValue("@eid", Login1.UserName);
        cmd.Parameters.AddWithValue("@pass", Login1.Password);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            e.Authenticated = true;

        }
    }
    protected void Login2_Authenticate(object sender, AuthenticateEventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from admin where email_id=@eid and password=@pass", con);
        cmd.Parameters.AddWithValue("@eid", Login2.UserName);
        cmd.Parameters.AddWithValue("@pass", Login2.Password);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            e.Authenticated = true;

        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Post_add.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/buyers_register.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/feedback.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Contact_us.aspx");
    }
}