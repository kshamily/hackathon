<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userposts.aspx.cs" Inherits="userposts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Community Forum</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2030 Elegant
http://www.tooplate.com/view/2030-elegant
-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<link href="css/cbdb-search-form.css" type="text/css" rel="stylesheet" media="screen" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lobster" />
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>

<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
 
 <script type="text/javascript">
        $(function () {
            //$('#graduates').dataTable();

            $('.delete').click(function () {
                event.preventDefault();
                var id = $(this).closest("tr").find(".postid").text();
             
                //window.location.href = "editpost.aspx?postid=" + id + "&name=" + name + "&date=" + date;
            });
        });
</script>



    

    <style type="text/css">
        .display_paginate 
        {
        color: #FB4C19;
        }
        .style1
        {
            width: 101%;
            height: 189px;
        }
        .style2
        {
            height: 157px;
        }
        .style4
        {
            width: 186px;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            text-align: center;
        }
        .style5
        {
            height: 26px;
        }
        td
        {
            color:#8C4510;
            text-align:center;
        }
        tr{
            background-color:#FFF7E7;
        }
        th{
            background-color:#A55129;
        }
        </style>


</head>
<body>
<form id="Form1" runat="server">
<div id="tooplate_wrapper">
	<div id="tooplate_header">
        <div style="text-align:center; margin-top:50px;">
          
       <h1 style="color:#d9d9d9;font-size:130px">Community Forum</h1>
            </div>
        <div id="site_title"></div>
    </div> <!-- end of forever header -->
     <div>
        <ul class="fancyNav">
            <li><a href="userhome.aspx" class="current">Home</a></li>
            <li><a href="userposts.aspx">My Posts</a></li>
            <%--<li><a href="statistics.aspx">Statistics</a></li>--%>
            <li><a href="logout.aspx" class="last">Logout</a></li>
        </ul>    	
    </div> <!-- end of tooplate_menu -->
      
    <div id="tooplate_main" style="color:white;">

        
        
         <div class="cleaner">
          <table id="graduates" class="display" cellspacing="0" width="100%" style="background-color: #996633">
                        <thead>
                            <tr>
                                <th hidden="true" style="color:white;">
                                   Post ID 
                                </th>
                                <th>
                                  Author
                                </th>
                                <th>
                                   Category
                                </th>
                                <th>
                                    Question
                                </th>
                                <th>
                                   Tags
                                </th>
                                 <th>
                                   Posted Date
                                </th>
                                
                                
                               </tr>
                        </thead>
                        <tbody>
                            <asp:Literal runat="server" ID="ltData"></asp:Literal>
                        </tbody>
                    </table>
         
        
         
         </div>
        
	</div> <!-- end of main -->
    
    <div id="tooplate_footer_wrapper">
       
       
	</div>
</div> <!-- end of wrapper -->
</form>

</body>
</html>