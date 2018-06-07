<?php 
	session_start();
	error_reporting(1);
	require_once('connection.php');
	if(isset($_GET['sub_id']))
	{ 
		$id = $_GET['sub_id'];
		$query = "select sub_id, sub_name from mst_subject where sub_id=".$id;
		$rs = mysql_query($query);
		$row = mysql_fetch_assoc($rs);
	}
	
	
	if(isset($_POST['submit']))
	{
		
		$sub_id = $_POST['sub_id'];
		$sub_name = $_POST['sub_name'];
		$update_query = "update mst_subject set sub_id='$sub_id',sub_name='$sub_name' where sub_id=".$sub_id;		
		$result  = mysql_query($update_query);
		if($result)
		{
			
			//var_dump($result);
			 $msg = '<strong> Record Updated</strong>';
			header('Location:updatesub.php?msg='.$msg);
		} 
		else
		{
			$msg = '<strong> Record  Not Updated</strong>';
			header('Location:updatesub.php?msg='.$msg);
		}
	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/docs.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script src="bootstrap-3.3.2-dist/js/jquery-2.1.0.min.js"></script>
<script src="bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../quiz.css" type="text/css" />
</head>

<body style="background:#FFC;">
<div align=\"center\" style='font-size:16px;'><strong style="float:right;"  style="margin-top:-80px;"><a href="updatesub.php"> Update Sub </a>|<a href="signout.php">Signout</a></strong></div>

	<form method="post">
    <h2><div  class=head1 style="padding-left:140px;">Update Sub</div></h2>";
	<center><table class="table-striped" width="377" border="1"></center>
  <tr class="style11">
    <td width="158"></td>
    <td width="203"><label for="sub_id"></label>
      <input type="text" name="sub_id" id="sub_id" value="<?php echo $row['sub_id']; ?>" style="visibility:hidden;" /></td>
  </tr>
  <tr>
    <td>sub_name</td>
    <td><l
    abel for="sub_name"></label>
      <input type="text" name="sub_name" id="sub_name" value="<?php echo $row['sub_name'];?>"/></td>
  </tr>
  <tr>
     <td colspan="2"><div align="center">
      <input type="submit" name="submit" id="submit" value="Submit" /></div></td>
  </tr>
</table>
</form>

</body>
</html>
