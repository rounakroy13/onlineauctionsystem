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
public partial class Post_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void email()
    {
        MailMessage mailMessage = new MailMessage();
        mailMessage.To.Add(seller_email_txt.Text);
        mailMessage.From = new MailAddress("onlineauctionportal@gmail.com");
        mailMessage.Subject = "Your Product Successfully Posted";
        mailMessage.Body = "Welcome to Online Auction Portal ,\n\n Product Name : " + pro_name_txt.Text + "\n\n Seller Name : " + seller_name_txt.Text + "\n\n Base Price : " + prod_baseprice_txt.Text + "\n\n\n Your Product is Successfully Posted \n\n Thank You \n\n From : indiauction team \n\n Rounak Roy(CEO)";
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
    protected void Button1_Click(object sender, EventArgs e)
    {
       if (CheckBox1.Checked == true && FileUpload1.Enabled==false)
        {
            
            SqlConnection con = new SqlConnection(@"Data Source=Rounak\SQLExpress;Initial Catalog=auction;Integrated Security=True");
            con.Open();
            SqlCommand com1 = new SqlCommand("insert into Seller values(@pname,@sname,@cat,@sphone,@semail,@saddress,@pdescription,@pprice,@lastdate,@pimage,@date,@hour,@minute,'','stock')", con);
            com1.Parameters.AddWithValue("@pname", pro_name_txt.Text); 
           com1.Parameters.AddWithValue("@sname", seller_name_txt.Text);
            com1.Parameters.AddWithValue("@cat", cat_ddl.Text); 
            com1.Parameters.AddWithValue("@sphone", seller_phone_txt.Text);
            com1.Parameters.AddWithValue("@semail", seller_email_txt.Text);
            com1.Parameters.AddWithValue("@saddress", seller_address_txt.Text);
            com1.Parameters.AddWithValue("@pdescription", prod_description_txt.Text);
            com1.Parameters.AddWithValue("@pprice", prod_baseprice_txt.Text);
            com1.Parameters.AddWithValue("@lastdate", Convert.ToDateTime(prod_time_txt.Text)); 
            com1.Parameters.AddWithValue("@pimage", Image1.ImageUrl);
            com1.Parameters.AddWithValue("@date", DateTime.Now.Date);
            com1.Parameters.AddWithValue("@hour", DateTime.Now.Hour);
            com1.Parameters.AddWithValue("@minute", DateTime.Now.Minute);
            //com1.Parameters.AddWithValue("@seller", null);
            //com1.Parameters.AddWithValue("@status", "UNSOLD");
            com1.ExecuteNonQuery();
            email();
            con.Close();
           
            Response.Redirect("~/Login.aspx");
            MsgBox("Your Product Successfully posted");
            
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg")
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/C:/Users/user/Documents/Visual Studio 2010/WebSites/mproject/photo/") + filename);
                message.Text = "File Uploaded";
                FileUpload1.Enabled = false;
                Image1.ImageUrl= "~/photo/" + filename;
            }
            else
            {
                message.Text = "File must be on jpeg format";
            }
        }
        else
        {
            message.Text = "File Not Selected";
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
       
    }
    protected void prod_baseprice_txt_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
        Response.Write("<script>");
        Response.Write("window.open('tandc.aspx','_blank')");
        Response.Write("</script>");

    }
    public void MsgBox(string msg)
    {
        Page.ClientScript.RegisterStartupScript(Page.GetType(),"Message Box", "<script language='javascript'>alert('" + msg + "')</script>");
    }
}