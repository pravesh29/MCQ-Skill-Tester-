<title>Skill Tester - Signout</title>
<?php
session_start();
session_destroy();
header("Location: adminindex.php");
?>
