<?php
session_start();
require("dbconnect.php");
error_reporting(E_ERROR);
?>
<link href="../quiz.css" rel="stylesheet" type="text/css">
<?php

extract($_POST);
$subid=$_POST["subid"];
$testname=$_POST["testname"];
$totque=$_POST["totque"];
mysqli_query($con,"insert into test(course_id,test_name,total_que) values ('$subid','$testname','$totque')") or die(mysql_error($cn));
echo "<p align=center>Test <b>\"$testname\"</b> Added Successfully.</p>";
unset($_POST);
header("Location:Online_test_trainer_test_add.php");
?>