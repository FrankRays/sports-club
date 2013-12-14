<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AddItem.aspx.cs" Inherits="ContentPages_AddItem" %>
<%@ Register TagPrefix="uc" TagName="newitem" 
    Src="~/Controls/newitem.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link rel="stylesheet" href="../Styles/AddItem.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<fieldset>
<legend>Add New Item</legend>
<div class="container">
<uc:newitem id="newitemcontrol" 
        runat="server" 
        MinValue="1" 
        MaxValue="10" />
        <br /><br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Button ID="Button1" runat="server" Text="Add Item" class='headerbutton' 
        onclick="Button1_Click" />
    </div>
    </fieldset>
  
  
    <br />
   
</asp:Content>

