<?php
require_once('connection.php');
if(isset($_GET['que_id']))
{
	$id=$_GET['que_id'];
	$sql='delete from mst_question where que_id='.$id;
	$r=mysql_query($sql);
	if($r)
	{
	echo 'record deleted';
	header('location:updateque.php');
	}
	else
	{
	echo '<strong>Error.......</strong>';
	header('location:updateque.php?msg='.$msg);
	}
}
else
{
	echo '<strong>Id not found.....</strong>';
	header('location:updateque.php?msg='.$msg);
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