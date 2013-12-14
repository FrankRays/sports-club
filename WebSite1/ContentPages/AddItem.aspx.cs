using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class ContentPages_AddItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.status.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            String name = this.newitemcontrol.TextBox1Value;
            String description = this.newitemcontrol.TextBox2Value;
            String value = this.newitemcontrol.TextBox3Value;
            String subcatid = this.newitemcontrol.subcatid;

            int sellerid;
            int custid = AppGlobal.LoggedInCustomerId;
            string s;
            s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(s);
            con.Open();
            string query1 = "select selleraccountid from customers where id = '" + custid + "'";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            sellerid = (int)cmd1.ExecuteScalar();
            string query2 = "insert into items values('" + name + "','" + description + "','" + value + "','" + sellerid + "','" + subcatid + "')";
            SqlCommand cmd2 = new SqlCommand(query2, con);

            if (cmd2.ExecuteNonQuery() == 1)
            {
                int itemid;
                string query3 = "select id from items where name = '" + name + "' and price = '" + value + "' and description = '" + description + "' and subcategoryid = '" + subcatid + "'";
                SqlCommand cmd3 = new SqlCommand(query3, con);
                itemid = (int)cmd3.ExecuteScalar();
                this.newitemcontrol.updateFile(itemid);
                this.status.Visible = true;
                this.status.Text = "Item Successfully added for sale";
                this.newitemcontrol.TextBox1Value = "";
                this.newitemcontrol.TextBox2Value = "";
                this.newitemcontrol.TextBox3Value = "";
            }
            else
            {
                this.status.Visible = true;
                this.status.Text = "Item could not be added.Please try again.";
                this.newitemcontrol.TextBox1Value = "";
                this.newitemcontrol.TextBox2Value = "";
                this.newitemcontrol.TextBox3Value = "";
            }
        }
        catch (Exception ex)
        {
            this.status.Visible = true;
            this.status.Text = "Item could not be added.Please try again.";
            this.newitemcontrol.TextBox1Value = "";
            this.newitemcontrol.TextBox2Value = "";
            this.newitemcontrol.TextBox3Value = "";
        }
    }
}