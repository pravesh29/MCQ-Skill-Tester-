<?php

require_once('connection.php');
if(isset($_POST['submit1']))
{
	 $qry = "select * from tbl where id=1";
	$result= mysql_query($qry);	
	$row = mysql_fetch_array($result);
	$lyk = $row['lyk'];
	$lyk++;
	$qry1 = "update tbl set lyk = ".$lyk." where id=1";
	$result1= mysql_query($qry1);	
}
?>
<html>
<head>
<title>expreg</title>
<link href="bootstrap-3.3.2-dist/css/bootstrap.css" type="text/css" rel="stylesheet">
<link href="bootstrap-3.3.2-dist/css/bootstrap.min.css" type="text/css" rel="stylesheet">
</head>
<body style="background:#FFC;"><form method="post">
<p><ul class="nav nav-pills">
<li class="active"><p class=""><input type="submit" id="submit1" name="submit1" value="like" /><span class="badge"><?php echo $lyk; ?></span></a></li></p>

</form>
</body>
</html>
