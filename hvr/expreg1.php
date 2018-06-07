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
	$name	=	$_POST['name'];
	//$email	=	$_POST['email'];
	$time=time();
	$file_name=$time.$_FILES['file']['name'];
	$temp_name=$_FILES['file']['tmp_name'];
	$destination='uploads/'.$file_name;
	$r=move_uploaded_file($temp_name,$destination);
	//var_dump($destination);
	$sql = "INSERT INTO `languase1` (`image`,`languase`) VALUES ('$destination','$name')";
	$rs=mysqli_query($conn, $sql);
}
?>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Chunnu Singh</title>
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/docs.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script src="bootstrap-3.3.2-dist/js/jquery-2.1.0.min.js"></script>
<script src="bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>

<style>
#img1{
	height:70px;	
	width:500px;
}
#dd{	
	border:none;
	box-shadow:0px 0px 10px 0px red;
	border-top-style:ridge;
	border-left-style:ridge;
	transition:all 0.2s;
}
</style>
<?php
if(isset($_POST['submit']))
{
	$name=trim($_POST['name']," ");
	//$email=trim($_POST['email']," ");
	
	if($name=="")
	{
		echo '<strong>Lanhuage is Empty!!!</strong><br>';
	}
}

?>
</head>
<body> 
<div class="container">
<div class="row">
<div class="col-md-9">        
        	<form method="post" id="contact-form" class="contact-form" enctype="multipart/form-data" style="background-color:#999;height:90px;" action="<?php echo $_SERVER['PHP_SELF']; ?>">
            	<p class="contact-name"><input id="contact_name" placeholder="Language Name" value="" name="name" type="text"> </p>
                <!--<p class="contact-name"><input id="contact_name" placeholder="Email" value="" name="email" type="text">	</p>-->
				<p class="contact-name"><input id="contact_name"  value="file" name="file" type="file" ></p>
				<br><br>
                <p class="contact-submit"><input type="submit" value="SUBMIT" id="contact-submit" name="submit" class="submit" style="height:auto;"></p>                
            </form>       
        </div>
     </div>
</div>

</body>
</html>