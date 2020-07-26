using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class secure_auction : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        pn.Text = Request.QueryString["EntityID"];
        string name;
        name = Request.QueryString["EntityID"];
        SqlConnection con = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
        con.Open();
        SqlCommand com = new SqlCommand("SELECT Seller_name,Product_Category,Base_Price,buyer_id,Last_date,image from seller where product_name = @name", con);
        com.Parameters.AddWithValue("@name", name);
        SqlDataReader dr = com.ExecuteReader();
        while (dr.Read())
        { 
           // pn.Text = dr.GetString(0);
            sn.Text = dr.GetString(0);
            c.Text = dr.GetString(1);
            cp.Text = dr.GetInt32(2).ToString();
            if (dr.GetInt32(3).ToString() == "0")
                ln.Text = "No one BID yet";
            else
                ln.Text = dr.GetInt32(3).ToString();
            ld.Text = dr.GetDateTime(4).ToString();
            Image123.ImageUrl = dr.GetString(5);
        }
        dr.Close();
       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/secure/Default.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string name1 = Request.QueryString["EntityID"];
        string rec = Request.QueryString["rec"];
        SqlConnection con = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
        con.Open();
        SqlCommand com = new SqlCommand("UPDATE seller SET Base_Price = Base_Price + 500,buyer_id = @rec WHERE product_name = @name1", con);
        com.Parameters.AddWithValue("@rec", rec);
        com.Parameters.AddWithValue("@name1", name1);
        com.ExecuteNonQuery();
        con.Close();
        Page_Load(sender, e);
    }
}