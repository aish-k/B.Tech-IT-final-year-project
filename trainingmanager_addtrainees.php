<?php 
include 'footer.php';
include 'header.php';
error_reporting(E_ERROR);
?>
<html onLoad="LoadOnce()">
<head>
<meta http-equiv="Refresh" content="5">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

<style type="text/css">
#body{
	/* Setting the default text color, size, page background and a font stack: */
	font-size:0.925em;
	color:#000000;
	background-color:#EEFFD9;
	font-family:Arial, Helvetica, sans-serif;
}
</style> </head>
<body id="body">

<form action="trainingmanager_addtrainees2.php" method="post" onsubmit="onSubmit()">
<table style="margin: auto;"><tr> <td> id : </td> <td> <input type="text" name="id" /></td>
<tr> <td>
Name:</td> <td> <input type="text" name="name" /></td></tr>
<tr><td>
DOB: </td><td> <input type="date" name="dob"/> </td></tr>
<tr><td>
city:</td><td> <input type="text" name="city" /></td></tr>
<tr> <td>
AOI:</td><td> <input type="text" name="aoi" /></td></tr>
<tr><td>
Tech known:</td><td> <input type="text" name="tech" /></td></tr>
<tr><td>
lang_known:</td><td> <input type="text" name="lang" /></td></tr>
<tr><td>
E-mail:</td><td> <input type="text" name="email" /></td></tr>
<tr><td>
experience:</td><td><input type="text" name="exp" /></td></tr>
<tr><td>
role:</td><td><input type="text" name="role"/></td></tr>
<tr><td>
Number of projects completed:</td><td><input type="text" name="project"/></td></tr>
<tr><td>
<input type="submit" name="Submit"/></td></tr>
</table>
</form>
<a href="trainingmanager_options.php"> back</a>
</body>
</html>
<script language="javascript">
function onSubmit(){
 alert("Details added successfully");
}
</script>
