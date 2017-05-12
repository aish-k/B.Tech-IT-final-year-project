<?php 
session_start();
error_reporting('ERROR');
require("dbconnect.php");
extract($_POST);
$test_id=$_SESSION['$test_id'];

if(isset($_POST['Modify'])){
	$addque=$_POST['addque'];
	$ans1=$_POST['ans1'];
	$ans2=$_POST['ans2'];
	$ans3=$_POST['ans3'];
	$ans4=$_POST['ans4'];
	$anstrue=$_POST['anstrue'];
	$que_id=$_POST['que_id'];
mysqli_query($con,"Update test_questions SET que_desc='$addque',ans1='$ans1',ans2='$ans2',ans3='$ans3',ans4='$ans4',true_ans='$anstrue' where que_id='$que_id'");
echo "<p align=center>Updated successfully.</p>";

}
if(isset($_POST['Delete'])){
	$addque=$_POST['addque'];
	$ans1=$_POST['ans1'];
	$ans2=$_POST['ans2'];
	$ans3=$_POST['ans3'];
	$ans4=$_POST['ans4'];
	$anstrue=$_POST['anstrue'];
	$que_id=$_POST['que_id'];
	mysqli_query($con, "Delete from test_questions WHERE que_id='$que_id'");
	echo "<p align=center>Deleted successfully.</p>";
}

header("Location:Online_test_trainer_questions_view2.php?test_id=$test_id")
	

?>