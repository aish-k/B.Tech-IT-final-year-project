<?php
error_reporting(E_ERROR);
$con = mysqli_connect("localhost:3306","root","", "project") or die("Error " . mysqli_error($con));
session_start();
$course=$_SESSION['course']; 
$sql="SELECT * FROM attendance WHERE course='$course' and Completion='pending'";
$result = $con->query($sql);
$rowcount=mysqli_num_rows($result);
while($row = $result->fetch_assoc()) {
	
		$t_id=$row["id"];
		$attendance=$_POST["$t_id"];
		if($attendance=='Present')
		{
			$sql1="UPDATE attendance SET Present=Present+1,Total_hours=Total_hours+1 where id='$t_id'";
		  mysqli_query($con,$sql1);
		
	}
       else{
        	$sql6="UPDATE attendance SET Absent=Absent+1,Total_hours=Total_hours+1 where id='$t_id'";
        	mysqli_query($con,$sql6);
        	
        }
	}
$sql2="SELECT * FROM attendance WHERE Total_hours=5";
		$result2 = $con->query($sql2);
		while($row2 = $result2->fetch_assoc()){
			$att=$row2['Total_hours'];
			$sql3="UPDATE attendance SET Completion = 'Completed' WHERE Total_hours='$att'";
			mysqli_query($con,$sql3);
		}

	$sql4="SELECT * FROM attendance WHERE Completion='Completed' and course='$course'";
	$result4=$con->query($sql4);
	while($row4 = $result4->fetch_assoc()){
		$t_id=$row4['trainee_id'];
		$att_fin=$row4['Present'];
		$sql5="UPDATE trainee SET coursescompleted = coursescompleted+1,total_att=total_att+$att_fin WHERE trainee_id='$t_id'";
		mysqli_query($con,$sql5);
		$sql8="UPDATE trainee SET net_att = total_att/coursescompleted where trainee_id='$t_id'";
		mysqli_query($con,$sql8);
	}
	  

	   
	  
	   header("Location:trainer_mark_attendance");
	
		?>