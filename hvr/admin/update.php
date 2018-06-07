<?php 
	require_once('connection.php');
	if(isset($_GET['id']))
	{ 
		$id = $_GET['id'];
		echo $query = "select * from econtent where Id=".$id;
		$rs = mysql_query($query);
		$row = mysql_fetch_assoc($rs);
	}
	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Edit</title>
</head>

<body style="background:#FFC;">
	<form method="post">
	<table width="377" border="1">
  <tr>
    <td width="158">id</td>
    <td width="203"><label for="id"></label>
      <input type="text" name="id" id="id" value="<?php echo $row['id']; ?>" /></td>
  </tr>
    <tr>
   <td>header</td>
    <td><label for="header"></label>
      <input type="text" name="header" id="header" value="<?php echo $row['header']; ?>" /></td>
  </tr>
  <tr>
    <td>text1</td>
    <td><label for="text1"></label>
      <textarea name="text1" id="text1" cols="45" rows="5"><?php echo $row['text1']; ?></textarea></td>
  </tr>
       <!--<tr>
        <th>image</th>
        <td><label for="image"></label>
          <input type ="file" name="image" id="image" value= ""/></td>
      </tr>-->
 <tr>
        <th>Image</th>
        <td><label for="elanguage"></label>
          <img src="<?php echo $row['image'] ?>" width="100" height="120" /></td>
      </tr>

 
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="submit" id="submit" value="Submit" />
    </div></td>
    </tr>
</table>
</form>
</body>
</html>
<?php
if(isset($_POST['submit']))
	{
		
		$id = $_POST['id'];
		$header = $_POST['header'];
		$text1 = $_POST['text1'];
		//$image = $_POST['image'];
		$elanguage = $_POST['elanguage'];
		$time=time();	
		$file_name=$time.$_FILES['file']['name'];	 	
		$tmp_name=$_FILES['file']['tmp_name'];	
		$destination='uploads/'.$file_name;	
		$r=move_uploaded_file($tmp_name,$destination);
		
		$update_query = "update editor1 set id='$id',header='$header',text1='$text1',image='$destination' where Id=".$id;		
		$result  = mysql_query($update_query);
		if($result)
		{
			$msg = '<strong> Record Updated</strong>';
			header('Location:admin.php?msg='.$msg);
		} 
		else
		{
			$msg = '<strong> Record  Not Updated</strong>';
			header('Location:admin.php?msg='.$msg);
		}
	}
?>