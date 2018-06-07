<?php
$conn = mysqli_connect('localhost','root','','employee');
if(!$conn)
{
	die("Error:".mysqli_connect_error());
}
else
{	echo "";}
if(isset($_POST['submit']))
{
	@$header	=	$_POST['header'];
	@$sortheader	=	$_POST['sortheader'];
	@$bigtext=	$_POST['bigtext'];
	@$sorttext	=	$_POST['sorttext'];
//	$working	=	$_POST['working'];
	$sql = "INSERT INTO `tutorial1` (`header`,`bigtext`, `sortheader`, `sorttext`) VALUES ('$header', '$sortheader', '$bigtext' ,'$sorttext')";
$rs=mysqli_query($conn, $sql);
}


?>


<html>

<head>
<title>Chunnu Singh</title>
<link href="bootstrap-3.3.2-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap-3.3.2-dist/css/freelancer.css" rel="stylesheet">
<style>
#img1{
	height:70px;
	width:500px;
}
</style>
</head>
<body style="background:#FFC;">
 <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
   <center><img src="image/expert" class="img-responsive" id="img1"></center>
 </div>
</nav>

<section id="contact"> <br><div class="pull-right"><a href="index2.php" style="font-size:24px;"><b>HOME</b></a></div>
  <div class="container">
   <div class="row">
    <div class="col-lg-12 text-center">
     <!--<h2>Contact Me</h2>--><br><br><br><br>
      <!-- <hr class="star-primary">-->
        </div>
       </div>
     <div class="row">
   <div class="col-lg-8 col-lg-offset-2">
     <form method="post" novalidate>
      <div class="row control-group">
       <div class="form-group col-xs-12 floating-label-form-group controls"><!--required data-validation-required-message="Please-->
        <label>Header</label>
          <input type="text" class="form-control" placeholder="Header" id="name" name="header">
            <p class="help-block text-danger"></p>
              </div>
            </div>
           <div class="row control-group">
 <div class="form-group col-xs-12 floating-label-form-group controls">
  <label>Header 2</label>
   <input type="text" class="form-control" placeholder="Header 2" id="name" name="sortheader">
    <p class="help-block text-danger"></p>
     </div>
    </div>

  <div class="row control-group">
     <div class="form-group col-xs-12 floating-label-form-group controls">
     <label>Code</label>
       <textarea rows="5" class="form-control" placeholder="Code" id="message" name="bigtext"></textarea>
     <p class="help-block text-danger"></p>
     </div>
    </div>
   <div class="row control-group">
     <div class="form-group col-xs-12 floating-label-form-group controls">
      <label>Message</label>
       <textarea rows="5" class="form-control" placeholder="Message" id="message" name="sorttext"></textarea>
      <p class="help-block text-danger"></p>
     </div>
    </div>

   <br>
  <div id="success"></div>
 <div class="row">
  <div class="form-group col-xs-12">
   <button type="submit" class="btn btn-success btn-lg" name="submit">SUBMIT</button>
    </div>
      </div>
        </form>
       </div>
      </div>hgj
    </div>
  </section>

    <script src="bootstrap-3.3.2-dist/js/jquery.js"></script>
    <script src="bootstrap-3.3.2-dist/js/jqBootstrapValidation.js"></script>
    <script src="bootstrap-3.3.2-dist/js/freelancer.js"></script>
    <script src="Compressed/ckeditor/build-config.js"></script>
	<script src="Compressed/ckeditor/ckeditor.js"></script>
	<script src="Compressed/ckeditor/config.js"></script>
	<script src="Compressed/ckeditor/styles.js"></script>

</body>
</html>
