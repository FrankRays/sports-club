using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_newitem : System.Web.UI.UserControl
{
    public String TextBox1Value
    {
        get { return this.TextBox1.Text; }
        set { this.TextBox1.Text = value; }
    }
    public String TextBox2Value
    {
        get { return this.TextBox2.Text; }
        set { this.TextBox2.Text = value; }
    }
    public String TextBox3Value
    {
        get { return this.TextBox3.Text; }
        set { this.TextBox3.Text = value; }
    }

    public string subcatid
    {
        get { return this.DropDownList2.SelectedValue; }
    }

    public void updateFile(int id)
    {
        this.FileUpload1.SaveAs(Server.MapPath("..\\Images\\ItemImages\\" + id+".jpg"));
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}