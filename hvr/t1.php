<?php
require_once('header3.php');
require_once("connection.php");
?>
<html>
<head>
<title>expertino</title>
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/docs.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/font-awesome.css" />
<script src="../bootstrap-3.3.2-dist/js/jquery-2.1.0.min.js"></script>
<script src="../bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
</head>
<body style="background:#FFC;">
<div align=\"center\" style='font-size:16px;'><strong style="float:right;"  style="margin-top:-80px;"><a href="index2.php"> Home </a>|<a href="signout.php">Signout</a></strong></div>

<div class="container">
<div class="row">
<div class="col-md-3">
        <ul class="nav nav-list bs-docs-sidenav affix-top">
		<?php
		$t_id=$_GET['t_id'];
		$s_id=$_GET['s_id'];
		$sql1="select * from econtent where sub_id='".$s_id."'";
		$row1=mysql_query($sql1);
		while($arr1=mysql_fetch_array($row1))
		{
			$lid=$arr1['topic_id'];
			$sid=$arr1['sub_id'];
			$menu=$arr1['header'];
		?>
          <li class="active"><a href="?t_id=<?php echo $lid; ?>&s_id=<?php echo $sid; ?>"><i class="icon-chevron-right"></i><?php echo $menu; ?></a></li><?php } ?>
         </ul>
    </div>
<div class="col-md-9" >
		<?php		
		$id=$_GET['id'];
		$sql2="select * from econtent where topic_id='".$t_id."'";
		$row2=mysql_query($sql2);
		while($arr2=mysql_fetch_array($row2))
		{
			$lid=$arr2['topic_id'];
			$menu=$arr2['header'];
			$text=$arr2['text1'];
			$img=$arr2['image'];
		?>
		<h1><div style="float:left; color:#F00; font-weight:bold;">Expert Name :</div> <?php echo $img;?></h1>	
		<h2><div style="clear:both; color:#60F; font-weight:bold;"><?php echo $menu;?></div></h2>
<h4><div style="clear:both; color:#60F; font-weight:bold;"><a href="<?php echo $text;?>" target="_blank";>Click Here To Watch Video<?php $text;?></a></div></h4>
		
		<?php } ?>
		</div>
	</div>
</div>
<div>
<?php require_once('footer.php'); ?>
</div>
</body>
</html>