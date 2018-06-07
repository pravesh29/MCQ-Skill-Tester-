<?php
require_once('connection.php');
$song_id=$_GET['song_id'];

// Get data from the database depending on the value of the id in the URL
$strSQL = "SELECT * FROM songs WHERE song_id=".$song_id;
$rs = mysql_query($strSQL);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="bootstrap-3.3.2-dist/css/bootstrap.min (2).css"/>
<script src="bootstrap-3.3.2-dist/js/bootstrap.min (2).js"></script>
<title>display</title>
<link href="view.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div>
<?php require_once('header.php');?>
</div>
<div class="container-fluid">
<div class="main">
<center><div class="title" align="center">View Your Videos Here!!</div></center><br/>
<br/>
<center><div class="content">
<?php
	// Loop the recordset $rs
	while($row = mysql_fetch_array($rs)) {
		// Write the data of the person
		echo "<dt>Name:</dt><dd>" . $row["song_name"] ."</dd>";
		echo "<dt>path:</dt><dd>" . $row["path"] . "</dd>";
	}

	// Close the database connection
	mysql_close();
?>
</body>
</html>