using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContentPages_myaccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        e.Command.Parameters["@id"].Value = AppGlobal.LoggedInCustomerId;
    }
    
    protected void SqlDataSource1_Updating(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Parameters["@id"].Value = AppGlobal.LoggedInCustomerId;
    }
    protected void SqlDataSource1_Updating1(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Parameters["@id"].Value = AppGlobal.LoggedInCustomerId;
    }

    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        SettingsUpdatedMessage.Visible = true;
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddItem.aspx");
    }
}