using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        feedbak.TextMode = TextBoxMode.MultiLine;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
            SqlConnection con = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
            con.Open();
            SqlCommand com1 = new SqlCommand("insert into feedback values(@name,@email,@feedback)", con);
            com1.Parameters.AddWithValue("@name", name.Text); 
            com1.Parameters.AddWithValue("@email", email.Text);
            com1.Parameters.AddWithValue("@feedback", feedbak.Text); 
            com1.ExecuteNonQuery();
            con.Close();
            name.Text = "";
            email.Text = "";
            feedbak.Text = "";
       
    }
}