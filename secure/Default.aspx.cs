using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class secure_Default : System.Web.UI.Page
{
    string name, rec1, id, last;
    public void data_bind()
    {
        SqlConnection con = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
        SqlDataAdapter data = new SqlDataAdapter("SELECT Product_id,Product_name,Seller_name,image,Base_Price,date from seller where Product_Category=@cat AND Base_Price<=@pr AND status='stock'", con);
        data.SelectCommand.Parameters.AddWithValue("@cat", DropDownList1.Text);
        data.SelectCommand.Parameters.AddWithValue("@pr", Convert.ToInt32(DropDownList2.Text));
        DataSet ds = new DataSet();
        data.Fill(ds, "seller");
        GridView2.DataSource = ds.Tables["seller"];
        GridView2.DataBind();
    }
    public void data_bind2()
    {
        name = Page.User.Identity.Name;
        SqlConnection con = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
        con.Open();
        SqlCommand com = new SqlCommand("SELECT buyer_id from buyer_table where buyer_email = @name", con);
        com.Parameters.AddWithValue("@name", name);
        SqlDataReader dr = com.ExecuteReader();
        while (dr.Read())
        { rec1 = dr.GetInt32(0).ToString(); }
        SqlConnection con1 = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
        SqlDataAdapter data = new SqlDataAdapter("SELECT Product_name,Base_Price from seller where buyer_id=@cat AND status = 'OPEN' ", con1);
        data.SelectCommand.Parameters.AddWithValue("@cat", rec1);
        DataSet ds = new DataSet();
        data.Fill(ds, "seller");
        GridView3.DataSource = ds.Tables["seller"];
        GridView3.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string name;
        name = Page.User.Identity.Name;
        SqlConnection con = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
        con.Open();
        SqlCommand com = new SqlCommand("SELECT buyer_name from buyer_table where buyer_email = @name", con);
        com.Parameters.AddWithValue("@name",name);
        SqlDataReader dr = com.ExecuteReader();
        while(dr.Read())
        { name = dr.GetString(0);}
        Label3.Text = name;
        data_bind2();

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        data_bind();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        data_bind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
  
        GridViewRow row = GridView2.SelectedRow;
        
        name = Page.User.Identity.Name;
        SqlConnection con = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
        con.Open();
        SqlCommand com = new SqlCommand("SELECT buyer_id from buyer_table where buyer_email = @name", con);
        com.Parameters.AddWithValue("@name",name);
        SqlDataReader dr = com.ExecuteReader();
         while(dr.Read())
        { rec1 = dr.GetInt32(0).ToString();}
        Response.Redirect("~/secure/auction.aspx?EntityID="+row.Cells[0].Text + "&rec=" + rec1);

        
    }
    


    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
    }
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
   
    }

    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

        GridViewRow row = GridView3.SelectedRow;
        string pr;
        name = Page.User.Identity.Name;
        SqlConnection con = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
        con.Open();
        SqlCommand com = new SqlCommand("SELECT buyer_id from buyer_table where buyer_email = @name", con);
        com.Parameters.AddWithValue("@name", name);
        SqlDataReader dr = com.ExecuteReader();
        while (dr.Read())
        { rec1 = dr.GetInt32(0).ToString(); }
        dr.Close();

        SqlCommand com1 = new SqlCommand("SELECT Product_id,buyer_id from seller where buyer_id = @rec AND Product_name=@pname AND Base_Price=@price", con);
        com1.Parameters.AddWithValue("@rec", rec1);
        com1.Parameters.AddWithValue("@pname", row.Cells[0].Text);
        com1.Parameters.AddWithValue("@price", row.Cells[1].Text);
        SqlDataReader dr1 = com1.ExecuteReader();
        while (dr1.Read())
        { id = dr1.GetInt32(0).ToString(); last = dr1.GetInt32(0).ToString(); }
        Response.Redirect("~/secure/Loading.aspx?EntityID=" + row.Cells[0].Text + "&price=" + row.Cells[1].Text + "&id=" + id + "&last=" + rec1);

     //   Response.Redirect("~/secure/Loading.aspx");
    }
}