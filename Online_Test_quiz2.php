<?php
session_start();
error_reporting(E_ERROR);
include("dbconnect.php");
extract($_POST);
extract($_GET);
extract($_SESSION);
$submit=$_POST['submit'];
$tid=$_SESSION['tid'];

$id= $_SESSION['id'];
$_SESSION['id']=$id;
$n=0;
$trueans=0;
$rs=mysqli_query($con,"select * from test_questions where test_id='$tid'") or die(mysqli_error($con));
if ($submit=='Get Result' && isset($ans))
{
	
	
	while($row= mysqli_fetch_row($rs)){
		$ans=$_POST["ans"];
		if($ans==$row[7])
		{
			$trueans=$trueans+1;
		}
		mysqli_query($con,"insert into user_ans(sess_id,test_id,que_desc,ans1,ans2,ans3,ans4,true_ans,your_ans) values ('".session_id()."', $tid,'$row[2]','$row[3]','$row[4]','$row[5]', '$row[6]','$row[7]','$ans')") or die(mysqli_error($con));
	$n=$n+1;
	}

	echo "<h1 class=head1> Result</h1>";
	echo "<Table align=center><tr class=tot><td>Total Question<td>". $n;
	echo "<tr class=tans><td>True Answer<td>" . $trueans;
	$w=$n-$trueans;
	echo "<tr class=fans><td>Wrong Answer<td> ". $w;
	echo "</table>";
	mysqli_query($con,"insert into result(trainee_id,test_id,test_date,score) values('$id',$tid,'".date("d/m/Y")."',$trueans") or die(mysqli_error($con));
	echo "<h1 align=center><a href=review.php> Review Question</a> </h1>";

	exit;


}
?>