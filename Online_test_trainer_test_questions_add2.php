<?php
session_start();
require("dbconnect.php");
error_reporting(E_ERROR);


?>
<link href="../quiz.css" rel="stylesheet" type="text/css">
<?php
extract($_POST);


$addque=$_POST['addque'];
$testid=$_POST['testid'];
$ans1=$_POST['ans1'];
$ans2=$_POST['ans2'];
$ans3=$_POST['ans3'];
$ans4=$_POST['ans4'];
$anstrue=$_POST['anstrue'];
mysqli_query($con,"insert into test_questions(test_id,que_desc,ans1,ans2,ans3,ans4,true_ans) values ('$testid','$addque','$ans1','$ans2','$ans3','$ans4','$anstrue')") or die(mysqli_error($con));
echo "<p align=center>Question Added Successfully.</p>";
unset($_POST);
header("Location:Online_test_trainer_test_questions_add.php")
?>