
<?php
include "header.php";
include 'footer.php';
require("dbconnect.php");
error_reporting(E_ERROR);

echo "<br><h2><div  class=head1>Add Test</div></h2>";
?>
<SCRIPT type="JavaScript">
function check() {
mt=document.form1.testname.value;
if (mt.length<1) {
alert("Please Enter Test Name");
document.form1.testname.focus();
return false;
}
tt=document.form1.totque.value;
if(tt.length<1) {
alert("Please Enter Total Question");
document.form1.totque.value;
return false;
}
return true;
}
</script>
<html>
<head>
<style type="text/css">
#body{
	/* Setting the default text color, size, page background and a font stack: */
	font-size:0.925em;
	color:#000000;
	background-color:#EEFFD9;
	font-family:Arial, Helvetica, sans-serif;
}
</style></head>
<body id="body">
<form name="form1" method="post" onSubmit="return check();" action="Online_test_trainer_test_add2.php">
  <table width="58%"  border="0" align="center">
    <tr>
      <td width="49%" height="32"><div align="left"><strong>Enter Subject ID </strong></div></td>
      <td width="3%" height="5">  
      <td width="48%" height="32"><select name="subid">
<?php
$rs=mysqli_query($con,"Select * from course order by course");
	  while($row=mysqli_fetch_array($rs))
{

echo "<option value='$row[0]' selected>$row[1]</option>";

}
?>
      </select>
        
    <tr>
        <td height="26"><div align="left"><strong> Enter Test Name </strong></div></td>
        <td>&nbsp;</td>
	  <td><input name="testname" type="text" id="testname"></td>
    </tr>
    <tr>
      <td height="26"><div align="left"><strong>Enter Total Question </strong></div></td>
      <td>&nbsp;</td>
      <td><input name="totque" type="text" id="totque"></td>
    </tr>
    <tr>
      <td height="26"></td>
      <td>&nbsp;</td>
      <td><input type="submit" name="submit" value="Add" ></td>
    </tr>
  </table>
</form>
<a href="Online_test_trainer_options.php"> back</a>
<p>&nbsp; </p>
</body>
</html>
