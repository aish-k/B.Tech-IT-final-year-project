<html>
<head>
 <title>Learning Management System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
html{
background-color:#DAFCAF;
}
#body{
	
	font-size:0.925em;
	color:#000000;
	background-color:#EEFFD9;
	font-family:Arial, Helvetica, sans-serif;
	position:relative;
	z-index:0;
	}
#page{
	  
	position:relative;
    z-index:0;  
}

 
h1{
	font-family:"Myriad Pro","Helvetica Neue",Helvetica,Arial,Sans-Serif;
	text-shadow:0 1px 1px black;
	
	font-size:1.5em;
	padding:0.5em 0 0;
	text-transform:uppercase;
      
    
}
}

</style>
 <link rel="stylesheet" href="notif.css" type="text/css">
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

	<script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
	
 
</head>


		
</div>
  <body style='background-color:#DAFCAF'>

  <section id="body">
 
 <?php
 session_start();
 error_reporting(E_ERROR);
 include "header.php"; 
 include 'footer.php';
 include 'notif.php';
 include'dbconnect.php';
echo "Hello"." " .$_SESSION['name'] ."<br>";

	$id= $_SESSION['id'];
	$name=$_SESSION['name'];	
	$_SESSION['id']=$id;
	$_SESSION['name']=$name;
?>
<section id="page">
<div class="demo-content"style="position:relative; z-index:1;">
	
	<div data-role="main" class="ui-content" style="position:static">
    <h1>My content</h1>
	<div data-role="collapsible" style="position:static" onClick="event.stopPropagation();">
    <h4>Courses</h4>
    <ul data-role="listview">
       <li><a href="trainee_coursematerials.php">Course Materials</a></li>
         <li><a href="trainee_ongoing_courses.php"> Progress of any courses </a><li>
       <li><a href="trainee_view_course_appplication_status.php"> Course approval status</a><li>
     </ul>
    </div>
    <div data-role="collapsible"style="position:static">
   <h4>Apply for a course</h4>
    <form  name ="f1" action="trainee_course_apply.php" method="post">
    
          <?php 
$con = mysqli_connect($host, $user, $pass, $db) or die("Error " . mysqli_error($con));
       $sql = "SELECT * FROM course";
       $result = $con->query($sql);
       if ($result->num_rows > 0) {
       while($row = $result->fetch_assoc()){?>
       <label><input type="radio" name="radio" value="<?php echo $row['course']; ?>"><?php echo $row['course']; ?></label>
      <?php 
      } }
    ?>
      <input type = "Submit" Name = "Submit" VALUE = "Select a course" onclick="location.href='http://localhost/st/trainee_course_apply.php';">
    
      </form>
    </div>
	<div data-role="collapsible" style="position:static" onClick="event.stopPropagation();">
    <h4>Tests</h4>
    <ul data-role="listview">
      <li><a href="OnlineTest_options1.php">Online Test portal</a></li>
      
    </ul>
    </div>
  </div> 
  </div>
  </section>
    </section>
  
  </body>
    
</html>

