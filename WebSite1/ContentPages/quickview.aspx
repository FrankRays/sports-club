<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="quickview.aspx.cs" Inherits="ContentPages_quickview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" href="../Styles/quickview.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="leftimages">
<asp:Image ID="Image5" runat="server" Height="60px" Width="60px" class="ad"/><br /><br />
<asp:Image ID="Image1" runat="server" Height="60px" Width="60px" class="ad"/><br /><br />
<asp:Image ID="Image2" runat="server" Height="60px" Width="60px" class="ad"/><br /><br />
<asp:Image ID="Image3" runat="server" Height="60px" Width="60px" class="ad"/>
</div>
<div class="mainimage">
<asp:Image ID="Image4" runat="server" Height="400px" Width="400px" class="ad"/>
</div>
<div class="description">
<asp:Button ID="Button2" class="headerbutton" runat="server" Text="Add to Cart" />
</div>

</asp:Content>

