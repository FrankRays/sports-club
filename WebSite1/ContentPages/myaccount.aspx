<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="myaccount.aspx.cs" Inherits="ContentPages_myaccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" href="../Styles/myaccount.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="account">

<div class="accountleft">
<fieldset class="field1">
<legend>Update personal information</legend>
<br />
<asp:Label ID="SettingsUpdatedMessage" runat="server"
     Text="Your settings have been updated."
     EnableViewState="false" class="info"
     Visible="false"></asp:Label>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataSourceID="SqlDataSource1" Height="50px" Width="125px" class="info"
        onitemupdated="DetailsView1_ItemUpdated">
        <Fields>
            <asp:BoundField DataField="firstname" HeaderText="firstname" 
                SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" 
                SortExpression="lastname" />
            <asp:BoundField DataField="middlename" HeaderText="middlename" 
                SortExpression="middlename" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        onselecting="SqlDataSource1_Selecting" 
        
        SelectCommand="SELECT [firstname], [lastname], [middlename], [email] FROM [customers] WHERE ([id] = @id)" UpdateCommand="UPDATE customers SET
     firstname = @firstname,
     lastname = @lastname,
     middlename = @middlename,
     email = @email
WHERE id = @id" onupdating="SqlDataSource1_Updating1">
        <SelectParameters>
            <asp:Parameter Name="id" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="firstname" />
            <asp:Parameter Name="lastname" />
            <asp:Parameter Name="middlename" />
            <asp:Parameter Name="email" />
            <asp:Parameter Name="id" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    </fieldset>
<br />
</div>
<div class="accountright">
<fieldset class="field2">
<legend>Account Details</legend>
<br />
<asp:Button ID="Button2" class="headerbutton" runat="server" Text="My Orders" />
<asp:Button ID="Button1" class="headerbutton" runat="server" Text="Cancellations" />
<asp:Button ID="Button3" class="headerbutton" runat="server" Text="My Rewards" />
<asp:Button ID="Button4" class="headerbutton" runat="server" Text="My Deals" />
<asp:Button ID="Button5" class="headerbutton" runat="server" Text="Credit Card Info" />
<asp:Button ID="Button6" class="headerbutton" runat="server" Text="Gift Card Info" />
<asp:Button ID="Button7" class="headerbutton" runat="server" Text="My Reviews" />
<asp:Button ID="Button8" class="headerbutton" runat="server" Text="My Sales" />
</fieldset>
<br />
</div>




</div>
<div class="ads">
<asp:Image ID="Image5" runat="server" Height="194px" Width="1321px" class="ad"/>
</div>
<br />
</asp:Content>

