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

public partial class buyers_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void email()
    {
        MailMessage mailMessage1 = new MailMessage();
        mailMessage1.To.Add(buy_email_txt.Text);
        mailMessage1.From = new MailAddress("onlineauctionportal@gmail.com");
        mailMessage1.Subject = "Your Account is Successfully Created";
        mailMessage1.Body = "Welcome to Online Auction Portal ,\n\n Name : " + buy_name_txt.Text + "\n\n Account is Successfully Created \n\n Enjoy your shopping and biding experience with indiauction.com \n\n Thank You \n\n From : indiauction team \n\n Rounak Roy(CEO)";
        SmtpClient smtpClient1 = new SmtpClient("smtp.gmail.com", 587);
        smtpClient1.EnableSsl = true;
        smtpClient1.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtpClient1.UseDefaultCredentials = false;
        smtpClient1.Credentials = new System.Net.NetworkCredential("onlineauctionportal", "onlinerounak");
        //  smtpClient.Send(mailMessage);

        smtpClient1.Send(mailMessage1);
        Response.Write("E-mail sent!");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
   

    protected void buy_country_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void tc_check_CheckedChanged(object sender, EventArgs e)
    {
       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (tc_check.Checked == true)
        {

            SqlConnection con = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("insert into buyer_table values(@name,@email,@pass,@country,@city,@address,@age,@phone)", con);
            com.Parameters.AddWithValue("@name", buy_name_txt.Text);
            com.Parameters.AddWithValue("@email", buy_email_txt.Text);
            com.Parameters.AddWithValue("@pass", buy_pass_txt.Text);
            com.Parameters.AddWithValue("@country", buy_country_ddl.Text);
            com.Parameters.AddWithValue("@city", buy_city_txt.Text);
            com.Parameters.AddWithValue("@address", buy_address_txt.Text);
            com.Parameters.AddWithValue("@age", buy_age_txt.Text);
            com.Parameters.AddWithValue("@phone", buy_phone_txt.Text);
            com.ExecuteNonQuery();
            email();
            con.Close();
            Response.Redirect("~/Login.aspx");
        }
      
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>");
        Response.Write("window.open('tandc.aspx','_blank')");
        Response.Write("</script>");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
    protected void buy_pass_txt_TextChanged(object sender, EventArgs e)
    {

    }
}