using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class secure_loading : System.Web.UI.Page
{
    string pn,pn1,id,last;
    protected void Page_Load(object sender, EventArgs e)
    {
        Timer1.Enabled = true;
        pn = Request.QueryString["EntityID"];
        pn1 = Request.QueryString["Price"];
        id = Request.QueryString["id"];
        last = Request.QueryString["last"];
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
       // Response.Redirect("~/secure/transaction.aspx");
        Response.Redirect("~/secure/transaction.aspx?EntityID=" + pn + "&price=" + pn1 + "&id=" + id + "&last=" + last);
       
        Timer1.Enabled = false;
    }
}