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
	//$time=time();
	$file_name=$_FILES['file']['name'];
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
<title>Administrative area</title>
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/docs.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script src="bootstrap-3.3.2-dist/js/jquery-2.1.0.min.js"></script>
<script src="bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
<script>
function Check()
{
if(document.form1.name.value=="")
{
alert("Select Language");
//document.form1.name.focus();
return false;
}
if(document.form1.file.value=="")
{
alert("Select Image");
//document.form1.file.focus();
return false;
}
}

 </script>
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
</head>
<body style="background:#FFC;"> 

<div class="container">
<div class="row">
<div class="col-md-9">
       


        	<form method="post"  name="form1" id="contact-form" class="contact-form" enctype="multipart/form-data" height:"80px;" style="margin-left:300px; margin-top:-150px;" onSubmit="return Check();">
             
            	<p class="contact-name"><p id="name1"></p></label><input id="contact_name"  value="" placeholder="language name" name="name" type="text" style="height:30px;" > </p>
             <p class="contact-name"><input id="contact_name"  value="file" name="file" type="file" style="height:30px;" ></p>
				<br><br>
                <p class="contact-submit"><input type="submit" value="SUBMIT" id="contact-submit" name="submit" class="submit" onClick="Check();" style="height:auto;"></p>
                <img src="image/ad.png" style="margin-left:250px; margin-top:-250px;"/>
          </form>        
        </div>
     </div>
</div>
</body>
</html>