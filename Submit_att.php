<?php

//connect mysql database
$host = "localhost:3306";
$user = "root";
$pass = "";
$db = "project";
$con = mysqli_connect($host, $user, $pass, $db) or die("Error " . mysqli_error($con));
extract($_POST);
//After Click on Submit Call this
if(isset($btnAbsent))
{
	foreach($attend as $atn_key=>$atn_value)
	{
		if($atn_value=="present")
		{
			$upd_qry="UPDATE attendance SET present=present+1 where s_no='".$atn_key."'";
			mysql_query($upd_qry);
		}
		elseif($atn_value=="absent")
		{
			$upd_qry="UPDATE attendance SET absent=absent-1 where s_no='".$atn_key."'";
			mysql_query($upd_qry);
		}
	}
}
