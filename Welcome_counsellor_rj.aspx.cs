using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Welcome_counsellor_rj : System.Web.UI.Page
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
        Server.Transfer("Create_Stock_rj.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Server.Transfer("Manage_rj.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Server.Transfer("changepassrj.aspx");
    }
}

