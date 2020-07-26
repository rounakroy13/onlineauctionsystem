using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage1 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>");
        Response.Write("window.open('https://www.facebook.com/','_blank')");
        Response.Write("</script>");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>");
        Response.Write("window.open('https://twitter.com/','_blank')");
        Response.Write("</script>");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script>");
        Response.Write("window.open('https://plus.google.com/','_blank')");
        Response.Write("</script>");
    }
}
