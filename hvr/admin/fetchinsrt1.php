<?php
//require_once("connection.php");
$conn = mysqli_connect('localhost','root','','employee');
if(!$conn)
{	die("error:".mysqli_connect_error()); }
else
{	echo "";}
if(isset($_GET['page']))
	$page=$_GET['page'];
else
	$page=1;
  if($page=="" ||$page=="1")
  {
	$page1=0;
  }
 else
 {
    $page1=($page*5)-5;
 }
$sql = "SELECT * FROM topics limit $page1,5";
$run = mysqli_query($conn,$sql);
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/docs.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="../quiz.css"/>

</head>

<body style="background-color:#FFC">
<nav class="navbar navbar-inverse navbar-fixed-top"><center><font  face="Times New Roman, Times, serif" size="+4"  color="#FFFFFF">Welcome Techtuts Admin...!</font></center></nav>
    

<form method="post" >

<div style="margin-left:400px; width:300px; margin-top:-40px;">
  <table class="table">
    <tr>
      
      <th class="style2">header</th>
      <th class="style2">text1</th>
      <th class="style2">image</th>      
      <th class="style2">&nbsp;</th>
      <th class="style2">&nbsp;</th>
    </tr>
    <?php  while($row = mysqli_fetch_array($run))   {?>
    <tr align="center" >
      
      <td class="style4"><div align="center"></div>        <?php echo $row['header']; ?></td>
      <td class="style4"><?php echo $row['text1']; ?></td>
      <td class="style4"><?php echo $row['image']; ?></td>     
      <td class="style4"><a href="edit1.php?id=<?php echo $row['topic_id'];?>">Update</td>
      <td class="style4"><a href="delete2.php?id=<?php echo $row['topic_id'];?>" onClick="return confirm('Please Confirm Delete');">Delete</td>      
      </tr>
    <?php } ?>
	<?php 
	$sql1 = "SELECT * FROM topics";
    $run1 = mysqli_query($conn,$sql1);
    $count = mysqli_num_rows($run1);
	$a = $count/5;
	$a = ceil($a);
	echo "<br><br>";
	for($b=1;$b<=$a;$b++)
	{
		?><a href="fetchinsrt1.php?page=<?php echo $b; ?>"><?php echo $b,"  "; ?></a><?php	} ?>
        

  </table>
    <p>    <?php if(isset($_GET['msg'])) echo $_GET['msg']; ?>  </p>
  </div>
</form>
</body>
</html>