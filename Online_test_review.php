<html>
<head>
<title>Online Quiz - Review Quiz </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php
include("dbconnect.php");
error_reporting(E_ERROR);
$n=0;
$rs=mysqli_query($con,"select * from user_ans where sess_id='" . session_id() ."'") or die(mysqli_error($con));
while($row= mysqli_fetch_row($rs)){
echo "<table width=100%> <tr> <td width=30>&nbsp;<td> <table border=0>";
$n=$n+1;
echo "<tR><td><span class=style2>Que ".  $n .": $row[2]</style>";
echo "<tr><td class=".($row[7]==1?'tans':'style8').">$row[3]";
echo "<tr><td class=".($row[7]==2?'tans':'style8').">$row[4]";
echo "<tr><td class=".($row[7]==3?'tans':'style8').">$row[5]";
echo "<tr><td class=".($row[7]==4?'tans':'style8').">$row[6]";
echo "</table></table>";
}
?>
