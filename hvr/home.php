<?php
session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body style="background:#FFC;>
<div>
<?php require_once('header1.php');
require_once('connection.php');
?>
<body style="background:#FFC;">
<div align=\"center\" style='font-size:16px;'><strong style="float:right;"  style="margin-top:-60px;"><a href="index.php"> Home </a>|<a href="signout.php">Signout</a></strong></div>

<?php
extract($_POST);

/*
if(isset($_POST['submit']))
{
	$loginid = $_POST['loginid'];
		$password = $_POST['pass'];
		$query ="select user_id,pass from mst_user where user_id='$loginid' and pass='$password'";
		$result = mysql_query($query);
		$res=mysql_num_rows($result);

			if($res>0)		
			{
				$_SESSION['loginid'] = $loginid;
				$_SESSION['pass'] = $password;
*/
$_SESSION['status']=true;
	
	if(isset($submit))
	{
	$rs=mysql_query("select * from mst_user where login='$loginid' and pass='$pass'");
	if(mysql_num_rows($rs)<1)
	{
		$found="No";
	}
	else
	{
		$_SESSION['login']=$loginid;
	}
	}
if (isset($_SESSION['login']))
{
	


echo "<h1 class='style9' align=center>Welcome to Skill Tester</h1>";
		echo '<table width="100%"  border="0">
  <tr>
    <td align="center" valign="bottom"><img src="image/HLPBUTT2.JPG" width="50" height="50" align="middle"><a href="sublist.php?login_id=$login_id" class="style4">Subject for Testing Skills </a>
	</td>
  </tr>
  <tr>
    <td align="center" valign="bottom"><img src="image/DEGREE.JPG" width="43" height="43" align="absmiddle"><a href="result.php" class="style4">Result </a>				    </td>
  </tr>
  </table>';
?>

<?php include ('footer.php'); ?>
    
	<?php
		exit;
}
?>
</div>
<div class="container-fluid">
<div class="row">
<table width="100%" border="0" style="margin-bottom:50px; margin-top:20px;">
  <tr>
    <td width="70%" height="25">&nbsp;</td>
    <td width="1%" rowspan="2" bgcolor="#CC3300"><span class="style6"></span></td>
    <td width="29%" bgcolor="#CC3333"><div align="center" class="style1">User Login </div></td>
  </tr>
  <tr>
    <td height="296" valign="top"><div align="center">
       <h1 class="style9">Welcome to Skill Tester</h1>
      <span class="style5"><img src="image/paathshala.jpg" width="129" height="100"><span class="style7"><img src="image/HLPBUTT2.JPG" width="50" height="50"><img src="image/BOOKPG.JPG" width="43" height="43"></span>        </span>
        <!--<param name="movie" value="english theams two brothers.dat">
        <param name="quality" value="high">
        <param name="movie" value="Drag to a file to choose it.">
        <param name="quality" value="high">
        <param name="BGCOLOR" value="#FFFFFF">-->
<p align="left" class="style5">&nbsp;</p>
      <blockquote>
          <p align="left" class="style5"><span class="style7">The purpose of developing this website is to help users to access or read online tutorial, attend the online seminars and attempt the online test to test their skills on a single site.</span></p>
      </blockquote>
    </div></td>
    <td valign="top"><form name="form1" method="post" action="">
      <table width="100%" border="0" align="center">
        <tr>
          <td align="center"><span class="style2">Login ID </span></td>
          <td align="center"><input name="loginid" type="text" id="loginid2" style="margin-left:5px; margin-top:5px;"></td>
        </tr>
        <tr>
          <td align="center"><span class="style2">Password</span></td>
          <td align="center"><input name="pass" type="password" id="pass2" style="margin-left:5px; margin-top:5px;"></td>
        </tr>
        <tr>
          <td colspan="2"><span class="errors">
            <?php
		  if(isset($found))
		  {
		  	echo "Invalid Username or Password";
		  }
		  ?>
          </span></td>
          </tr>
        <tr>
          <td colspan=2 align=center class="errors">
		  <input name="submit" type="submit" id="submit" value="Login" style=" margin-top:5px; margin-left:25px;"></td>
        </tr>
        <tr>
          <td colspan="2" bgcolor="#CC3300"><div align="center"><span class="style4">New User ? <a href="signup.php">Signup Free</a></span></div></td>
          </tr>
      </table>
      <div align="center">
        <p class="style5"><img src="image/topleft.jpg" class="img-responsive" width="134" height="128" style="margin-top:10px;">          </p>
        </div>
      </form></td>
   </tr>
 </table>

</div>
</div>

<div>
<?php include ('footer.php');?>
</div>
</body>
</html>