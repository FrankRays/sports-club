using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContentPages_menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        AppGlobal.selectedsubmenu = e.CommandName;
        SqlDataSource2.DataBind();
        ListView1.DataBind();

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        e.Command.Parameters["@majorcategoryid"].Value = AppGlobal.selectedMenu;   
    }
    protected void SqlDataSource1_Updating(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Parameters["@majorcategoryid"].Value = AppGlobal.selectedMenu;
    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        e.Command.Parameters["@subcategoryid"].Value = AppGlobal.selectedsubmenu;
    }
    protected void SqlDataSource2_Updating(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Parameters["@subcategoryid"].Value = AppGlobal.selectedsubmenu;
    }
}