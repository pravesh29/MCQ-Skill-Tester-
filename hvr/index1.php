<?php
require_once('header4.php');
require_once("connection.php");
?>
<html>
<head>
<title>Tutorial</title>
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.2-dist/css/templatemo_style.css" />
<script src="bootstrap-3.3.2-dist/js/jquery-2.1.0.min.js"></script>
<script src="bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
</head>
<body style="background:#666; height:800px;">
<div align=\"center\" style='font-size:16px;'><strong style="float:right;"  style="margin-top:-80px;"><a href="index.php" style="color:#CCC;"> Home </a>|<a href="signout.php"  style="color:#CCC;">Signout</a></strong></div>
<div class="">
   <div class="row">
      <div class="col-md-12"><?php
        
 ?>
      </div>
   </div>
  </div>
<br><br><br><br><br><br><br><br><br><br><br>

<div class="menu-container">
<div class="content homepage" id="menu-1">
    <div class="container">
	    <div class="row templatemorow">
<?php
$sql1="select * from languase1";
$res1=mysql_query($sql1);
while($row1=mysql_fetch_array($res1))
{
	$lid=$row1['id'];
	$limg=$row1['image'];
	$lang=$row1['other_info'];
?>

    		<div class="hex col-sm-6">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
    			 <a href="c2.php?id=<?php echo $lid; ?>"> <div class="hexagon-in2"><img src="<?php echo $limg; ?>" alt="<?php echo $lang;?>" width="270" height="270" "> </a><br></div>
            </div>
          </div>
        </div>
    </div><?php } ?>
	
	
<!--    <div class="hex col-sm-6">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <a href="?page=c2"><div class="hexagon-in2" style="background-image:url(image/photo_1426160885_small_temp.png);">
              </div></a>
            </div>
          </div>
        </div>
    </div>
    <div class="hex col-sm-6  templatemo-hex-top2">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image:url(image/photo_1426160824_small_temp.png);">
              	</div>
            </div>
          </div>
        </div>
    </div>
    <div class="hex col-sm-6  templatemo-hex-top3">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(image/photo_1426163451_small_temp.png);">
              	</div>
            </div>
          </div>
        </div>
    </div>
    <div class="hex col-sm-6  templatemo-hex-top3">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(image/ruby-mini-logo.png);background-size:190px 190px;">
              	</div>
            </div>
          </div>
        </div>-->
    </div>
  	     <!--<div class="hex col-sm-6 hex-offset templatemo-hex-top1 templatemo-hex-top2">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(image/6.jpg);">
              	</div>
            </div>
          </div>
        </div>
    </div>
     <div class="hex col-sm-6 templatemo-hex-top1 templatemo-hex-top3">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(image/7.jpg);">
              	</div>
            </div>
          </div>
        </div>
    </div>
      <div class="hex col-sm-6 templatemo-hex-top1  templatemo-hex-top3">
      	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(image/8.jpg);">
              	</div>
            </div>
          </div>
        </div>
      </div>
      <div class="hex col-sm-6 templatemo-hex-top1  templatemo-hex-top2">
      	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(image/9.jpg);">
              	</div>
            </div>
          </div>
        </div>
      </div>
    	</div>
	</div>
    </div>
</div>
</body>
</html>
