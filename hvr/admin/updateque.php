<?php
session_start();
error_reporting(1);
 require_once('connection.php');
 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Administrative Area - Update </title>
<link rel="shortcut icon" href="images/fevicon.ico" type="image/x-icon">
<link href="images/fevicon.ico" type="image/x-icon">
<link href="/images/favicon.png" type="image/png" />
<link rel="icon" href="images/fevicon.ico" type="image/x-icon">
<link rel="icon" href="/images/favicon.png" type="image/png" />

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="bootstrap-3.3.2-dist/css/bootstrap.min.css"  type="text/css" />

<script src="bootstrap-3.3.2-dist/jquery-2.1.0.min.js"></script>

<script src="bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="quiz.css" type="text/css"/>


<script language="javascript">
function confirmDelete() {
  if (confirm("Are you sure you want to delete this record")) {
   document.location = Delete;
  }
   return false;
}	
</script>

</head>
<body style="background:#FFC;">
<div align=\"center\" style='font-size:16px;'><strong style="float:right;"  style="margin-top:-80px;"><a href="adminlogin.php"> Update Question </a>|<a href=\"signout.php\">Signout</a></strong></div>

<body>
<form method='get'>
<?php
echo "<p class='head1' style='margin-top:50px; margin-bottom:50px; margin-left:150px;'>Update Question </p>"; 
?>

<P>
<center><select name="test" id="test" onchange="submit()" style="background:#F00; width:200px; height:30px; font-size:18px; color:#000; ">
<option value="--select test--">--select test--</option>
<?php
	 $sql_test="select test_name from mst_test";
	$rs_test=mysql_query($sql_test);
	while($row_test = mysql_fetch_array($rs_test)) {
   echo '<option value="'.$row_test['test_name'].'">'.$row_test['test_name'].'</option>';
}
?>
</select></center>
</P>
<?php

if(isset($_GET['test']))
 {	$id=$_GET['test'];
 	$sql1="select test_id from mst_test where test_name='$id'";
	$rs1=mysql_query($sql1);
	$row1=mysql_fetch_array($rs1);
 	
?>
<center><table class="table-striped" width="600" border="3"  cellspacing="2" cellpadding="5">
  <tr class="style2">
  
	 <th>que_desc</th>
    <th>ans1</th>
    <th>ans2</th>
    <th>ans3</th>
     <th>ans4</th>
      <th>true_ans</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
  </tr>
  <?php
  
  $i=0;
  $sql="select * from mst_question where test_id=".$row1[0];
  $rs=mysql_query($sql);
  while($row=mysql_fetch_array($rs)){
	  $i++;
  ?>
  <tr align="center">
  	
    <td class="style4"><?php echo $row['que_desc']; ?></td>
    <td class="style4"><?php echo $row['ans1']; ?></td>
    <td class="style4"><?php echo $row['ans2']; ?></td>
    <td class="style4"><?php echo $row['ans3']; ?></td>
    <td class="style4"><?php echo $row['ans4']; ?></td>
    <td class="style4"><?php echo $row['true_ans']; ?></td>
    <td class="style4"><a href="editque.php? que_id=<?php echo $row['0'];?>"><input type="button" name="Edit" value="Edit"></td>
      <td class="style4"><a href="deleteque.php? que_id=<?php echo $row['0'];?>"><input type="button" name="Delete" value="Delete" onClick="return confirmDelete()"></td>

  <?php } } ?>
</table></center>
<input type="hidden" name="count" id="count" value="<?php echo $i; ?>" />
<p><?php if(isset($_GET['msg'])) echo $_GET['msg']; ?></p>
</form>
</body>
</html>
