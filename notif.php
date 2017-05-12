<html>
<head>
<style>body{max-width:610px; }
.dropbtn{
	position:absolute;
	background-color: black;
	min-width:160px;
	box-shadow:#000000;
	z-index:10;
}
#notification-header {
	background-color: #EEFFD9;
	padding: 10px;
	text-align:right;
	text-color:black;

	}
button#notification-icon {
	background: transparent;
	border: 0;
	position:relative;
	cursor:pointer;
	width:60px;
	height:40px;
}
#notification-count{
	position: absolute;
	left: 0px;
	top: 0px;
	font-size: 0.8em;		
	color: #de5050;
	font-weight:bold;
    z-index:10;
	}
#form-header {
	font-size:1.5em;
}
#frmNotification {
	padding:20px 30px;
}
.form-row{
	padding-bottom:20px;
}
#btn-send {
	background: #258bdc;
	color: #FFF;
	padding: 10px 40px;
	border: 0px;
}
div.demo-content input[type='text'],textarea{
	width: 100%;
	padding: 10px 5px;
}
#notification-latest {
	text-color: black;
	position: absolute;
	right: 0px;
	background-color: black;
	text-align: left;
	z-index:10;
	border-color:white;
	max-width:3000px;
 box-shadow: white;
 border-color:white;
	 border-style: solid;
    border-bottom-width: 10px;
 }
.notification-item {
	padding:10px;
	border: black 1px solid;
	cursor:pointer;
	 
	
}
.notification-subject {		
  white-space: nowrap;
  overflow: hidden;
  border-color:white;
  text-color: #ffcc99;
  font-size: 1.4em;

}
.notification-time {		
  white-space: nowrap;
  overflow: hidden;
  border-color:white;
  text-color: #ffcc99;
  font-size: .875em;

}
.notification-comment {		
  white-space: nowrap;
  overflow: hidden;
}
.notif {
    border-color:#EEFFD9;
	 border-style: solid;
    border-bottom-width: 10px;
}
    
 font-style:italic;
}</style>
	<script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
</head>
<body>
	<div class="demo-content">

<div id="notification-header">
			   <div style="position:absolute; z-index=10;top:80px; right:120px;background=black width=100%">
			   <button id="notification-icon" name="button" onclick="myFunction()" class="dropbtn"><img src="notification128.png" /><span id="notification-count"></span></button>
			    <div id="notification-latest" ></div>
			    </div>

				</div>
				</div>
				</body>
</html>
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
	});
		 
	</script>