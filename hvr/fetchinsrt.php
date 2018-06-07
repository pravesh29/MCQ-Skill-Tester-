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
</head>

<body>
<form method="post">
  <table class="table">
    <tr>
      <th>Id</th>
      <th>Expert Name</th>
      <th>Header</th>
      <th>video</th>      
      <th>&nbsp;</th>
      <th>&nbsp;</th>
    </tr>
    <?php
  while($row=mysql_fetch_array($rs)){
  ?>
    <tr align="center">
      <td><?php echo $row['topic_id']; ?></td>
	  <td><?php echo $row['image']; ?></td>
      <td><?php echo $row['header']; ?></td>
      <td><?php echo $row['text1']; ?></td>
           
      <td><a href="edit.php?id=<?php echo $row['topic_id'];?>">Edit</td>
       <td><a href="delete.php?id=<?php echo $row['topic_id'];?>" onClick="return confirm('Please Confirm Delete');">Delete</td>      
     
      
      </tr>
    <?php } ?>
  </table>
  <p>
    <?php if(isset($_GET['msg'])) echo $_GET['msg']; ?>
  </p>
</form>
</body>
</html>