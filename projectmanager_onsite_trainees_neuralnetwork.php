<style type="text/css"> 
img {
    position: relative;
   left: 0px;
    top: 0px;
    
}
.topleft {
    position: absolute;
    top: 150px;
    left: 50px;
    font-size: 24px;
</style>
<?php
include 'header.php';
include 'footer.php';
error_reporting(E_ERROR);

exec("C:/wamp64/www/st/R/R-3.3.3/bin/Rscript.exe C:/wamp64/www/st/onsite.R");

echo("<img src='/st/onsite_nn.png' width='900px' height= 800px' style='margin-bottom: -800px;'/>");
echo "<div class='topleft'>Candidates eligible for going Onsite</div>";

?>


