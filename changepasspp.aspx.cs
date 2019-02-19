using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class changepassjp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Server=.\sqlexpress;attachdbfilename=|datadirectory|\MESDB.mdf;Integrated Security=true;User Instance=true");

    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (Session["name"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection scon = new SqlConnection(@"server=.\sqlexpress;attachdbfilename=|datadirectory|\MESDB.mdf;integrated security=true;user instance=true");
            scon.Open();
            SqlCommand cmd = new SqlCommand("Select user_id from counsellors where user_id='" + txtuid.Text + "' and password='" + txtoldpass.Text + "'", scon);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                SqlCommand cmdnew = new SqlCommand("Update counsellors SET password='" + txtcnewpass.Text + "' where user_id='" + txtuid.Text + "' and password='" + txtoldpass.Text + "'", con);
                con.Open();
                cmdnew.ExecuteNonQuery();
                Response.Write("<script>alert('NEW PASSWORD SET!!!');</script>");

            }
            else
            {
                Response.Write("<script>alert('INCORRECT DETAILS!!!');</script>");

            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('UNSUCCESSFUL!!! CONTACT THE ADMIN');</script>");
        }
 

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Welcome_counsellor_pp.aspx");

    }
}
