<?php 
session_start();
error_reporting(E_ERROR);
$id=$_SESSION['id'];
$name=$_SESSION['name'];?>
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

 <form method="post" action="trainer_mark_attendance2.php" name="attendance" onsubmit="onSubmit()">

<?php echo "<p>";
include "header.php";
include 'footer.php';
$con = mysqli_connect("localhost:3306","root","", "project") or die("Error " . mysqli_error($con));
$sql1 ="SELECT course from trainer where trainer_id ='$id' and trainer_name ='$name'";
$result1 = $con->query($sql1);
$row1 = $result1->fetch_assoc();
$course=$row1['course'];
$_SESSION['course']=$course;

echo "Today is " . date("m/d/Y") . "<br><br><br><br>";
?>

        <?php 
        $sql="SELECT * from attendance where course='$course' and Completion='pending'"; 

        $result = $con->query($sql);
        if ($result->num_rows > 0) {  
        	echo "<table align='center' border='6'>
        <tr>
<th width='100'>Trainee ID </th>
<th width='100'>Name</th>
<th width='100'>Course</th>
</tr>";
        	
        	while($row = $result->fetch_assoc()) {	echo "<tr> ";
echo "<td align='center'>" . $row['trainee_id'] . "</td>";
echo "<td align='center'>" . $row['trainee_name'] . "</td>";
echo "<td align='center'>" . $row['course'] . "</td>";
echo "<td align='center'>"; echo "</p>";?>
<td align='center'> <select name="<?php echo $row['id']; ?>"><option value ="Present"> Present</option><option value="Absent"> Absent</option></select>
<?php 
echo "</td></tr>";
        	}
        	}
        	
        	echo "</table>";
        	?> 
<input type="reset" value="Reset" style="margin-left: 50%;">&nbsp;<input type="submit" name="Submit" value="Submit" style="margin-left: 50%;">
</form>
 <p>
 <p>
 <p>
 <p>
<?php 
echo "<p>";
echo"<br>"; 
$query="SELECT * FROM attendance WHERE course='$course'";
	$result = mysqli_query($con, $query) or die(mysqli_error($con));
	$count = mysqli_num_rows($result);
	echo "<table border='10' align='center'>";
	echo "<tr>";
	echo "<th>" ."Course" . "</th>";
	echo "<th>" . "Trainee id" . "</th>";
	echo "<th>" . "Name" . "</th>";
	echo "<th>" . "Present" . "</th>";
	echo "<th>" . "Absent" . "</th>";
	echo "<th>" . "Completion" . "</th>";
	echo "<th>" . "Total_hours" . "</th>";
	echo "<th>" . "Attendance Percentage" . "</th>";
	echo "</tr>";
	if ($count > 0){
		while($row = $result->fetch_assoc()) {
			
			
			echo "<tr>";
			echo "<td>" . $row["course"] ."</td>";
			echo "<td>" . $row["trainee_id"] . "</td>";
			echo "<td>" . $row["trainee_name"] . "</td>";
			echo "<td>" . $row["Present"] . "</td>";
			echo "<td>" . $row["Absent"] . "</td>";
			echo "<td>" . $row["Completion"] . "</td>";
			echo "<td>" . $row["Total_hours"] . "</td>";
			$attn=$row["Present"]/$row["Total_hours"];
			$attnp=$attn * 100;
			echo "<td>" . $attnp ."%" ."</td>";
			echo "</tr>";
			
		}
	}
	echo "</table>";
	echo "</p>";?>
<br>
<br>
<br>
<br>


<a href="trainer_options.php"> <br> <br> <br> back</a>
</body>
</html>

<script language="javascript">
function onSubmit(){
 alert("Attendence updated successfully");
}
</script>