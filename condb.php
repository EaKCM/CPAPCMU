<?php
$condb= mysqli_connect("localhost","root","","cpap") or die("Error: " . mysqli_error($condb));
mysqli_query($condb, "SET NAMES 'utf8' ");
//Set time zone
date_default_timezone_set('Asia/Bangkok');
?>