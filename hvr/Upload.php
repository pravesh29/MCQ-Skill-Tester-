<?php

echo time();

if(isset($_POST['submit']))
{
	//print_r($_FILES);
	
	$time=time();
	
	$file_name=$time.$_FILES['file']['name'];
	
	$tmp_name=$_FILES['file']['tmp_name'];
	
	$destination='uploads/'.$file_name;
	
	$r=move_uploaded_file($tmp_name,$destination);
	
	if($r)
	echo '<strong>File Successfully Uploaded!!!</strong>';
	else
	echo '<strong>Error in File Upload!!!</strong>';

}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Upload</title>
</head>

<body>

<form method="post" enctype="multipart/form-data">

  <table width="400" border="3" cellspacing="2" cellpadding="5">
    <tr>
      <td>Upload File</td>
      <td><input type="file" name="file" id="file" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="submit" id="submit" value="Upload" /></td>
    </tr>
  </table>
</form>

</body>
</html>