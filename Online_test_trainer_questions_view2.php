<?php
session_start();
include "header.php";
include 'footer.php';
require("dbconnect.php");
error_reporting('ERROR');
echo "<BR><h3 class=head1>View/Modify Questions </h3>";
error_reporting();
?>


<html>
<head><style type="text/css">
#body{
	/* Setting the default text color, size, page background and a font stack: */
	font-size:0.925em;
	color:#000000;
	background-color:#EEFFD9;
	font-family:Arial, Helvetica, sans-serif;
}
</style></head>
<body id="body">


 
   
      
      
<?php
extract($_POST);
$test_id=$_POST['testid'];
extract($_GET);

$rs=mysqli_query($con,"Select * from test_questions where test_id='$test_id'");

 	  while($row=mysqli_fetch_array($rs))
{ 
	echo "<form name='form1' method='post' action='Online_test_trainer_questions_view3.php' onsubmit='onSubmit()'>";
	
	echo " <table width='80%'  border='1' align='center'><tr>
	<td height='26'><div align='left'><strong>  Question </strong></div></td>
	<td>&nbsp;</td> 
	<td><input name='addque' type='text' id='addque' maxlength='400' size='200' value='$row[2]'></textarea></td>
	</tr>
	<tr>
	<td height='26'><div align='left'><strong>Answer1 </strong></div></td>
	<td>&nbsp;</td>
	<td><input name='ans1' type='text' id='ans1' size='85' maxlength='85' value='$row[3]'></td>
	</tr>
	<tr>
	<td height='26'><strong>Answer2 </strong></td>
	<td>&nbsp;</td>
	<td><input name='ans2' type='text' id='ans2' size='85' maxlength='85' value='$row[4]'></td>
	</tr>
	<tr>
	<td height='26'><strong>Answer3 </strong></td>
	<td>&nbsp;</td>
	<td><input name='ans3' type='text' id='ans3' size='85' maxlength='85' value='$row[5]'></td>
	</tr>
	<tr>
	<td height='26'><strong>Answer4</strong></td>
	<td>&nbsp;</td>
	<td><input name='ans4' type='text' id='ans4' size='85' maxlength='85' value='$row[6]'></td>
	</tr>
	<tr>
	<td height='26'><strong>True Answer </strong></td>
	<td>&nbsp;</td>
	<td><input name='anstrue' type='text' id='anstrue' size='50' maxlength='50' value='$row[7]'></td>
	</tr>
	

	<td><input name='que_id' type='hidden' id='que_id' size='50' maxlength='50' value='$row[0]'></td>
	

   <p align='center'>
	<tr>
	<td height='26'><strong>Options </strong></td>

<td>&nbsp;</td>
	<td><input style='width: 5em;  height: 5em;' type='submit' name='Modify' value='Modify'><input style='width: 5em;  height: 5em;' type='submit' name='Delete' value='Delete'> </td>
	
	
	</table> </form>";
	
	
}
$_SESSION['$test_id']=$test_id;

?> 
<br>
<br>
<br><a href="Online_test_trainer_options.php">back </a>
<br> <br>
</body></html>

<script >
function onSubmit(){
 alert("Updated successfully");
}
</script>



