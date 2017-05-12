<html>
<head>
<style type="text/css">
#body{
	/* Setting the default text color, size, page background and a font stack: */
	font-size:0.925em;
	color:#000000;
	background-color:#EEFFD9;
	font-family:Arial, Helvetica, sans-serif;
div style="margin:auto;width:90%;height:500px;box-shadow:2px 1px 2px 2px #CCCCCC;text-align:left">
<title>Add Course</title>
}
</style></head>
<?php 
include "header.php";
include 'footer.php';
error_reporting(E_ERROR);
?>
<body id="body">

<form name="form1" method="post" onSubmit="return check();" action="Online_test_trainer_add_course2.php">
  <table style="width:41%;border:0;align:center">
    <tr>
      <td width="45%" height="32"><div align="center"><strong>Enter Subject Name </strong></div></td>
      <td width="2%" height="5">  
      <td width="53%" height="32">
        <input name="subname" placeholder="enter language name" type="text" id="subname">
    <tr>
        <td height="26"> </td>
        <td>&nbsp;</td>
	  <td>&nbsp;</td>
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


<SCRIPT type="JavaScript">
function check() {
mt=document.form1.subname.value;
if (mt.length<1) {
alert("Please Enter Subject Name");
document.form1.subname.focus();
return false;
}
return true;
}
</script>