using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class ContentPages_login_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
            string username = Login1.UserName;
            string pwd = Login1.Password;
            string s;
            s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(s);
            con.Open();
            string sqlUserName;
            sqlUserName = "SELECT id,username,password FROM customers WHERE username ='" + username + "' AND password ='" + pwd + "'";
            SqlCommand cmd = new SqlCommand(sqlUserName, con);
            string CurrentName;
            CurrentName = (string)cmd.ExecuteScalar();
            if (CurrentName != null)
            {
                AppGlobal.isCustomerLoggedIn = true;
                AppGlobal.LoggedInCustomerId = CurrentName;
                AppGlobal.LoggedInCustomerName = username;

                Response.Redirect("home.aspx");

            }
            else
            {

            }
        
    }
}