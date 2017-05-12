<?php
error_reporting(E_ERROR);
include "header.php";
include 'footer.php';
$host = "localhost:3306";
$user = "root";
$pass = "";
$db = "project";
$con = mysqli_connect($host, $user, $pass, $db) or die("Error " . mysqli_error($con));
$sql = "select filename from course_materials";
$result = mysqli_query($con, $sql);
?>
<!DOCTYPE html>
<html>
<head>
    <title> </title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" >
    <style type="text/css">
#body{
	/* Setting the default text color, size, page background and a font stack: */
	font-size:0.925em;
	color:#000000;
	background-color:#EEFFD9;
	font-family:Arial, Helvetica, sans-serif;
}
</style>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
</head>
<body id="body">
  <div class="row">
        <div class="col-xs-8 col-xs-offset-2">
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>File Name</th>
                        <th>View</th>
                        <th>Download</th>
                    </tr>
                </thead>
                <tbody>
                <?php
                $i = 1;
                while($row = mysqli_fetch_array($result)) { ?>
                <tr>
                    <td><?php echo $i++; ?></td>
                    <td><?php echo $row['filename']; ?></td>
                    <td><a href="uploads/<?php echo $row['filename']; ?>" target="_blank">View</a></td>
                    <td><a href="uploads/<?php echo $row['filename']; ?>" download>Download</a></td>
                </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
<h5><div style="position:absolute;top:100px;left=:0px;"><a href="trainee_options.php">back</a></div></h5>
</body>
</html>