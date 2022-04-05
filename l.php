<?php session_start(); /* Starts the session */

if(!isset($_SESSION['UserData']['Username'])){
        header("location:index.html");
        exit;
}
?>
<center><button type="submit"><a href="s.php">CONFIRM LOGOUT</a></button>
<BR>  <H1>OR</H1> <BR>

<button type="submit"><a href="form_ADD_tb_patient.php">INSERT PATIENT</a></button></center>