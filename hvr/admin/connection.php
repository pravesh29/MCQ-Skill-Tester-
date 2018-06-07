<?php
$link= mysql_connect('localhost','root','');
//var_dump($link);
if($link)
{
	$r=mysql_select_db('employee',$link);
	if($r)
	{
		echo '';
	}
	else
	{
	//echo 'not connected';
	echo mysql_error();
	}
}
/*else
{
	echo '<strong>Unable to connect!!!!</strong>';
}*/

?>
