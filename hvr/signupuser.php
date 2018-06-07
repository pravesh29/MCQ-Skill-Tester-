
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Skill Tester - User Signup</title>
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
include("header.php");
extract($_POST);
include("connection.php");
$rs=mysql_query("select * from mst_user where login='$lid'");
if(mysql_num_rows($rs)>0)
{
	echo "<br><br><br><div class=head1>Login Id Already Exists</div>";
	include 'footer.php'; 
	exit;
}
$query="insert into mst_user(user_id,login,pass,username,address,city,phone,email) values('$lid','$pass','$cpass','$name','$address','$city','$phone','$email')";
$rs=mysql_query($query)or die("Could Not Perform the Query");
echo "<br><br><br><div class=head1>Your Login ID  $lid Created Sucessfully</div>";
echo "<br><div class=head1>Please Login using your Login ID to take Quiz</div>";
echo "<br><div class=head1><a href=home.php?user_id=$user_id>Login</a></div>";


?>
<div>
<?php
require_once('footer.php');
?>
</div>
</body>
</html>

