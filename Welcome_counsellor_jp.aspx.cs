using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Welcome_counsellor_jp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            Label1.Text = Session["name"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Server.Transfer("Create_Stock_jp.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Server.Transfer("Manage_jp.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Server.Transfer("changepassjp.aspx");
    }
}
