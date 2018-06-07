<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Skill Tester - Test List</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="bootstrap-3.3.2-dist/css/bootstrap.min.css"  type="text/css" />

<script src="bootstrap-3.3.2-dist/jquery-2.1.0.min.js"></script>

<script src="bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="quiz.css" type="text/css">


</head>
<body style="background:#FFC;">
<?php
include('header1.php');
include('connection.php');
?>
<body style="background:#FFC;">
<div align=\"center\" style='font-size:16px;'><strong style="float:right;"  style="margin-top:-60px;"><a href="sublist.php"> Home </a>|<a href="signout.php">Signout</a></strong></div>

<?php
extract($_GET);
$rs1=mysql_query("select * from mst_subject where sub_id=$subid");
$row1=mysql_fetch_array($rs1);
echo "<h1 align=center ><font color=blue> $row1[1]</font></h1>";
$rs=mysql_query("select * from mst_test where sub_id=$subid");
if(mysql_num_rows($rs)<1)
{
	echo "<br><br><h2 class=head1 style='margin-bottom:50px; margin-top:50px;'> No Test for this Subject </h2>";
	echo "<p align='center' style='margin-top:30px;'><font size=5>Please </font><a href=sublist.php><font size=5>Start Again</font></a></p>";
	require_once('footer.php');
	exit;
}
echo "<h2 class=head1 style='margin-bottom:50px; margin-top:50px;'> Select Test Name to Give Test </h2>";
echo "<table  width='100%' style='margin-bottom:50px;'";

while($row=mysql_fetch_row($rs))
{
	echo "<tr><td><a href=quiz.php?testid=$row[0]&subid=$subid &login_id=$login_id><font size=5><center>$row[2]</center></font></a>";
}
require_once('footer.php');
echo "</table>";
?>
<?php require_once('footer.php');?>
</body>
</html>
