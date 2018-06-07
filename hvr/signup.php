<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Skill Tester - New user signup </title>
<script language="javascript">
function check()
{
	var x=document.form1.phone.value;

 if(document.form1.lid.value=="")
  {
    alert("Plese Enter Login Id");
	document.form1.lid.focus();
	return false;
  }
 
 if(document.form1.pass.value=="")
  {
    alert("Plese Enter Your Password");
	document.form1.pass.focus();
	return false;
  } 
  if(document.form1.cpass.value=="")
  {
    alert("Plese Enter Confirm Password");
	document.form1.cpass.focus();
	return false;
  }
  if(document.form1.pass.value!=document.form1.cpass.value)
  {
    alert("Confirm Password does not matched");
	document.form1.cpass.focus();
	return false;
  }
  if(document.form1.name.value=="")
  {
    alert("Plese Enter Your Name");
	document.form1.name.focus();
	return false;
  }
  if(document.form1.address.value=="")
  {
    alert("Plese Enter Address");
	document.form1.address.focus();
	return false;
  }
  if(document.form1.city.value=="")
  {
    alert("Plese Enter City Name");
	document.form1.city.focus();
	return false;
  }
  /*if(document.form1.phone.value=="")
  {
    alert("Plese Enter Contact No");
	document.form1.phone.focus();
	return false;
  }*/
  if(isNaN(x)||x.indexOf(" ")!=-1)
  {
	  alert("enter numeric value");
	  return false;
  }
  if (x.length>10)
  {
	  alert("Enter 10 Characters");
	  return false;
  }
  if(document.form1.email.value=="")
  {
    alert("Plese Enter your Email Address");
	document.form1.email.focus();
	return false;
  }
  e=document.form1.email.value;
		f1=e.indexOf('@');
		f2=e.indexOf('@',f1+1);
		e1=e.indexOf('.');
		e2=e.indexOf('.',e1+1);
		n=e.length;

		if(!(f1>0 && f2==-1 && e1>0 && e2==-1 && f1!=e1+1 && e1!=f1+1 && f1!=n-1 && e1!=n-1))
		{
			alert("Please Enter valid Email");
			document.form1.email.focus();
			return false;
		}
  return true;
  }
  
</script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="bootstrap-3.3.2-dist/css/bootstrap.min.css"  type="text/css" />

<script src="bootstrap-3.3.2-dist/jquery-2.1.0.min.js"></script>

<script src="bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="quiz.css" type="text/css">

</head>

<body>
<?php
include("header.php");
?>
 <table width="100%" border="0">
   <tr>
     <td width="468" height="57"><h1 align="center"><span class="style8"><img src="image/connected_multiple_big.jpg" width="155" height="160"  style="padding-left:40px; padding-top:10px;">New User Signup</span></h1></td>
   </tr>
   <tr>
     <td><form name="form1" method="post" action="signupuser.php" onSubmit="return check();">
       <div align="center">
         <table width="327" height="335" border="0" align="center">
           <tr>
             <td width="152"><div align="left" class="style7">Login Id </div></td>
             <td width="165"><input type="text" name="lid"></td>
            </tr>
           <tr>
             <td class="style7">Password</td>
             <td><input type="password" name="pass"></td>
            </tr>
           <tr>
             <td class="style7">Confirm Password </td>
             <td><input name="cpass" type="password" id="cpass"></td>
            </tr>
           <tr>
             <td class="style7">Name</td>
             <td><input name="name" type="text" id="name"></td>
            </tr>
           <tr>
             <td valign="top" class="style7">Address</td>
             <td><textarea name="address" id="address"></textarea></td>
            </tr>
           <tr>
             <td valign="top" class="style7">City</td>
             <td><input name="city" type="text" id="city"></td>
            </tr>
           <tr>
             <td valign="top" class="style7">Phone</td>
             <td><input name="phone" type="text" id="phone"></td>
            </tr>
           <tr>
             <td valign="top" class="style7">E-mail</td>
             <td><input name="email" type="text" id="email"></td>
            </tr>
           <tr>
             <td>&nbsp;</td>
             <td><input type="submit" name="Submit" value="Signup">
              </td>
            </tr>
         </table>
       </div>
     </form></td>
   </tr>
 </table>
 <p>&nbsp; </p>
 <div>
 <?php require_once('footer.php');?>
 </div>
</body>
</html>
