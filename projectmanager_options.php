<html>
<head><meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
#body{
	/* Setting the default text color, size, page background and a font stack: */
	font-size:0.925em;
	color:#000000;
	background-color:#EEFFD9;
	font-family:Arial, Helvetica, sans-serif;
}
</style>
<link rel="stylesheet" type="text/css" href="verge/css/style.css" />	<!-- Google Webfonts -->
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Sanchez:400,400italic' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="verge/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="verge/css/icomoon.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="verge/css/magnific-popup.css">
	<!-- Theme Style -->
	<link rel="stylesheet" href="verge/css/style.css">
	<!-- Modernizr JS -->
	<script src="verge/js/modernizr-2.6.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css" />
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

</head>
<body>
<section id="body">
   
            

<?php
include("header.php");
include 'footer.php';
session_start();
error_reporting(E_ERROR);
echo "Hello" ." ".$_SESSION['name'] ."<br>";

?>

<div data-role="main" class="ui-content">
    <h2>My content</h2>
    <div data-role="collapsible" onClick="event.stopPropagation();">
    <h4>view all trainers</h4>
    <ul data-role="listview">
      <li><a href="projectmanager_viewalltrainers.php">View all trainer Details</a></li>
       </ul>
       </div>
        <div data-role="collapsible">
       <h4>view all trainees</h4>
       <ul data-role="listview">
       <li><a href="projectmanager_viewalltrainee.php" onClick="event.stopPropagation();">View trainee details</a></li>
       </ul>
       </div>
       <div data-role="collapsible" onClick="event.stopPropagation();">
    <h4>Onsite</h4>
    <ul data-role="listview">
      <li><a href="projectmanager_onsite_trainees_neuralnetwork.php" >Trainees Eligible for onsite(Neural Network)</a></li>
       <li><a href="projectmanager_onsite_trainees_naivebayes.php">Trainees Eligible for onsite(Naive Bayes)</a></li>
       </ul>
       </div>
        <div data-role="collapsible" >
       <h4>Broadcast notification</h4>
        <ul data-role="listview">
        <li><a href="projectmanager_notifcation.php" onClick="event.stopPropagation();">Broadcast notification to trainees </a></li>
       </ul>
    </div>
  <div data-role="collapsible">
       <h4>Approve courses</h4>
        <form method="post" action="projectmanager_approval_check.php" name="approval">
        <?php $con = mysqli_connect("localhost:3306","root","", "project") or die("Error " . mysqli_error($con));
        $sql="SELECT * from approval where approval='pending'"; 

        $result = $con->query($sql);
        if ($result->num_rows > 0) {  
        	echo "<table width='1300' border='6'>
        <tr>
<th width='100' align='center'>Trainee ID </th>
<th width='100' align='center' >Name</th>
<th width='100' align='center'>Course</th>
<th width='100' align='center'>Approval</th>
</tr>";
        	
        	while($row = $result->fetch_assoc()) {	echo "<tr> ";
echo "<td align='center'>" . $row['trainee_id'] . "</td>";
echo "<td align='center'>" . $row['name'] . "</td>";
echo "<td align='center'>" . $row['course'] . "</td>";

?>


<td align='center'> <select name="<?php echo $row['id']; ?>"><option value ="Approved"> Approve</option><option value="Disapproved"> Disapprove</option></select>
</td>
</form>
<?php 
echo " </tr>";

     }
     echo "</table>";
} 

else {
     echo "0 results";
}
$con->close();
?>   
 <input type="reset" value="Reset">&emsp;<input type="submit" value="Submit" onClick="event.stopPropagation();"> </div>
  </div> 
  
       </div>
 </section>
  </body>
  </html>
 