<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<link href="css/cbdb-search-form.css" type="text/css" rel="stylesheet" media="screen" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
     <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lobster" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
    <style type="text/css">
        .style1
        {
            width: 51%;
        }
        .style2
        {
            text-align: center;
           font-family: Lobster,Arial,sans-serif;
            font-size: x-large;
        }
        .style3
        {
            width: 379px;
        }
        .style4
        {
            width: 379px;
            font-family: Lobster,Arial,sans-serif;
            font-size: large;
            text-align: justify;
        }
        .style5
        {
            width: 102px;
        }
        table{
    font-family: Lobster,Arial,sans-serif;
    color:white;
}
        span{
            color:red;
        }
        
        .login {
            width: 399px;
        }
        
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div id="tooplate_wrapper">
	<div id="tooplate_header">
        <div style="text-align:center; margin-top:50px;">
          
       <h1 style="color:#d9d9d9;font-size:130px">Community Forum</h1>
            </div>
        <div id="site_title"></div>
    </div> <!-- end of forever header -->
    
    <div id="serach-form">
       
        <asp:ImageButton ID="ImageButton2" Width="70" Height="40" runat="server" 
            ImageUrl="~/images/home.png" onclick="ImageButton1_Click" />
     
         
    </div> <!-- end of tooplate_menu -->
    
    <div id="tooplate_main">
       	
        
       
        
        <div class="cleaner">
    <div>
    
<asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="LoginUserValidationGroup"/>
        <div style="text-align:center; padding-right: 25%; padding-left: 25%;">
            <div class="accountInfo" style="align-items:center">
                <fieldset class="login" style="text-align: center" ><legend style="color: #FFFFFF">Login</legend><p style="align-items:center">
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" ForeColor="White">Username:</asp:Label><asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox><asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                             CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator></p><p>
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" ForeColor="White">Password:</asp:Label><asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                             CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator></p></fieldset> <p class="submitButton">
                    
                                 <div style="text-align:center; padding-right: 25%; padding-left: 25%;"><asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" OnClick="LoginButton_Click" ValidationGroup="LoginUserValidationGroup"/></div>
                </p>
            </div>
            </div>
       
    </div>
             </div>
	</div> <!-- end of main -->
    
    <div id="tooplate_footer_wrapper">
     
	</div>
</div> <!-- end of wrapper -->
    </form>



    

</body>
</html>
