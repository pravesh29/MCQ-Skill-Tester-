<?php
session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Administrative Login - Skill Tester</title>
<link rel="shortcut icon" href="../../Project at codex/neelam/SkillTester/images/fevicon.ico" type="image/x-icon">
<link rel="icon" href="../../Project at codex/neelam/SkillTester/images/fevicon.ico" type="image/x-icon">
<link href="/images/favicon.png" type="image/png" />
<link rel="icon" href="/images/favicon.png" type="image/png" />
<link href="../../Project at codex/neelam/SkillTester/images/fevicon.ico" type="image/x-icon">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="bootstrap-3.3.2-dist/css/bootstrap.min.css"  type="text/css" />

<script src="bootstrap-3.3.2-dist/jquery-2.1.0.min.js"></script>

<script src="bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>

<link href="quiz.css" rel="stylesheet" type="text/css">

</head>
<body style="background:#FFC;">

<div>
<?php
require_once("connection.php");
?>
</div>
<p class="head1" style="padding-top:200px;">Adminstrative Login </p>
<form name="form1" method="post" action="adminlogin.php">
<center><table width="490" border="0" align="center" >
  <tr>
    <!--<td width="106"><span class="style2"></span></td>-->
    <td width="132"><span class="style2"><span class="head1" style="background:#FFC;"><img src="login.jpg"  width="131" height="155"></span></span></td>
    <td width="238"><table width="219" border="0" align="center">
  <tr>
    <td width="163" class="style12">Login ID </td>
    <td width="149"><input name="loginid" type="text" id="loginid" style="margin-left:15px;"></td>
  </tr>
  <tr>
    <td class="style12">Password</td>
    <td><input name="pass" type="password" id="pass" style="margin-left:15px;"></td>
  </tr>
  <tr>
    <td class="style12">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td class="style12">&nbsp;</td>
    <td><input name="submit" type="submit" id="submit" value="Login"></td>
  </tr>
</table></td>
  </tr>
</table></center>

</form>
</div>

</body>
</html>