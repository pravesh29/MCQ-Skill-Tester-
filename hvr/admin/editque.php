<?php 
	session_start();
	error_reporting(1);
	require_once('connection.php');
	if(isset($_GET['que_id']))
	{ 
		$id = $_GET['que_id'];
		$query = "select que_id, test_id, que_desc, ans1, ans2, ans3, ans4, true_ans from mst_question where que_id=".$id;
		$rs = mysql_query($query);
		$row = mysql_fetch_assoc($rs);
	}
	
	if(isset($_POST['submit']))
	{
		
		$que_id = $_POST['que_id'];
		$test_id = $_POST['test_id'];
		$que_desc = $_POST['que_desc'];
		$ans1 = $_POST['ans1'];
		$ans2 = $_POST['ans2'];
		$ans3 = $_POST['ans3'];
		$ans4 = $_POST['ans4'];
		$true_ans = $_POST['true_ans'];
		
		$update_query = "update mst_question set que_id='$que_id', test_id='$test_id', que_desc='$que_desc',ans1='$ans1',ans2='$ans2' ,ans3='$ans3',ans4='$ans4',true_ans='$true_ans' where que_id=".$que_id;		
		$result  = mysql_query($update_query);//var_dump($result);
		if($result)
		{  
			$msg = '<strong> Record Updated</strong>';
			header('Location:updateque.php?msg='.$msg);
		} 
		else
		{
			$msg = '<strong> Record  Not Updated</strong>';
			header('Location:updateque.php?msg='.$msg);
		}
	}
?>
	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Administrative Area - Edit </title>
</head>

<body style="background:#FFC;">

	<form method="post">
	<center><table class="table-striped" width="377" border="1" align="center"></center>
  <tr class="style11">
    <td width="158">que_id</td>
    <td width="203"><label for="que_id"></label>
      <input type="text" name="que_id" id="que_id" value="<?php echo $row['que_id']; ?>" style="visibility:hidden;" /></td>
  </tr>
  <tr>
    <td>test_id</td>
    <td><label for="test_id"></label>
      <input type="text" name="test_id" id="test_id" value="<?php echo $row['test_id'];?>" style="visibility:hidden;" /></td>
  </tr>
  <tr>
    <td>que_desc</td>
    <td><label for="que_desc"></label>
      <input type="text" name="que_desc" id="que_desc" value="<?php echo $row['que_desc'];?>"/></td>
  </tr>
  <tr>
    <td>ans1</td>
    <td><label for="ans1"></label>
      <input type="text" name="ans1" id="ans1" value="<?php echo $row['ans1']; ?>" /></td>
  </tr>
<tr>
    <td>ans2</td>
    <td><label for="ans2"></label>
      <input type="text" name="ans2" id="ans2" value="<?php echo $row['ans2']; ?>" /></td>
  </tr>
<tr>
    <td>ans3</td>
    <td><label for="ans3"></label>
      <input type="text" name="ans3" id="ans3" value="<?php echo $row['ans3']; ?>" /></td>
  </tr>
<tr>
    <td>ans4</td>
    <td><label for="ans4"></label>
      <input type="text" name="ans4" id="ans4" value="<?php echo $row['ans4']; ?>" /></td>
  </tr>

  <tr>
    <td>true_ans</td>
    <td><label for="true_ans"></label>
      <input type="text" name="true_ans" id="true_ans" value="<?php echo $row['true_ans']; ?>"/></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="submit" id="submit" value="Submit" /></div></td>
  </tr>
</table>
</form>

</body>
</html>
