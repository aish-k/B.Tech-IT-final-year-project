<?php
 
echo "<form action='new.php' method='get'>";
echo "Number values to generate: <input type='text' name='N' />";
echo "<input type='submit' />";
echo "</form>";
 
if(isset($_GET['N']))
{
  $N = $_GET['N'];
 
  // execute R script from shell
  // this will save a plot at temp.png to the filesystem
  exec("Rscript my_rscript.R $N");
 
  // return image tag
  $nocache = rand();
  echo("<img src='temp.png?$nocache' />");
}
?>