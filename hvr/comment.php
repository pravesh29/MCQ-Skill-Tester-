<?php
error_reporting(0);
//require_once('connection.php');
$conn = mysqli_connect('localhost','root','','employee');	
if(!$conn)
{	die("Error:".mysqli_connect_error()); }
else
{	echo "";  }
if(isset($_POST['submit']))
{
	 $comment	=	$_POST['comment'];
	 $sql = "INSERT INTO `comment` (`comment`) VALUES ('$comment')";
     $rs=mysqli_query($conn,$sql);	
}
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
    $page1=($page*4)-4;
 }
$sql1 = "SELECT * FROM comment limit $page1,4";
  $run = mysqli_query($conn,$sql1);
?>
<html>
<head>
<link href="bootstrap-3.3.2-dist/css/bootstrap.css" type="text/css" rel="stylesheet">
<link href="bootstrap-3.3.2-dist/css/bootstrap.min.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="main-js.js"></script>
<script type="text/javascript">
$(document).ready(function(){
$(".flip").click(function(){
    $(".panel").slideToggle("slow");
  });
});
</script>
<style type="text/css">
div.panel,p.flip
{
margin:0px;
padding:5px;
}
div.panel
{
height:auto;
display:none;
}
</style>
</head><body><!--?php require_once('like.php'); ?-->
<form method="post">
comment :<input type="text" name="comment" placeholder="enter the comment....">
<input type="submit" value="submit" name="submit">
</form>
<div class="panel">
<p><?php  
	while($row = mysqli_fetch_array($run))
   {
	echo "<br>";
	echo $row["id"]," ", $row["comment"];
	echo "<br>";
} 
$sql2 = "SELECT * FROM comment";
  $run1 = mysqli_query($conn,$sql2);
  $count = mysqli_num_rows($run1);
	$a = $count/5;
	$a = ceil($a);
	echo "<br><br>";
	for($b=1;$b<=$a;$b++)
	{
		?><a href="comment.php?page=<?php echo $b; ?>"><?php echo $b,"  "; ?></a><?php
	}
?></p>
</div>
<ul class="nav nav-pills"> <li class="active"><a href="#"><p class="flip">Show Comment<span class="badge"><?php echo $count; ?></span></p></a></li></ul>
</body>
</html>