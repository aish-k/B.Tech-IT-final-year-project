<?php
include "header.php";
include 'footer.php';
$host = "localhost:3306";
$user = "root";
$pass = "";
$db = "project";
$con = mysqli_connect($host, $user, $pass, $db) or die("Error " . mysqli_error($con));
error_reporting(E_ERROR);

// fetch files
$sql = "select filename from course_materials";
$result = mysqli_query($con, $sql);
?>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#body{
	/* Setting the default text color, size, page background and a font stack: */
	font-size:0.925em;
	color:#000000;
	background-color:#EEFFD9;
	font-family:Arial, Helvetica, sans-serif;
}
</style>
    <title> </title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" >
    
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
</head>
<body id="body">
<br/>
<div class="container">
    <div class="row">
        <div class="col-xs-8 col-xs-offset-2 well">
        <form action="trainer_upload_course_materials_final.php" method="post" enctype="multipart/form-data">
           Select File to Upload:
            <div class="form-group">
                <input type="file" name="file1" />
            </div>
            <div class="form-group">
                <input type="submit" name="submit" value="Upload" class="btn btn-info"/>
            </div>
            <?php 
           
            if(isset($_GET['st'])) { ?>
                <div class="alert alert-danger text-center">
                <?php if ($_GET['st'] == 'success') {
                        echo "File Uploaded Successfully!";
                    }
                    else
                    {
                        echo 'Invalid File Extension!';
                    } ?>
                </div>
            <?php } ?>
        </form>
        </div>
    </div>
    
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
                    <td><a href="uploads/<?php echo $row['filename']; ?>" download>Download</td>
                </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<h4><a href="trainer_options.php"> Go back </a></h4>
</body>
</html>
