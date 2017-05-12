<?php include 'footer.php';
include 'header.php';
error_reporting('ERROR')?>
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
</style>
</head>
<body id="body">
<form method="post" id="reg" name="reg" action="trainingmanager_addtrainers2.php" onsubmit="onSubmit()">
		<table style="margin: auto;"> <tr> <td>id :</td> <td><input type="text" name="id" /></td></tr>
		<tr><td>
		Name: </td><td> <input type="text" name="name" /></td></tr>
		<tr><td>
		Feild of study:</td><td> <input type="text" name="feild" /></td></tr>
		<tr><td>
		Course: </td> <td><input type="text" name="course" /></td></tr>
	
		<tr><td>
		Rating: </td> <td><input type="text" name="rating" /></td></tr>
		<tr><td>
		role:</td><td><input type="text" name="role"/></td></tr>
		<tr> <td>
		<input type="submit" name="Submit" /></td></tr></table>
		</form>
	<br>
	<br>
	<a href="trainingmanager_options.php"> Back </a>
		</body>
		</html>
		<script language="javascript">
function onSubmit(){
 alert("Details added successfully");
}
</script>
		
