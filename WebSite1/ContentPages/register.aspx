<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="ContentPages_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 style="height: 50px">Register</h1>
<div id="main">
<form method="post" action="">
<fieldset style="margin-top: 10px; width: 50%;">
<legend>Sign-up Form</legend>

<ol>

</ol>

<ol>

<label>Firstname:</label>
<input type="text" id="fn" name="firstname" />

</ol>

<ol>

<label>lastname:</label>
<input type="text" id="ln" name="lastname" />

</ol>

<ol>

<label>middlename:</label>
<input type="text" id="mn" name="middlename" />

</ol>

<ol>

<label>Email:</label>
<input type="text" id="email" name="email" />

</ol>

<ol>

<label>username:</label>
<input type="text" id="un" name="username" />

</ol>

<ol>

<label>Password:</label>
<input type="password" id="password" name="password" />

<ol style="margin-left: 0px; margin-top: 13px">



<ol style="height: 38px; margin-left: 0px; margin-top: 25px">



</ol>

</ol>

<asp:Button ID="Button2" class="headerbutton" runat="server" Text="Register" onclick="Button2_Click" 
        />


</ol>
</fieldset>
</form>

</div>
</asp:Content>

