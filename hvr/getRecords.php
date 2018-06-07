<?php
require_once('Connection.php');
//print_r($_GET);

if(isset($_GET['test_id']))
{
	$age=$_GET['test_id'];
	
	$sql='select * from mst_question where test_id='.$age;
	
	$rs=mysql_query($sql);
	
	if(mysql_num_rows($rs)>0)
	{
	
?>

<form method="get">
<table width="600" border="3" cellspacing="2" cellpadding="5">
  <tr>
  
	<th><input type="checkbox" name="chkAll" id="chkAll" onclick="checkAll()" /></th>
    <th>que_desc</th>
    <th>ans1</th>
    <th>ans2</th>
    <th>ans3</th>
     <th>ans4</th>
      <th>true_ans</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
  </tr>
  <?php
  $i=0;
  while($row=mysql_fetch_array($rs)){
	  $i++;
  ?>
  <tr align="center">
  	<td><input type="checkbox" name="chk[]" id="<?php echo 'chk'.$i;?>" value="<?php echo $row['id'];?>" /></td>
    <td><?php echo $row['que_desc']; ?></td>
    <td><?php echo $row['ans1']; ?></td>
    <td><?php echo $row['ans2']; ?></td>
    <td><?php echo $row['ans3']; ?></td>
    <td><?php echo $row['ans4']; ?></td>
    <td><?php echo $row['true_ans']; ?></td>
    <td><a href="editque.php? que_id=<?php echo $row['0'];?>"><input type="button" name="Edit" value="Edit"></td>
      <td><a href="deleteque.php? que_id=<?php echo $row['0'];?>"><input type="button" name="Delete" value="Delete" onClick="return confirmDelete()"></td>

  <?php } ?>
</table>
<input type="hidden" name="count" id="count" value="<?php echo $i; ?>" />
<p><?php if(isset($_GET['msg'])) echo $_GET['msg']; ?></p>
</form>

<?php
}

else
{
	echo '<strong>No Record Found!!!</strong>';
}
}
?>