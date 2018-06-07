
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
	/*$time=time();	
	$file_name=$time.$_FILES['file']['name'];	 	
	$tmp_name=$_FILES['file']['tmp_name'];	
	$destination='uploads/'.$file_name;	
	$r=move_uploaded_file($tmp_name,$destination);*/
//	$working	=	$_POST['working'];
	$sql = "INSERT INTO `topics` (`sub_id`,`header`,`text1`) VALUES ('$subcode','$header', '$text1')";
$rs=mysqli_query($conn, $sql);
}
?>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="bootstrap-3.3.2-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap-3.3.2-dist/css/freelancer.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="contents.css" />
<script src="Compressed/ckeditor/build-config.js"></script>
<script src="Compressed/ckeditor/ckeditor.js"></script>
<script src="Compressed/ckeditor/config.js"></script>
<script src="Compressed/ckeditor/styles.js"></script>
<style>
.well
{
	margin-top:5px;
}
</style>
</head>

<body>
<div class="container">
   <div class="row">
    <div class="col-lg-3">
	<div class="well"><center>Select Languase :</center></div><br><br>
	<div class="well"><center>Header :</center></div><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
   <div class="well"><center>Text & Code :</center></div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  
  <!--<div class="well"><center>Image :</center></div>-->
  
</div>
<div class="col-lg-6">
<form method="post">
			
			<?php
			$sql2="select * from languase1";
			$row=mysqli_query($conn,$sql2);
			while($arr1=mysqli_fetch_array($row))
			{
			$lid=$arr1['id'];
			$lan=$arr1['languase'];
			?>
			<input type="Radio" name="subcode" Value="<?php echo $lid;?>"><?php echo $lan;?><br>

			<?php }	?><br>
			

            <textarea name="editor1" id="editor1" rows="10" cols="80" placeholder="enter the heading..."></textarea><br>
			<textarea name="editor2" id="editor2" rows="10" cols="80" placeholder="enter the text and code ...."></textarea>
            <script>
                CKEDITOR.replace( 'editor1' );
				 CKEDITOR.replace( 'editor2' );		  
            </script><br /><br /><br /><br />
			<!--<input type="file" name="file"><br /><br />-->
			<p class="contact-submit">
			<input type="submit" value="submit" name="submit" class="submit" style="height:auto;"><!--<a href="index.php" style="margin-left:100px;"><b>HOME</b></a>--></p>
        </form>
  </div>
</div>
</body>
</html>
