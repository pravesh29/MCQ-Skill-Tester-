<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Skill Tester  - Result </title>
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

<body>
<?php
include('header1.php');
include('connection.php');
extract($_SESSION);
$rs=mysql_query("select t.test_name,t.total_que,r.test_date,r.score from mst_test t, mst_result r where
t.test_id=r.test_id and r.login='$login'",$link) or die(mysql_error());

echo "<h1 class='style2' style='margin-top:50px; margin-bottom:50px; font-size:32px;'> Result </h1>";
if(mysql_num_rows($rs)<1)
{
	echo "<br><br><h1 class='head1' align='center'> You have not given any quiz</h1>";
	require_once('footer.php');
	exit;
}
echo "<table  border='4' align='center' style='margin-left:450px;'><tr class='style2'><td width='300'>Test Name <td> Total<br> Question <td> Score";
while($row=mysql_fetch_row($rs))
{
echo "<tr class='style8' ><td>$row[0] <td align='center'> $row[1] <td align='center'> $row[3]";
}
echo "</table>";
?>
<?php
require_once('footer.php');
?>
</body>
</html>
