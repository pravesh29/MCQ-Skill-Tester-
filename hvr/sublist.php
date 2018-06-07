<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Skill Tester - Quiz List</title>
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

<div align="center">
<?php
include('header1.php');
include('connection.php');?>
<body style="background:#FFC;">
<div align=\"center\" style='font-size:16px;'><strong style="float:right;"  style="margin-top:-60px;"><a href="home.php"> Home </a>|<a href="signout.php">Signout</a></strong></div>
<?php
echo "<h2 class=head1 style='margin-top:50px; margin-bottom:30px;'> Select Subject to test your skills </h2>";
$rs=mysql_query("select * from mst_subject");
echo "<table align=center>";
while($row=mysql_fetch_row($rs))
{
	echo "<tr><td align=center><a href=showtest.php?subid=$row[0]&login_id=$login_id><font size=5>$row[1]</font></a>";
}
echo "</table>";
?>
</div>
<?php
require_once('footer.php');
?>
</body>
</html>
