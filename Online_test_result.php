<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online Quiz  - Result </title>
<style type="text/css">
#body{
	/* Setting the default text color, size, page background and a font stack: */
	font-size:0.925em;
	color:#000000;
	background-color:#EEFFD9;
	font-family:Arial, Helvetica, sans-serif;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
</head>

<body id="body">
<?php
include 'header.php';
include 'footer.php';
error_reporting(E_ERROR);
$id= $_SESSION['id'];
$_SESSION['id']=$id;
include("dbconnect.php");
extract($_SESSION);
$rs=mysqli_query($con,"select t.test_name,t.total_que,r.test_date,r.score from test t, result r where
 r.trainee_id='$id'") or die(mysqli_error($cn));

echo "<h1 class=head1 align='center'> Result </h1>";
if(mysqli_num_rows($rs)<1)
{
	echo "<br><br><h1 class=head1> You have not given any quiz</h1>";
	exit;
}
echo "<table border=1 align=center><tr class=style2><td width=300>Test Name <td> Total<br> Question <td> Score <td> Test Date";
while($row=mysqli_fetch_row($rs))
{
echo "<tr class=style8><td>$row[0] <td align=center> $row[1] <td align=center> $row[3] <td align=center> $row[2]";
}
echo "</table>";
?>
<a href="OnlineTest_options1.php"> back </a>
</body>
</html>
