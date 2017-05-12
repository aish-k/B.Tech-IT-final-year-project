<html>
<head><meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
 <style>
 #body{
	/* Setting the default text color, size, page background and a font stack: */
	font-size:0.825em;
	color:#000000;
	background-color:#EEFFD9;
	font-family:Arial, Helvetica, sans-serif;
}
#page{
	width:960px;
	margin:0 auto;
	position:relative;
}
.clear:after{
	content: ".";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden;
}

nav, article, nav ul li a,figure {
	/* Applying CSS3 rounded corners: */
	-moz-border-radius:10px;
	-webkit-border-radius:10px;
	border-radius:10px;
} 
h1{
	font-family:"Myriad Pro","Helvetica Neue",Helvetica,Arial,Sans-Serif;
	text-shadow:0 1px 1px black;
	/* The logo text */
	font-size:3.5em;
	padding:0.5em 0 0;
	text-transform:uppercase;
}
</style>
</head>
<body>
<section id ="body">
<section id="page">
    
  
</section>
<?php
session_start();
error_reporting(E_ERROR);
include "header.php";
include 'footer.php';
echo "Hello" ." ".$_SESSION['name'] ."<br>";

?>
<div data-role="main" class="ui-content">
    <h2>My content</h2>
    <div data-role="collapsible" onClick="event.stopPropagation();">
    <h4>Trainers</h4>
    <ul data-role="listview">
      <li><a href="trainingmanager_addtrainers.php">Add trainers</a></li>
      <li><a href="trainingmanager_viewalltrainers.php">View all trainer Details</a></li>
	  
     </ul>
     </div>

    <div data-role="collapsible" onClick="event.stopPropagation();">
    <h4>Trainees</h4>
    <ul data-role="listview">
       <li><a href="trainingmanager_addtrainees.php">Add trainees</a></li>
       <li><a href="trainingmanager_viewalltrainee.php">View trainee details</a></li>
       
    </ul>
    </div>
  </div> 
  </section>
  </body>
  </html>
  <script>

  </script>