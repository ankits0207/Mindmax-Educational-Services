using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (rbl.Items[0].Selected)
            {
                SqlConnection scon = new SqlConnection(@"server=.\sqlexpress;attachdbfilename=|datadirectory|\MESDB.mdf;integrated security=true;user instance=true");
                scon.Open();
                SqlCommand cmd = new SqlCommand("Select first_name from counsellors where user_id='" + txtusername.Text + "' and password='" + txtpassword.Text + "' and center='" + rbl_c.Text + "'", scon);
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    String N = reader.GetString(0);
                    Session["name"] = reader.GetString(0);
                    if (N == "NEHA" || N == "SAROJ")
                    {
                        Response.Redirect("Welcome_counsellor_pp.aspx");

                    }
                    else if (N == "PREETI" || N == "RAKHI")
                    {
                        Response.Redirect("Welcome_counsellor_jp.aspx");

                    }
                    else if (N == "MOHINI" || N == "MUKESH")
                    {
                        Response.Redirect("Welcome_counsellor_rj.aspx");

                    }


                }
                else
                {
                    Response.Write("<script>alert('INVALID LOGIN ATTEMPT!!!');</script>");


                }
            }


            else if (rbl.Items[1].Selected)
            {
                SqlConnection scon = new SqlConnection(@"server=.\sqlexpress;attachdbfilename=|datadirectory|\MESDB.mdf;integrated security=true;user instance=true");
                scon.Open();
                SqlCommand cmd = new SqlCommand("Select first_name from admin where user_id='" + txtusername.Text + "' and password='" + txtpassword.Text + "'", scon);
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    if (rbl_c.Items[0].Selected)
                    {
                        Session["name"] = reader.GetString(0);
                        Response.Redirect("admin_jp.aspx");

                    }
                    else if (rbl_c.Items[1].Selected)
                    {
                        Session["name"] = reader.GetString(0);
                        Response.Redirect("admin_pp.aspx");

                    }
                    else if (rbl_c.Items[2].Selected)
                    {
                        Session["name"] = reader.GetString(0);
                        Response.Redirect("admin_rj.aspx");

                    }
                }
                else
                {
                    Response.Write("<script>alert('INVALID LOGIN ATTEMPT!!!');</script>");


                }
            }

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('UNSUCCESSFUL!!! CONTACT THE ADMIN');</script>");
        }
    }
    
}
