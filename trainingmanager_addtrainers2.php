<?php  error_reporting(E_ERROR);
		session_start();
		extract($_POST);
		if(isset($_POST['Submit'])){
		$id=$_POST["id"];
		$name=$_POST["name"];
		$feild=$_POST["feild"];
		$course=$_POST["course"];
		$rating=$_POST["rating"];
		$role=$_POST["role"];
		$connection = mysqli_connect('localhost:3306', 'root', '');
		if (!$connection){
			die("Database Connection Failed" . mysqli_error($connection));
		}
		$select_db = mysqli_select_db($connection, 'project');
		if (!$select_db){
			die("Database Selection Failed" . mysqli_error($connection));
		}
		$sql = "INSERT INTO trainer (trainer_id,trainer_name,feild_of_study,course,Rating)
		VALUES ('$id','$name','$feild','$course','$rating')";
		if (mysqli_query($connection,$sql) === TRUE) {
			mysqli_query($connection,"INSERT INTO login(id,name,role) VALUES('$id','$name','$role')");
			echo "New record created successfully";
			unset($_POST['Submit']);
			header('Location: trainingmanager_addtrainers.php');
			
		} else {
			echo "Error: " . $sql . "<br>" . die(mysqli_error($connection));
			unset($_POST['Submit']);
		}
		}
		
		?>