<?php
require_once('connection.php');
if(isset($_GET['sub_id']))
{
	$id=$_GET['sub_id'];
	$sql='delete from mst_subject where sub_id='.$id;
	$r=mysql_query($sql);
	if($r)
	{
	echo 'record deleted';
	header('location:updatesub.php');
	}
	else
	{
	echo '<strong>Error.......</strong>';
	header('location:updatesub.php?msg='.$msg);
	}
}
else
{
	echo '<strong>Id not found.....</strong>';
	header('location:updatesub.php?msg='.$msg);
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Adminstrative Area - Delete </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link href="quiz.css" rel="stylesheet" type="text/css">
</head>
<body style="background:#FFC;">
</body>
</html>