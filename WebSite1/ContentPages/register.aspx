<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="ContentPages_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" href="../Styles/register.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 style="height: 50px">Register</h1>
<div id="main">
<form method="post" action="">

<asp:Label ID='status' runat="server" Visible='false'>Registration</asp:Label>
<fieldset style="margin-top: 10px; width: 50%;">
<legend>Sign-up Form</legend>

<div class='container'>
<br />
<label>Firstname:</label>
<asp:TextBox id="fn" name="firstname" runat='server' ></asp:TextBox>
<br />
<br />
<label>Lastname:</label>
<asp:TextBox id="ln" name="lastname" runat='server'></asp:TextBox>
<br />
<br />
<label>Middlename:</label>
<asp:TextBox id="mn" name="middlename" runat='server'></asp:TextBox>
<br />
<br />
<label>Email:</label>
<asp:TextBox id="email" name="email" runat='server'></asp:TextBox>
<br />
<br />
<label>Username:</label>
<asp:TextBox id="un" name="username" runat='server'></asp:TextBox>
<br />
<br />
<label>Password:</label>
<asp:TextBox id="password" TextMode="Password" runat='server' name="password"  ></asp:TextBox>
<br />
<br />
</div>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Button ID="Button2" class="headerbutton" runat="server" Text="Register" onclick="Button2_Click" 
        />
</fieldset>
</form>

</div>
</asp:Content>

