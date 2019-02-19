using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            Response.Write("<script>alert('Please Logout before new Login');</script>");
        }
        else
        {
            Server.Transfer("Login.aspx");
        }
        
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Server.Transfer("ContactUs.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Server.Transfer("Login.aspx");

        
    }
}
