<?php
require_once("connection.php");

           $header =$_POST['header'];
		   $text1 =$_POST['text1'];
		   $image = $_FILES['image']['name'];
		   
		   
		    $id = $_GET['id'];
			$del = "DELETE FROM topics where topic_id='$id'";
			mysql_query($del);
			header('location:fetchinsrt1.php'); 
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/docs.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/font-awesome.css" />
</head>

<body>
</body>
</html>