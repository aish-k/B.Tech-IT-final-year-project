<html>
<?php
session_start();
require("dbconnect.php");
error_reporting(E_ERROR);

?>
<link href="../quiz.css" rel="stylesheet" type="text/css">
<?php

extract($_POST);


echo "<BR><h3 class=head1>Subject Add </h3>";

echo "<table width=100%>";
echo "<tr><td align=center></table>";
if($submit=='submit' || strlen($subname)>0 )
{
$rs=mysqli_query($con,"select * from course where course='$subname'");
if (mysqli_num_rows($rs)>0)
{
	echo "<br><br><br><div class=head1>Subject is Already Exists</div>";
	exit;
}
mysqli_query($con,"insert into course(course) values ('$subname')") or die(mysqli_error($con));
echo "<p align=center>Subject  <b> \"$subname \"</b> Added Successfully.</p>";
$submit="";
}
header("Location:Online_test_trainer_add_course.php")
?>

</html>