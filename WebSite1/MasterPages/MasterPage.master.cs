using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPages_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (AppGlobal.isCustomerLoggedIn == true && AppGlobal.LoggedInCustomerId != -1)
        {
            Button1.Text = "Logout";
            TextBox3.Visible = true;
            TextBox3.Text = "Welcome " + AppGlobal.LoggedInCustomerName;
            Button12.Visible = true;
            Button12.Text = "My Account";
            Button2.Enabled = true;
        }
        else
        {
            Button1.Text = "Login";
            TextBox3.Visible = false;
            Button12.Text = "Register";
            Button2.Enabled = false;
        }
    }

    public string login_txt
    {
        get { return Button1.Text; }
        set { Button1.Text = value; }
    }

    public void test()
    {
    }
    protected void Button7_Click(object sender, EventArgs e) // shoes
    {
        AppGlobal.selectedMenu = "1";
        AppGlobal.selectedsubmenu = "1";
        Response.Redirect("menu.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text.Equals("Login"))
            Response.Redirect("login_2.aspx", false);
        else
        {
            Button1.Text = "Login";
            AppGlobal.isCustomerLoggedIn = false;
            AppGlobal.LoggedInCustomerId = -1;
            AppGlobal.LoggedInCustomerName = "";
            Button12.Enabled = false;
            Response.Redirect("home.aspx");
        }
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        if (Button12.Text.Equals("My Account"))
            Response.Redirect("myaccount.aspx");
        else
            Response.Redirect("register.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        AppGlobal.selectedMenu = "2";
        AppGlobal.selectedsubmenu = "6";
        Response.Redirect("menu.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        AppGlobal.selectedMenu = "3";
        AppGlobal.selectedsubmenu = "11";
        Response.Redirect("menu.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        AppGlobal.selectedMenu = "4";
        AppGlobal.selectedsubmenu = "16";
        Response.Redirect("menu.aspx");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        AppGlobal.selectedMenu = "5";
        AppGlobal.selectedsubmenu = "21";
        Response.Redirect("menu.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("abt us.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("HelpUs.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("contactUs.aspx");
    }
    protected void Unnamed1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}
