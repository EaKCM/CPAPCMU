<?php session_start(); /* Starts the session */
        
                    /* Check Login form submitted */        
                    if(isset($_POST['Submit'])){
                            /* Define username and associated password array */
                            $logins = array('Alex' => '123456','59001' => '1111','60010' => '2222','somsang' => '3333','61008' => '4444','63002' => '5555','teekorn' => '6666');
                            
                            /* Check and assign submitted Username and Password to new variable */
                            $Username = isset($_POST['Username']) ? $_POST['Username'] : '';
                            $Password = isset($_POST['Password']) ? $_POST['Password'] : '';
                            
                            /* Check Username and Password existence in defined array */            
                            if (isset($logins[$Username]) && $logins[$Username] == $Password){
                                    /* Success: Set session variables and redirect to Protected page  */
                                    $_SESSION['UserData']['Username']=$logins[$Username];
                                    header("location:form_ADD_tb_patient.php");
                                    exit;
                            } else {
                                    header("location:f.php");
                                    exit;
                            }
                    }
?>

<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<?php
//1. เชื่อมต่อ database:
include('condb.php');
//2. query ข้อมูลจากตาราง cpap_type_machine
$query = "SELECT * FROM  `tb_nuser`";
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($condb, $query) or die("ERROR");

//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
echo "<div class='container'>";
echo "<div class='row'>";
echo "<div class='col-md-8'>";
echo '<h4 align="center"> ผู้ใช้ </h4>';
echo "<table border='1' align='center' class='table table-hover'>";
echo "
  <tr align='center' bgcolor='#CCCCCC'>
    <td>หมายเลขผู้ใช้</td>
    <td>UPass</td>
  
  </tr>";
while ($value = mysqli_fetch_assoc($result)) {
    echo "<tr>";
    echo "<td>" . $value["NUM_OT"] ."</td> ";
    echo "<td>" . $value["Upass"] ."</td> ";
    echo "</tr>";
}
echo "</table>";
//5. close connection
echo '<hr>';
                    $NUM_OT = $_POST['NUM_OT'];
                    $Upass = $_POST['Upass'];
                    //echo $NUM_OT;
                    // echo $Upass;


