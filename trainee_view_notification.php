
<?php
$conn =  mysqli_connect('localhost:3306', 'root', '');
$select_db = mysqli_select_db($conn, 'project');

$sql="select * from notif ORDER BY id DESC limit 5";
$result=mysqli_query($conn, $sql);

$response='';
while($row=mysqli_fetch_array($result)) {
	$response = $response . "<div class='notification-latest'>" ."<div class='notif'>".
		"<div class='notification-time' style='position:relative'>".$row["time"] ."</div>".
	"<div class='notification-subject' style='position:relative'>". $row["subject"] . "</div>" . 
	"<div class='notification-comment' style='position:relative'>" . $row["comment"]  . "</div>" .
	"</div>" . "</div>";
}
if(!empty($response)) {
	print $response;
}
?>
