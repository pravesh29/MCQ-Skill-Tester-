<?php
	session_start();
	error_reporting(1);
	require_once('connection.php');
	if(isset($_GET['test_id']))
	{ 
		$id = $_GET['test_id'];
		$query = "select test_id, sub_id, test_name, total_que from mst_test where test_id=".$id;
		$rs = mysql_query($query);
		$row = mysql_fetch_assoc($rs);
	}
	
	if(isset($_POST['submit']))
	{
		
		$test_id = $_POST['test_id'];
		$sub_id = $_POST['sub_id'];
		$test_name = $_POST['test_name'];
		$total_que = $_POST['total_que'];
		$update_query = "update mst_test set test_id='$test_id', sub_id='$sub_id', test_name='$test_name', total_que='$total_que' where test_id=".$test_id;		
		$result  = mysql_query($update_query);
		if($result)
		{
			$msg = '<strong> Record Updated</strong>';
			header('Location:updatetest.php?msg='.$msg);
		} 
		else
		{
			$msg = '<strong> Record  Not Updated</strong>';
			header('Location:updatetest.php?msg='.$msg);
		}
	}
?>
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
<title>Administrative Area - Edit </title>
</head>

<body style="background:#FFC;">
<div align=\"center\" style='font-size:16px;'><strong style="float:right;"  style="margin-top:-80px;"><a href="updatetest.php"> Update Test </a>|<a href="signout.php">Signout</a></strong></div>

	<form method="post">
    "<BR><h3 class=head1>Update Test </h3>";
	<center><table class="table-striped" width="377" border="1" ></center>
  <tr class="style4">
    <td width="158"></td>
    <td class="style11" width="203"><label for="test_id"></label>
      <input type="text" name="test_id" id="test_id" value="<?php echo $row['test_id']; ?>" style="visibility:hidden;" /></td>
  </tr>
  <tr>
    <td></td>
    <td width="203"><label for="sub_id"></label>
      <input type="text" name="sub_id" id="sub_id" value="<?php echo $row['sub_id']; ?>" style="visibility:hidden;" /></td>
  </tr>
  <tr>
    <td class="style4">test_name</td>
    <td width="203"><label for="test_name" ></label>
      <input type="text" name="test_name" id="test_name" value="<?php echo $row['test_name']; ?>" /></td>
  </tr>
  <tr>
    <td class="style4">total_que</td>
    <td><label for="total_que"></label>
      <input type="text" name="total_que" id="total_que" value="<?php echo $row['total_que'];?>"/></td>
  </tr>
  <tr>
     <td colspan="2"><div align="center">
      <input type="submit" name="submit" id="submit" value="Submit" /></div></td>
  </tr>
</table>
</form>

</body>
</html>
