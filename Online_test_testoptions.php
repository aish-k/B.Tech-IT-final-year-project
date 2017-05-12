<?php
session_start();
error_reporting(E_ALL ^ E_WARNING);

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online Quiz - Test List</title>

<style type="text/css">
#body{
	/* Setting the default text color, size, page background and a font stack: */
	font-size:0.925em;
	color:#000000;
	background-color:#EEFFD9;
	font-family:Arial, Helvetica, sans-serif;
}
</style><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
</head>
<body id="body">
<?php
include 'header.php';
include 'footer.php';
include("dbconnect.php");
extract($_GET);
$id1= $_SESSION['id'];
$rs1=mysqli_query($con,"select * from course where course_id=$subid");
$row1=mysqli_fetch_array($rs1);

	
$rs=mysqli_query($con,"select * from test where course_id=$subid");
if(mysqli_num_rows($rs)<1)
{
	echo "<br><br><h2 class=head1> No Quiz for this Subject </h2>";
	echo"<div style='position:absolute;top:100px;left=:0px;'><a href='OnlineTest_options1.php'>back</a></div>";
	exit;
}

echo "<h2 class=head1> Select Quiz Name to Take up Quiz </h2>";
echo "<table align=center>";
while($row=mysqli_fetch_row($rs))
{            
	echo "<tr><td align=center ><a href=Online_test.php?testid=$row[0]&subid=$subid&id=$id><font size=4>$row[2]</font></a>";
	
}

echo "</table>";
?>
<a href="OnlineTest_options1.php">Back</a>
</body>