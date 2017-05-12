<?php
session_start();
error_reporting(E_ERROR);
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
</head>
<body>
<?php
include("dbconnect.php");
extract($_GET);
$id= $_SESSION['id'];
$_SESSION['id']=$id;
$rs1=mysqli_query($con,"select * from course where sub_id=$subid");
$row1=mysqli_fetch_array($rs1);
echo "<h1 align=center><font color=blue> $row1[1]</font></h1>";
$rs=mysqli_query($con,"select * from test where sub_id=$subid");
if(mysqli_num_rows($rs1)<1)
{
	echo "<br><br><h2> No Quiz for this Subject </h2>";
	exit;
}
echo "<h2> Select Quiz Name to Give Quiz </h2>";
echo "<table align=center>";

while($row=mysqli_fetch_row($rs1))
{
	echo "<tr><td align=center ><a href=Online_test_quiz.php?testid=$row[0]&subid=$subid><font size=4>$row[2]</font></a>";
}
echo "</table>";
?>
<a href="Online_test_options1.php">back</a>
</body>
</html>