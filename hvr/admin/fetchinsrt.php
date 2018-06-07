<?php
require_once("connection.php");
error_reporting(1);
$query="SELECT * FROM econtent";
$rs=mysql_query($query);
//echo $num=mysql_num_fields($rs);
if($rs)
{
$row=mysql_fetch_row($rs);
//var_dump($row);
}
else{	echo 'error';}
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>topic</title>
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/docs.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="quiz.css"/>
</head>

<body>
<div align=\"center\" style='font-size:16px;'><strong style="float:right;"  style="margin-top:-60px;"><a href="adminlogin.php"> Admin Home </a>|<a href="signout.php">Signout</a></strong></div>

<form method="post">
  <table class="table">
    <tr>
      
      <th class="style2">Expert Name</th>
      <th class="style2">Header</th>
      <th class="style2">video</th>      
      <th class="style2">&nbsp;</th>
      <th class="style2">&nbsp;</th>
    </tr>
    <?php
  while($row=mysql_fetch_array($rs)){
  ?>
    <tr align="center">
      
	  <td class="style4"><?php echo $row['image']; ?></td>
      <td class="style4"><?php echo $row['header']; ?></td>
      <td class="style4"><?php echo $row['text1']; ?></td>
           
      <td class="style4"><a href="edit.php?id=<?php echo $row['topic_id'];?>">Edit</td>
       <td class="style4"><a href="delete.php?id=<?php echo $row['topic_id'];?>" onClick="return confirm('Please Confirm Delete');">Delete</td>      
     
      
      </tr>
    <?php } ?>
  </table>
  <p>
    <?php if(isset($_GET['msg'])) echo $_GET['msg']; ?>
  </p>
</form>
</body>
</html>