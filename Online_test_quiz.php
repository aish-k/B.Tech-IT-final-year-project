<?php
session_start();
error_reporting(1);
include("dbconnect.php");
include 'header.php';
include 'footer.php';
extract($_POST);
extract($_GET);
extract($_SESSION);
/*$rs=mysql_query("select * from mst_question where test_id=$tid",$cn) or die(mysqli_error($cn));
if($_SESSION[qn]>mysql_num_rows($rs))
{
unset($_SESSION[qn]);
exit;
}*/
if(isset($subid) && isset($testid))
{
$_SESSION[sid]=$subid;
$_SESSION[tid]=$testid;
header("location:Online_test_quiz.php");
}
if(!isset($_SESSION[sid]) || !isset($_SESSION[tid]))
{
	header("location: OnlineTest_options1.php");
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online Quiz</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
#body{
	/* Setting the default text color, size, page background and a font stack: */
	font-size:0.925em;
	color:#000000;
	background-color:#EEFFD9;
	font-family:Arial, Helvetica, sans-serif;
}
</style>
<link href="quiz.css" rel="stylesheet" type="text/css">
</head>

<body id="body">
<?php
$id= $_SESSION['id'];
$_SESSION['id']=$id;
error_reporting(E_ERROR);


$query="select * from test_questions";

$rs=mysqli_query($con,"select * from test_questions where test_id=$tid") or die(mysqli_error($con));
if(!isset($_SESSION[qn]))
{
	$_SESSION[qn]=0;
	mysqli_query($con,"delete from user_ans where sess_id='" . session_id() ."'") or die(mysqli_error($con));
	$_SESSION[trueans]=0;
	
}
else
{	
		if($submit=='Next Question' && isset($ans))
		{
				mysqli_data_seek($rs,$_SESSION[qn]);
				$row= mysqli_fetch_row($rs);	
				mysqli_query($con,"insert into user_ans(sess_id, test_id, que_desc, ans1,ans2,ans3,ans4,true_ans,your_ans) values ('".session_id()."', $tid,'$row[2]','$row[3]','$row[4]','$row[5]', '$row[6]','$row[7]','$ans')") or die(mysqli_error($con));
				if($ans==$row[7])
				{
							$_SESSION[trueans]=$_SESSION[trueans]+1;
				}
				$_SESSION[qn]=$_SESSION[qn]+1;
		}
		else if($submit=='Get Result' && isset($ans))
		{
				mysqli_data_seek($rs,$_SESSION[qn]);
				$row= mysqli_fetch_row($rs);	
				mysqli_query($con,"insert into user_ans(sess_id, test_id, que_desc, ans1,ans2,ans3,ans4,true_ans,your_ans) values ('".session_id()."', $tid,'$row[2]','$row[3]','$row[4]','$row[5]', '$row[6]','$row[7]','$ans')") or die(mysqli_error($con));
				if($ans==$row[7])
				{
							$_SESSION[trueans]=$_SESSION[trueans]+1;
				}
				echo "<h1 class=head1> Result</h1>";
				$_SESSION[qn]=$_SESSION[qn]+1;
				echo "<Table align=center><tr class=tot><td>Total Question<td> $_SESSION[qn]";
				echo "<tr class=tans><td>True Answer<td>".$_SESSION[trueans];
				$w=$_SESSION[qn]-$_SESSION[trueans];
				echo "<tr class=fans><td>Wrong Answer<td> ". $w;
				echo "</table>";
				mysqli_query($con,"insert into result(trainee_id,test_id,test_date,score) values('$id',$tid,CURDATE(),$_SESSION[trueans])") or die(mysqli_error($con));
				mysqli_query($con,"update trainee set total_quiz_score=total_quiz_score+$_SESSION[trueans],no_of_quiz=no_of_quiz+1 where trainee_id='$id'");
				mysqli_query($con,"update trainee set net_score= total_quiz_score/no_of_quiz where trainee_id='$id'");
				echo"<a href='OnlineTest_options1.php'>Back</a>";
				unset($_SESSION[qn]);
				unset($_SESSION[sid]);
				unset($_SESSION[tid]);
				unset($_SESSION[trueans]);
				exit;
		}
}
$rs=mysqli_query($con,"select * from test_questions where test_id=$tid") or die(mysqli_error($con));
if($_SESSION[qn]>mysqli_num_rows($rs)-1)
{
unset($_SESSION[qn]);
echo "<h1 class=head1>Some Error  Occured</h1>";
session_destroy();


exit;
}
mysqli_data_seek($rs,$_SESSION[qn]);
$row= mysqli_fetch_row($rs);
echo "<form name=myfm method=post action=Online_test_quiz.php>";
echo "<table width=100%> <tr> <td width=30>&nbsp;<td> <table border=0>";
$n=$_SESSION[qn]+1;
echo "<tR><td><span class=style2>Que ".  $n .": $row[2]</style>";
echo "<tr><td class=style8><input type=radio name=ans value=1>$row[3]";
echo "<tr><td class=style8> <input type=radio name=ans value=2>$row[4]";
echo "<tr><td class=style8><input type=radio name=ans value=3>$row[5]";
echo "<tr><td class=style8><input type=radio name=ans value=4>$row[6]";

if($_SESSION[qn]<mysqli_num_rows($rs)-1)
echo "<tr><td><input type=submit name=submit value='Next Question'></form>";
else
echo "<tr><td><input type=submit name=submit value='Get Result'></form>";
echo "</table></table>";
?>
</body>
</html>