<?php
session_start();
include "header.php";
include 'footer.php';
require("dbconnect.php");
error_reporting(E_ERROR);

echo "<BR><h3 class=head1>Add Question </h3>";
?>

</script>
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
<div style="margin:auto;width:90%;height:500px;box-shadow:2px 1px 2px 2px #CCCCCC;text-align:left">
<form name="form1" method="post" onSubmit="return check();" action="Online_test_trainer_questions_view2.php">
  <table width="80%"  border="1" align="center">
    <tr>
      <td width="24%" height="32"><div align="left"><strong>Select Test Name </strong></div></td>
      <td width="1%" height="5">  
      <td width="75%" height="32"><select name="testid" id="testid">
<?php

$rs=mysqli_query($con,"Select * from test order by test_name");
	  while($row=mysqli_fetch_array($rs))
{


echo "<option value='$row[0]' selected>$row[2]</option>";

}
echo "<input type='submit' name= 'submit' value='Select' >";
?>
     </select></td></tr></table></form></div></body></html>