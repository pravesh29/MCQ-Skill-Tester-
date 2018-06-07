<?php 
require_once("connection.php");
error_reporting(0);
	//if(isset($_GET['id']))
	//{ 
		$id = $_GET['id'];
		$query = "select * from topics where topic_id=".$id;
		$rs = mysql_query($query);
		while($row=mysql_fetch_array($rs))
		{
		
		$topic_id = $row['topic_id'];
		 $header = $row['header'];
		 $text1 = $row['text1'];
		//$image = $_POST['image']['name'];
}
		 
	
?> 

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Updation Area</title>
<link href="bootstrap-3.3.2-dist/css/bootstrap.min.css" rel="stylesheet">
1<link href="bootstrap-3.3.2-dist/css/freelancer.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="contents.css" />
<script src="Compressed/ckeditor/build-config.js"></script>
<script src="Compressed/ckeditor/ckeditor.js"></script>
<script src="Compressed/ckeditor/config.js"></script>
<script src="Compressed/ckeditor/styles.js"></script>

</head>

<body style="background:#FFC;"><br><br>
<nav class="navbar navbar-inverse navbar-fixed-top"><center><font  face="Times New Roman, Times, serif" size="+4"  color="#FFFFFF">Admin of Techtuts!</font></center></nav>
<div class="container">
   <div class="row"><br><br><br><br>
    <div class="col-md-3" >
       <ul class="nav nav-list bs-docs-sidenav affix-top">
		   <li class="active"><a href="admin1.php?page=info"><i class="icon-chevron-right"></i>Information</a></li>
		   <li><a href="admin1.php?page=fill"><i class="icon-chevron-right"></i>Fill Information</a></li>
		   <li><a href="admin1.php?page=edit"><i class="icon-chevron-right"></i>Update</a></li>
       </ul>
	</div>
	<div class="col-md-9" >
<div style="float:left">	<?php 
switch($_REQUEST['page'])
{
 case 'info' : include("expreg1.php");
 break;
 case 'fill' : include("editor2.php");
 break; 
 case 'edit' : include("fetchinsrt1.php");
 break;  
}
 ?>
 	
</div>	
   </div>
</div>

   <div class="row"><br><br><br><br>
   <div class="col-lg-3" style="float:left">
	
	<div class="well"><center>Header :</center></div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
   <div class="well" style="margin-top:60px;"><center>Text & Code::</center></div><br><br><br><br><br><br><br><br><br><br><br><br><br>	<br>
  
  
  
</div>
<div class="col-lg-6">
<form method="post" onSubmit="return check();">
			
			           <textarea name="editor1" id="editor1" rows="10" cols="80"><?php echo $header; ?></textarea><br><br><br>
			<textarea name="editor2" id="editor2" rows="10" cols="80"><?php echo $text1; ?></textarea>
            <script>
                CKEDITOR.replace( 'editor1' );
				CKEDITOR.replace( 'editor2' );	
				// CKEDITOR.replace( 'editor3' );		  
            </script><br /><br /><br /><br />
			<p class="contact-submit">
			<input type="submit" value="submit" name="submit" class="submit" ></p>
        </form>
</div>
</div>
</body>
</html>
<?php
if(isset($_POST['submit']))
	{
		$header1=$_POST['editor1'];
		$text11=$_POST['editor2'];
		//$image1=$_POST['editor3'];
		
				//$image = $_FILES['image']['name'];
		
		$update_query = "update topics set header='$header1',text1='$text11' where topic_id=".$topic_id;		
		$result  = mysql_query($update_query);
		if($result)
		{
			$msg = '<strong> Record Updated</strong>';
			header('Location:fetchinsrt1.php?msg='.$msg);
		} 
		else
		{
			$msg = '<strong> Record  Not Updated</strong>';
			header('Location:fetchinsrt1.php?msg='.$msg);
		}
	}
?></div>



