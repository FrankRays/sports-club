using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContentPages_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string username = Request.Form["un"];
        //string pwd = Login1.Password;
        //string s;
        //s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //SqlConnection con = new SqlConnection(s);
        //con.Open();
        //string sqlUserName;
        //sqlUserName = "SELECT id,username,password FROM customers WHERE username ='" + username + "' AND password ='" + pwd + "'";
        //SqlCommand cmd = new SqlCommand(sqlUserName, con);
        //string CurrentName;
        //CurrentName = (string)cmd.ExecuteScalar();
    }
}