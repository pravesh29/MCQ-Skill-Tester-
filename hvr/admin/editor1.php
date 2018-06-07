<?php
$conn = mysqli_connect('localhost','root','','employee');
if(!$conn)
{
	die("Error:".mysqli_connect_error());
}
else
{	echo "";}
if(isset($_POST['submit']))
{
	$header	=	$_POST['editor1'];
	$text1	=	$_POST['editor2'];
	$subcode	=	$_POST['subcode'];
	$info		=	$_POST['editor3'];
	$sql = "INSERT INTO `econtent` (`sub_id`,`header`,`text1`,`image`) VALUES ('$subcode','$header', '$text1', '$info')";
$rs=mysqli_query($conn, $sql);
}
?>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>editor1</title>
<link href="bootstrap-3.3.2-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap-3.3.2-dist/css/freelancer.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="contents.css" />
<script src="Compressed/ckeditor/build-config.js"></script>
<script src="Compressed/ckeditor/ckeditor.js"></script>
<script src="Compressed/ckeditor/config.js"></script>
<script src="Compressed/ckeditor/styles.js"></script>
</head>

<body style="background:#FFC;">
<div class="container">
   <div class="row">
    <div class="col-lg-3">
	<div class="well"><center>Select Language :</center></div><br><br>
	<div class="well"><center>Heading :</center></div><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
   <div class="well"><center>Youtube Url:</center></div><br>
  
  <div class="well"><center>Expert Name :</center></div>
  
</div>
<div class="col-lg-6">
<form method="post">
			
			<?php
			$sql2="select * from elanguage";
			$row=mysqli_query($conn,$sql2);
			while($arr1=mysqli_fetch_array($row))
			{
			$lid=$arr1['id'];
			$lan=$arr1['other_info'];
			?>
			<input type="Radio" name="subcode" Value="<?php echo $lid;?>"><?php echo $lan;?><br>
			<?php }	?><br>
			

            <textarea name="editor1" id="editor1" rows="10" cols="80" placeholder="enter the heading..."></textarea><br><br><br>
			<!--<textarea name="editor2" id="editor2" rows="10" cols="80" placeholder="enter the text and code ...."></textarea><br>-->	
			<input type="text"  name="editor2" placeholder="Video Link ...." style="height:50px;width:555px;"><br /><br><br>
			<textarea name="editor3" id="editor3" rows="10" cols="80" placeholder="Expert Info ...."></textarea>
            <script>
                CKEDITOR.replace( 'editor1' );
				// CKEDITOR.replace( 'editor2' );	
				 CKEDITOR.replace( 'editor3' );		  
            </script><br /><br /><br /><br />
			<!--<input type="text"  name="video" placeholder="Video Link ...." style="height:50px;width:555px;"><br /><br />-->
			<p class="contact-submit">
			<input type="submit" value="submit" name="submit" class="submit" style="height:auto;"></p>
        </form>
</div>
</div>
</body>
</html>
