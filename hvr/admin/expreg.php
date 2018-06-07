<?php
error_reporting(0);
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
	$email	=	$_POST['email'];
	$lang	=	$_POST['lang'];

	$file_name=$_FILES['file']['name'];
	$temp_name=$_FILES['file']['tmp_name'];
	$destination='uploads/'.$file_name;
	$r=move_uploaded_file($temp_name,$destination);
	//var_dump($r);
	$sql = "INSERT INTO `elanguage` (`name`,`email`, `image`, `other_info`) VALUES ('$name', '$email','$destination','$lang')";
	$rs=mysqli_query($conn, $sql);//var_dump($rs);

}
?>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>expreg</title>
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/docs.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script src="bootstrap-3.3.2-dist/js/jquery-2.1.0.min.js"></script>
<script src="bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
<script>
function check()
{
	var x=document.getElementById('name').value;
	var a=document.getElementById('email').value;
	var y=document.getElementById('lang').value;
	var z=document.getElementById('file').value;
	//alert(y);
	//alert(z);
	//alert(a);
	  if(x=="")
  {
    alert("Plese Enter Your Name");
	//document.form1.name.focus();
	return false;
  }
  if(a=="")
  {
    alert("Plese Enter your Email Address");
//	document.form1.email.focus();
	return false;
  }
  if(y=="")
  {
    alert("Plese Enter language");
	//document.form1.lang.focus();
	return false;
  }
  
  if(z=="")
  {
    alert("Plese insert image");
	//document.form1.file.focus();
	return false;
  }
  
  
  
		f1=a.indexOf('@');
		f2=a.indexOf('@',f1+1);
		e1=a.indexOf('.');
		e2=a.indexOf('.',e1+1);
		n=a.length;

		if(!(f1>0 && f2==-1 && e1>0 && e2==-1 && f1!=e1+1 && e1!=f1+1 && f1!=n-1 && e1!=n-1))
		{
			//alert("Please Enter valid Email");
		//    document.form1.email.focus();
			//return false;
		}
		 // return true;
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
<body>
<div align=\"center\" style='font-size:16px;'><strong style="float:right;"  style="margin-top:-80px;"><a href="adminlogin.php"> Admin Home </a>|<a href="signout.php">Signout</a></strong></div>
 
<div class="container">
<div class="row">
<div class="col-md-9">        
        	<form method="post" id="contact-form" class="contact-form" enctype="multipart/form-data" style="height:213px; margin-top:10px;" onSubmit="return check();">
            	<p class="contact-name"><input id="name" placeholder="Full Name" value="" name="name" type="text"> </p>
                <p class="contact-name1"><input id="email" placeholder="Email" value="" name="email" type="text">	</p>
				<p class="contact-name2"><input id="lang" placeholder="elanguage" value="" name="lang" type="text">	</p>
				<p class="contact-name3"><input id="file"  value="file" name="file" type="file"></p>
				<br><br>
                <p class="contact-submit"><input type="submit" value="SUBMIT" id="contact-submit" name="submit" class="submit" onClick="check();" style="height:auto;"></p>    
                <img src="image/ad.png" style="float:right; margin-top:-320"/>            
            </form>       
        </div>
     </div>
</div>

</body>
</html>