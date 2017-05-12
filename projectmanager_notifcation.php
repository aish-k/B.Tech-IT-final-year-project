

<html>	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<style type="text/css">
#body{
	font-size:0.925em;
	color:#000000;
	background-color:#EEFFD9;
	font-family:Arial, Helvetica, sans-serif;
}
</style>
	<link rel="stylesheet" href="notif.css" type="text/css">
	<script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
	<script type="text/javascript">
	function myFunction() {
		$.ajax({
			url: "trainee_view_notification.php",
			type: "POST",
			processData:false,
			success: function(data){
				$("#notification-count").remove();					
				$("#notification-latest").show();$("#notification-latest").html(data);
			},
			error: function(){}           
		});
	 }
	 
	 $(document).ready(function() {
		$('body').click(function(e){
			if ( e.target.id != 'notification-icon'){
				$("#notification-latest").hide();
			}
		});
	 
	</script>
	</head>
	<body id="body">
	<?php 
include 'header1.php';
include 'footer.php';
error_reporting(E_ERROR);
?>
	<div align="center" class="demo-content" style=width:100%">
		
		<form name="frmNotification" id="frmNotification" action="projectmanager_addnotification.php" method="post" >
			<div id="form-header" class="form-row">Add New Message</div>
			<div class="form-row">
				<div class="form-label">Subject:</div><div class="error" id="subject"></div>
				<div class="form-element">
					<input type="text"  name="subject" id="subject" required>
					
				</div>
			</div>
			<div class="form-row">
				<div class="form-label">Comment:</div><div class="error" id="comment"></div>
				<div class="form-element">
					<textarea rows="4" cols="30" name="comment" id="comment"></textarea>
				</div>
			</div>
			<div class="form-row">
				<div class="form-element">
					<input type="submit" name="add" id="btn-send" value="Submit">
				</div>
			</div>
		</form>
		</div>
		<a href="projectmanager_options.php">Back</a>
	</body>
</html>