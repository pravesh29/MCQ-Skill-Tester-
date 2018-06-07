<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Administrative Area - Update </title>
<link rel="shortcut icon" href="images/fevicon.ico" type="image/x-icon">
<link href="images/fevicon.ico" type="image/x-icon">
<link href="/images/favicon.png" type="image/png" />
<link rel="icon" href="images/fevicon.ico" type="image/x-icon">
<link rel="icon" href="/images/favicon.png" type="image/png" />

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="bootstrap-3.3.2-dist/css/bootstrap.min.css"  type="text/css" />

<script src="bootstrap-3.3.2-dist/jquery-2.1.0.min.js"></script>

<script src="bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="quiz.css" type="text/css"/>


<script language="javascript">
function confirmDelete() {
  if (confirm("Are you sure you want to delete this record")) {
   document.location = Delete;
  }
   return false;
}	
</script>

</head>
<body style="background:#FFC;">
<div align=\"center\" style='font-size:16px;'><strong style="float:right;"  style="margin-top:-80px;"><a href="adminlogin.php"> Admin Home </a>|<a href="signout.php">Signout</a></strong></div>

<form method='get'>
<?PHP
session_start();
error_reporting(1);

require_once('connection.php');
if (!isset($_GET['startrow']) or !is_numeric($_GET['startrow'])) {
  //we give the value of the starting row to 0 because nothing was found in URL
  $startrow = 0;
//otherwise we take the value from the URL
} else {
  $startrow = (int)$_GET['startrow'];
}
//this part goes after the checking of the $_GET var
$fetch = mysql_query("SELECT * FROM mst_test LIMIT $startrow, 10")or
die(mysql_error());
   $num=mysql_num_rows($fetch);
        if($num>0)
        {
			echo "<p class='head1' style='margin-top:50px; margin-bottom:50px; margin-left:100px;'>Update Test </p>"; ?>
<?php /* ?><div style='margin:auto;width:90%;height:300px;box-shadow:2px 1px 2px 2px #CCCCCC;text-align:center; margin-top:50px; margin-bottom:50px;'>";<?php */ ?> <?php
        echo "<center><table class='table-striped' border=4></center>";
        echo "<tr class=style11><td>test_name</td><td>total_que</td></tr>";
        for($i=0;$i<$num;$i++)
        {
        $row=mysql_fetch_row($fetch);
        echo "<tr>";
		"<td class=style4>$row[0]</td>";
        "<td class=style4>$row[1]</td>";
        echo"<td class=style4>$row[2]</td>";
        echo"<td class=style4>$row[3]</td>";?>
		 <td><a href="edittest.php? test_id=<?php echo $row['0'];?>"><input type="button" name="Edit" value="Edit"></td>
      <td><a href="delettest.php? test_id=<?php echo $row['0'];?>"><input type="button" name="Delete" value="Delete" onClick="return confirmDelete()"></td>
		
		<?php
        echo"</tr>";
        }//for
        echo"</table>";
        }
		echo "</div>";
//now this is the link..
echo '<a class=style2 href="'.$_SERVER['PHP_SELF'].'?startrow='.($startrow+10).'">Next </a>';

$prev = $startrow - 10;

//only print a "Previous" link if a "Next" was clicked
if ($prev >= 0)
    echo '<a class=style2 href="'.$_SERVER['PHP_SELF'].'?startrow='.$prev.'">Previous</a>';
?>
</form>
</body>
</html>
