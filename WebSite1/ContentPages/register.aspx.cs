using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class ContentPages_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string firstname = fn.Text;
        string middlename = mn.Text;
        string lastname = ln.Text;
        string emailaddr = email.Text;
        string username = un.Text;
        string pw = password.Text;
        
        string s;
        s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(s);
        con.Open();
        string query1 = "select count(*) from customers";
        SqlCommand cmd1 = new SqlCommand(query1, con);
        int count = (int)cmd1.ExecuteScalar();
        string query = "insert into customers values ('" + firstname + "','" + lastname + "','" + middlename + "','" + emailaddr + "','" + username + "','" + pw + "',1,"+count+")";
        SqlCommand cmd = new SqlCommand(query, con);
        
        int CurrentName;
        CurrentName = cmd.ExecuteNonQuery();
        if (CurrentName == 1)
        {
            fn.Text = "";
            mn.Text = "";
            ln.Text = "";
            un.Text = "";
            password.Text = "";
            email.Text = "";
            status.Text = "Registration Successfull. Please login.";
            status.Visible = true;
        }
        else
        {
            fn.Text = "";
            mn.Text = "";
            ln.Text = "";
            un.Text = "";
            password.Text = "";
            email.Text = "";
            status.Text = "Registration Failed. Please try again";
            status.Visible = true;
        }
    }
}