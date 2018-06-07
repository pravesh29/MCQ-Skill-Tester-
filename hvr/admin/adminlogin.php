<?php
session_start();
error_reporting(1);
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Adminstrative Area - Skill Tester </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link rel="shortcut icon" href="../../Project at codex/neelam/SkillTester/images/fevicon.ico" type="image/x-icon">
<link rel="icon" href="../../Project at codex/neelam/SkillTester/images/fevicon.ico" type="image/x-icon">
<link href="/images/favicon.png" type="image/png" />
<link rel="icon" href="/images/favicon.png" type="image/png" />
<link href="../../Project at codex/neelam/SkillTester/images/fevicon.ico" type="image/x-icon">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="bootstrap-3.3.2-dist/css/bootstrap.min.css"  type="text/css" />

<script src="bootstrap-3.3.2-dist/jquery-2.1.0.min.js"></script>

<script src="bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>

<link href="quiz.css" rel="stylesheet" type="text/css">
</head>

<body style="background:#FFC;">
<div align=\"center\" style='font-size:16px;' style="margin-right:10px;"><strong   style="margin-top:40px; margin-left:1300px;"><a href="signout.php">Signout</a></strong></div>

<?php
//include("header.php");
extract($_POST);
if(isset($submit))
{
	include("connection.php");
	$rs=mysql_query("select * from mst_admin where loginid='$loginid' and pass='$pass'",$link) or die(mysql_error());
	if(mysql_num_rows($rs)<1)
	{
		echo "<BR><BR><BR><BR><div class=head1> Invalid User Name or Password<br> Please <a href=adminindex.php>Login</a><div>";
		require_once('footer.php');
		exit;
		
	}
	$_SESSION['alogin']="true";
	
}
else if(!isset($_SESSION[alogin]))
{
	echo "<BR><BR><BR><BR><div class=head1> Your are not logged in<br> Please <a href=adminindex.php>Login</a><div>";
	//require_once('footer.php');
	exit;
}

?>
<p class="head1" style="margin-top:70px; margin-left:70px;">Welcome to Admistrative Area </p>
<div style="margin:auto;width:90%;height:400px;box-shadow:2px 1px 2px 2px #CCCCCC;text-align:center; margin-top:70px; margin-bottom:50px;">

<div class="col-md-3" style="padding-top:3.5%; margin-left:160px;">
<p class="style7"><a href="admin.php">Admin For Expert Speak</a></p>
<p align="center" class="head1">&nbsp;</p>
</div>

<div class="col-md-3" style="padding-top:3.5%">
<p class="head1" style="margin-top:50px;">Skill Tester </p>
<p class="style7"><a href="subadd.php">Add Subject</a></p>
<p class="style7"><a href="testadd.php">Add Test</a></p>
<p class="style7"><a href="questionadd.php">Add Question </a></p>
<p class="style7"><a href="updatesub.php">Update Subject </a></p>
<p class="style7"><a href="updatetest.php">Update Test </a></p>
<p class="style7"><a href="updateque.php">Update Question </a></p>
<p align="center" class="head1">&nbsp;</p>
</div>

<div class="col-md-3" style="padding-top:3.5%">
<p class="style7"><a href="admin1.php">Admin For Tech Tuts</a></p>
<p align="center" class="head1">&nbsp;</p>
</div>

</div>

</body>
</html>
