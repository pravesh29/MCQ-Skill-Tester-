<?php
require_once('connection.php');
if(isset($_POST['submit']))
{
	 $qry = "select * from tbl where id=1";
	$result= mysql_query($qry);	
	$row = mysql_fetch_array($result);
	$lyk = $row['lyk'];
	$lyk++;
	$qry1 = "update tbl set lyk = ".$lyk." where id=1";
	$result1= mysql_query($qry1);var_dump($result1);
	/*$row = mysql_fetch_array($result);
	$lyk = $row['lyk'];*/
	if($result1)
	{
		echo "updated";
	}
	else
		echo "not";
	
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body><form method="post">
<p><input type="submit" id="submit" name="submit" value="like" /><?php echo $lyk; ?></p></form>
</body>
</html>
