<?php
include 'header.php';
include 'footer.php';
error_reporting(E_ERROR);
include("dbconnect.php");
extract($_POST);
extract($_GET);
$query="select * from result where test_id='$testid' and trainee_id='$id'";
$res=mysqli_query($con, $query);
if(mysqli_num_rows($res)<1)
{
	echo "<br><br><h1 class=head1> ><a href=Online_test_quiz.php?testid=$testid&subid=$subid&id=$id>Click here to proceed to the test.</h1>";
	
}
else{
	

echo "<br><br><h1 class=head1> You are not allowed to take the quiz again</h1>";
}?>