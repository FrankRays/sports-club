<%@ Control Language="C#" AutoEventWireup="true" CodeFile="newitem.ascx.cs" Inherits="Controls_newitem" %>

    <label>Name :</label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
<br />

    <label>Description :</label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<br />
<br />
    <label>Price :</label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
<br />
<br />
<label>Choose Master Category :</label>
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
    DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [name], [id] FROM [majorcategories]">
</asp:SqlDataSource>
<br />
<br />
<label>Choose Sub Category :</label>
<asp:DropDownList ID="DropDownList2" runat="server" 
    DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="id">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    
    SelectCommand="SELECT [name], [id] FROM [subcategories] WHERE ([majorcategoryid] = @majorcategoryid)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="majorcategoryid" 
            PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<br />
<br />
<label>Image:</label>
<asp:FileUpload ID="FileUpload1" runat="server" />

