<?php
 session_start();
 $id= $_SESSION['id'];
 include 'header.php';
 include 'footer.php';
 error_reporting(E_ERROR);
 
 ?>
 
<body style="background-color:#EEFFD9"> <h1 align="center">Online Assessment Test Portal</h1>
<?php
include'dbconnect.php';

echo "<h2 class=head1 align='center'> Select Subject to  take up the corressponding Assessment Test </h2>";
$rs=mysqli_query($con,"select * from course");
echo "<table align=center>";
while($row=mysqli_fetch_row($rs))
{	echo "<tr><td align=center ><a href=Online_test_testoptions.php?subid=$row[0]&id=$id><font size=4>$row[1]</font></a>";
}
echo "</table>";
?> 


<br>
<br>
<h2><a href="Online_test_result.php">View Test Results</a></h2>
<div style="position:absolute;top:100px;left=:0px;"><a href="trainee_options.php">back</a></div>
</body>

