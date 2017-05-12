<html>
<?php include "header.php";
include "footer.php";?>
<body style='background-color:#EEFFD9'>
<?php

$con = mysqli_connect("localhost:3306","root","", "project") or die("Error " . mysqli_error($con));
session_start();
extract($_POST);
$sql="SELECT * from approval where approval='pending'";
$result = $con->query($sql);
$rowcount=mysqli_num_rows($result);
while($row = $result->fetch_assoc()) {
		for($i=1;$i<=$rowcount;$i++) {
			$t_id=$row["id"];
			$approval_update=$_POST["$t_id"];
		$sql1="UPDATE approval SET approval='$approval_update' where id='$t_id'";
		mysqli_query($con,$sql1);
}
}
$sql2="SELECT course,trainee_id,name FROM approval WHERE approval= 'Approved' and time >= ( DATE_SUB(NOW(), INTERVAL 2 SECOND))";
$result1= $con->query($sql2);
while($row1 = $result1->fetch_assoc()) {  
	$course=$row1['course'];
	$traineeid=$row1['trainee_id'];
	$name=$row1['name'];
	
$sql3="INSERT INTO attendance (trainee_id,trainee_name,course) VALUES ('$traineeid','$name','$course')";
mysqli_query($con,$sql3);

}

echo "Changes Applied Successfully";
echo"</br>";
echo"<a href='projectmanager_options.php'> back </a>";
?>
</body>
</html>