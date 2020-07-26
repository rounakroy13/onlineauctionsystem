using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            string name;
            name = Page.User.Identity.Name;
            SqlConnection con = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("SELECT admin_name from admin where email_id = @name", con);
            com.Parameters.AddWithValue("@name", name);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            { name = dr.GetString(0); }
            Label1.Text = name;

        }
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;
            GridView3.Visible = false;
        }
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            GridView2.Visible = true;
            GridView1.Visible = false;
            GridView3.Visible = false;
        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
  
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
    protected void RadioButton3_CheckedChanged2(object sender, EventArgs e)
    {
        if (RadioButton3.Checked == true)
        {
            GridView3.Visible = true;
            GridView1.Visible = false;
            GridView2.Visible = false;
        }
    }
}