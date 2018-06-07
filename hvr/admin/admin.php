<?php
require_once("connection.php");
error_reporting(1);
?>
<html>
<head>
<title>admin</title>
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/docs.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/font-awesome.css" />
<script src="bootstrap-3.3.2-dist/js/jquery-2.1.0.min.js"></script>
<script src="bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
</head>
<body style="background-color:ffc;">
<nav class="navbar navbar-inverse navbar-fixed-top"><center><font  face="Times New Roman, Times, serif" size="+4"  color="#FFFFFF">Welcome Expert Speaks Admin...!</font></center></nav>

<div class="container">
<div class="row"><br><br><br><br>
<div class="col-md-3">
       <ul class="nav nav-list bs-docs-sidenav affix-top">
		   <li class="active" style="font-size:24px;"><a href="admin.php?page=info"><i class="icon-chevron-right"></i>Information</a></li>
		   <li style="font-size:24px;"><a href="admin.php?page=fill"><i class="icon-chevron-right"></i>Fill Information</a></li>
		   <li style="font-size:24px;"><a href="admin.php?page=edit"><i class="icon-chevron-right"></i>Update</a></li>
       </ul>
	</div>
<div class="col-md-9">
	<?php 
switch($_REQUEST['page'])
{
 case 'info' : include("expreg.php");
 break;
 case 'fill' : include("editor1.php");
 break; 
 case 'edit' : include("fetchinsrt.php");
 break;  
}
 ?>

	
	
</div>	
   </div>
</div><br><br><br><br>
<br><br>
<br><br>	
<br><br>
<br><br>

<div> <?php require_once('footer.php');?></div>
</body>
</html>