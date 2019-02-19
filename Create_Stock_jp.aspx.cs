using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Create_Stock_jp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Server=.\sqlexpress;attachdbfilename=|datadirectory|\MESDB.mdf;Integrated Security=true;User Instance=true");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void ddlcreatesubjectbook_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        try
        {

            SqlCommand cmd = new SqlCommand("insert into jp_batch values('" + txtcbatch.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            txtcbatch.Text = "";
            con.Close();
            Response.Redirect("Create_stock_jp.aspx");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('UNSUCCESSFUL!!! CONTACT THE ADMIN');</script>");
        }

        
    }
     
    
    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {
            int select = 0;
            for (int i = 0; i <= gv_bs.Rows.Count - 1; i++)
            {
                GridViewRow row = gv_bs.Rows[i];
                CheckBox Chbox = (CheckBox)row.FindControl("chb1");
                if (Chbox.Checked == true)
                {
                    select++;
                }
            }

            if (select == 0)
            {
                Response.Write("<script>alert('SELECT BATCH AND SUBJECT!!!');</script>");

                return;
            }

            for (int i = 0; i <= gv_bs.Rows.Count - 1; i++)
            {
                string batch = gv_bs.Rows[i].Cells[1].Text;
                string subject = gv_bs.Rows[i].Cells[2].Text;
                GridViewRow row = gv_bs.Rows[i];
                CheckBox Chbox = (CheckBox)row.FindControl("chb1");
                if (Chbox.Checked == true)
                {
                    SqlCommand cmd = new SqlCommand("insert into jp_book values('" + batch + "','" + subject + "','" + txtcbook.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    txtcbook.Text = "";
                    con.Close();
                    Response.Redirect("Create_stock_jp.aspx");
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('UNSUCCESSFUL!!! CONTACT THE ADMIN');</script>");
        }
            
     }
   protected void Button6_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("insert into jp_subject values('" + ddlcreatebatch.Text + "','" + txtcsubject.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            txtcsubject.Text = "";
            con.Close();
            Response.Redirect("Create_stock_jp.aspx");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('UNSUCCESSFUL!!! CONTACT THE ADMIN');</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            int select_new = 0;
            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                GridViewRow row = GridView1.Rows[i];
                CheckBox Chbox = (CheckBox)row.FindControl("chb2");
                if (Chbox.Checked == true)
                {
                    select_new++;
                }
            }

            if (select_new == 0)
            {
                Response.Write("<script>alert('SELECT BATCH,SUBJECT AND BOOK!!!');</script>");

                return;
            }

            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                string batch = GridView1.Rows[i].Cells[1].Text;
                string subject = GridView1.Rows[i].Cells[2].Text;
                string book = GridView1.Rows[i].Cells[3].Text;
                GridViewRow row = GridView1.Rows[i];
                CheckBox Chbox = (CheckBox)row.FindControl("chb2");
                if (Chbox.Checked == true)
                {
                    SqlCommand cmd = new SqlCommand("insert into jp_entry values('" + batch + "','" + subject + "','" + book + "','" + txtequantity.Text + "','" + txtechallan.Text + "','" + txtedate.Text + "','" + Session["name"].ToString() + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    txtequantity.Text = "";
                    txtechallan.Text = "";
                    txtedate.Text = "";
                    con.Close();
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('UNSUCCESSFUL!!! CONTACT THE ADMIN');</script>");
        }
        
        

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Welcome_counsellor_jp.aspx");

    }
}
