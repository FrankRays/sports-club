<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="ContentPages_menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" href="../Styles/menupage.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="left">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="id" 
    onitemcommand="DataList1_ItemCommand">
        <ItemTemplate>
            <asp:Button ID="submenubutton" runat="server" class="submenubutton" Text='<%# Eval("name") %>' 
            commandname='<%# Eval("id")  %>'  />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
</div>
<div class="right">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" 
        DataKeyNames="id" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td runat="server" style="text-align:center;padding:20px">
                <asp:ImageButton ID="ImageButton1" runat="server" class="image" ImageUrl='<%# String.Format("~/Images/ItemImages/{0}.jpg", Eval("id")) %>' />
                <br />
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />price: $
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="">
                id:
                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                <br />name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">
                id:
                <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                <br />name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="text-align:center;padding:20px">
               <asp:ImageButton ID="ImageButton1" runat="server" class="image" ImageUrl='<%# String.Format("~/Images/ItemImages/{0}.jpg", Eval("id")) %>' />
                <br />
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />price: $
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="">
                id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
</div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [id], [name], [price] FROM [items] WHERE ([subcategoryid] = @subcategoryid)" 
        onselecting="SqlDataSource2_Selecting" onupdating="SqlDataSource2_Updating">
        <SelectParameters>
            <asp:Parameter Name="subcategoryid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [id], [name] FROM [subcategories] WHERE ([majorcategoryid] = @majorcategoryid)" 
        onselecting="SqlDataSource1_Selecting" 
        onupdating="SqlDataSource1_Updating">
        <SelectParameters>
            <asp:Parameter Name="majorcategoryid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

