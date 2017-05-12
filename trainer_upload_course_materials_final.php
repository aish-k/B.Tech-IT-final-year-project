<?php
error_reporting(E_ERROR);


//connect mysql database
$host = "localhost:3306";
$user = "root";
$pass = "";
$db = "project";
$con = mysqli_connect($host, $user, $pass, $db) or die("Error " . mysqli_error($con));

//check if form is submitted
if (isset($_POST['submit']))
{
    $filename = $_FILES['file1']['name'];

    //upload file
    if($filename != '')
    {
        $ext = pathinfo($filename, PATHINFO_EXTENSION);
        $allowed = ['pdf', 'txt', 'doc', 'docx', 'png', 'jpg', 'jpeg',  'gif','ppt','pptx'];
    
        //check if file type is valid
        if (in_array($ext, $allowed))
        {
            // get last record id
            $sql = 'select max(id) as id from course_materials';
            $result = mysqli_query($con, $sql);
            if (count($result) > 0)
            {
                $row = mysqli_fetch_array($result);
                $filename = ($row['id']+1) . '-' . $filename;
            }
            else
                $filename =  $filename;

            //set target directory
            $path = 'uploads/';
                
            $created = @date('Y-m-d H:i:s');
            move_uploaded_file($_FILES['file1']['tmp_name'],('uploads/'.$filename));
            
            // insert file details into database
            $sql = "INSERT INTO course_materials (filename, created) VALUES('$filename', '$created')";
            mysqli_query($con, $sql);
            header("Location:trainer_upload_course_materials.php?st=success");
        }
        else
        {
            header("Location:trainer_upload_course_materials.php?st=error");
        }
    }
    else
        header("Location:trainer_upload_course_materials.php");
}
