using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
using System.Net.Mail;


public partial class secure_transaction : System.Web.UI.Page
{
    string pn, pn1, id, s1, s2, s3, s4, last, b1, b2;
    protected void Page_Load(object sender, EventArgs e)
    {
        pn = Request.QueryString["EntityID"];
        pn1 = Request.QueryString["Price"];
        id = Request.QueryString["id"];
        price.Text = Request.QueryString["Price"];
        last = Request.QueryString["last"];
        s();
        b();
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
        con.Open();
        SqlCommand com1 = new SqlCommand("Update Seller set status = 'SOLD' where Product_id=@id", con);
        com1.Parameters.AddWithValue("@id", id);
        com1.ExecuteNonQuery();
        email1();
        email2();
        con.Close();
        Response.Redirect("~/Login.aspx");
        
    }
    public void s()
    {
        id = Request.QueryString["id"];
        SqlConnection con = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
        con.Open();
        SqlCommand com = new SqlCommand("SELECT Seller_name,Product_name,Base_Price,Seller_email from seller where product_id = @id", con);
        com.Parameters.AddWithValue("@id", id);
        SqlDataReader dr = com.ExecuteReader();
        while (dr.Read())
        {
            
            s1 = dr.GetString(0);
            s2 = dr.GetString(1);
            s3 = dr.GetInt32(2).ToString();
            s4 = dr.GetString(3);
            email.Text = dr.GetString(3); 
        }
        dr.Close();
    }
    public void email1()
    {
        MailMessage mailMessage = new MailMessage();
        mailMessage.To.Add(email.Text);
        mailMessage.From = new MailAddress("onlineauctionportal@gmail.com");
        mailMessage.Subject = "Your Product Sold";
        mailMessage.Body = "Welcome to Online Auction Portal , \n\n Transaction Successful \n\n Hello " + s1 + " \n\n Product Name : " + s2 + "\n\n Sold on Rupess (INR) : " + s3 + "\n\n Contact Buyer for further Details \n\n Thank You \n\n From : indiauction team \n\n Rounak Roy(CEO)";
        //  SmtpClient smtpClient = new SmtpClient("smtp.your-isp.com");
        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
        smtpClient.EnableSsl = true;
        smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtpClient.UseDefaultCredentials = false;
        smtpClient.Credentials = new System.Net.NetworkCredential("onlineauctionportal", "onlinerounak");
        //  smtpClient.Send(mailMessage);

        smtpClient.Send(mailMessage);
        Response.Write("E-mail sent!");
    }
    public void email2()
    {
        MailMessage mailMessage4 = new MailMessage();
        mailMessage4.To.Add(b2);
        mailMessage4.From = new MailAddress("onlineauctionportal@gmail.com");
        mailMessage4.Subject = "You Successfully buy a Product";
        mailMessage4.Body = "Welcome to Online Auction Portal , \n\n Transaction Successful \n\n Hello " + b1 + " \n\n Product Name : " + s2 + "\n\n Sold on Rupess (INR) : " + s3 + "\n\n Contact Seller for further Details \n\n Thank You \n\n From : indiauction team \n\n Rounak Roy(CEO)";
        //  SmtpClient smtpClient = new SmtpClient("smtp.your-isp.com");
        SmtpClient smtpClient4 = new SmtpClient("smtp.gmail.com", 587);
        smtpClient4.EnableSsl = true;
        smtpClient4.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtpClient4.UseDefaultCredentials = false;
        smtpClient4.Credentials = new System.Net.NetworkCredential("onlineauctionportal", "onlinerounak");
        //  smtpClient.Send(mailMessage);

        smtpClient4.Send(mailMessage4);
        Response.Write("E-mail sent!");
    }
    public void b()
    {
        last = Request.QueryString["last"];
        SqlConnection con1 = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
        con1.Open();
        SqlCommand com1 = new SqlCommand("SELECT buyer_name,buyer_email from buyer_table where buyer_id = @id", con1);
        com1.Parameters.AddWithValue("@id", last);
        SqlDataReader dr = com1.ExecuteReader();
        while (dr.Read())
        {

            b1 = dr.GetString(0);
            b2 = dr.GetString(1);
            //s3 = dr.GetInt32(2).ToString();
            //s4 = dr.GetString(3);
            //email.Text = dr.GetString(3);
        }
        dr.Close();
    }
}