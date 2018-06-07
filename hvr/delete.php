<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if ($_POST['confirm'] == 'Yes') {
        delete_record($_REQUEST['id']); // From GET or POST variables
    }
    redirect($_POST['referer']);
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script type="text/javascript">
function confirmDelete(link) {
        if (confirm("Are you sure?")) {
            doAjax(link.href, "POST"); // doAjax needs to send the "confirm" field
        }
        return false;
    }
</script>
</head>

<body>
<form action="delete.php" method="post">
    Are you sure?
    <input type="submit" name="confirm" value="Yes">
    <input type="submit" name="confirm" value="No">

    <input type="hidden" name="id" value="<?php echo $_GET['id']; ?>">
    <input type="hidden" name="referer" value="<?php echo $_SERVER['HTTP_REFERER']; ?>">
    <a href="delete.php?id=1234" onclick="return confirmDelete(this);">Delete record</a>
</form>
</body>
</html>