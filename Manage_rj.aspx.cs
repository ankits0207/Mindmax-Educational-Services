using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Manage_jp : System.Web.UI.Page
{

    SqlCommand cmd, cmdn;
    SqlDataAdapter sda, sdan;
    SqlCommandBuilder scb, scbn;
    DataSet ds, dsn;
    DataRow dr,drn;
    SqlConnection con = new SqlConnection(@"Server=.\sqlexpress;attachdbfilename=|datadirectory|\MESDB.mdf;Integrated Security=true;User Instance=true");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        cmd = new SqlCommand("select * from rj_issue", con);
        sda = new SqlDataAdapter(cmd);
        scb = new SqlCommandBuilder(sda);
        ds = new DataSet();
        sda.Fill(ds);
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            int select_new_s = 0;

            for (int j = 0; j <= GridView6.Rows.Count - 1; j++)
            {
                GridViewRow rows = GridView6.Rows[j];
                CheckBox Chboxs = (CheckBox)rows.FindControl("chb3");
                if (Chboxs.Checked == true)
                {
                    select_new_s++;
                }
            }

            if (select_new_s == 0)
            {
                Response.Write("<script>alert('FIND AND SELECT STUDENT!!!');</script>");

                return;

            }
            string sname = GridView6.Rows[0].Cells[1].Text;
            string regno = GridView6.Rows[0].Cells[2].Text;
            string eid = GridView6.Rows[0].Cells[3].Text;
            string mno = GridView6.Rows[0].Cells[4].Text;
            int select_new = 0;
            for (int i = 0; i <= GridView4.Rows.Count - 1; i++)
            {
                GridViewRow row = GridView4.Rows[i];
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
            


            for (int i = 0; i <= GridView4.Rows.Count - 1; i++)
            {
                

                string batch = GridView4.Rows[i].Cells[1].Text;
                string subject = GridView4.Rows[i].Cells[2].Text;
                string book = GridView4.Rows[i].Cells[3].Text;
                GridViewRow rows = GridView4.Rows[i];
                CheckBox Chbox = (CheckBox)rows.FindControl("chb2");
                if (Chbox.Checked == true)
                {
                    SqlCommand cmd = new SqlCommand("insert into rj_issue values('" + sname + "','" + regno + "','" + eid + "','" + mno + "','" + batch + "','" + subject + "','" + book + "','" + ddldefault.Text + "','" + Session["name"].ToString() + "','" + txtissuedate.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
               


                
            }
            Response.Redirect("Manage_rj.aspx");


        }

        catch (SqlException error)
        {
            Response.Write("<script>alert('UNSUCCESSFUL!!! BOOK ALREADY ISSUED TO THIS STUDENT');</script>");

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('UNSUCCESSFUL!!! CONTACT THE ADMIN');</script>");
        }

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("insert into rj_students values('" + txtsname.Text + "','" + txtregno.Text + "','" + txteid.Text + "','" + txtmno.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "Successfully Registered";
            txtsname.Text = "";
            txtregno.Text = "";
            txteid.Text = "";
            txtmno.Text = "";

        }
        catch (SqlException error)
        {
            Response.Write("<script>alert('UNSUCCESSFUL!!! STUDENT ALREADY REGISTERED');</script>");

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('UNSUCCESSFUL!!! CONTACT THE ADMIN');</script>");
        }



        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Welcome_counsellor_rj.aspx");

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            DataView dv = new DataView();
            dv.Table = ds.Tables[0];
            dv.RowFilter = "registration_no in('" + TextBox1.Text + "')";
            GridView5.DataSource = dv;
            GridView5.DataBind();
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
            cmdn = new SqlCommand("select * from rj_students", con);
            sdan = new SqlDataAdapter(cmdn);
            scbn = new SqlCommandBuilder(sdan);
            dsn = new DataSet();
            sdan.Fill(dsn);
            DataView dvn = new DataView();
            dvn.Table = dsn.Tables[0];
            dvn.RowFilter = "regno in('" + txtissuereg.Text + "')";
            GridView6.DataSource = dvn;
            GridView6.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('UNSUCCESSFUL!!! CONTACT THE ADMIN');</script>");
        }

        
    }
}
