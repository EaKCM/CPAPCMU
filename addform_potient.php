<?php 
// เรียกการเชื่อมต่อข้อมูล
include 'condb.php';

echo '<pre>';
print_r($_POST);
echo '</pre>';

// [date_require] => 2022-04-05
//     [name_patient] => eakaruck
//     [age] => 15
//     [phone] => 1234567890
//     [type_cpap_require] => 3
//     [type_cpap_require1] => 
//     [tatus] => Array
//         (
//             [0] => not received
//         )

//     [date_receive] => 2022-04-10
//     [score_machine_use] => 60
//     [score_oxygen] => 80


// ประกาศตัวแปรรับค่า
            $date_require = $_POST['date_require'];
            $name_patient = $_POST['name_patient'];
            $age = $_POST['age'];
            $phone = $_POST['phone'];
            $type_cpap_require = $_POST['type_cpap_require'];
            $type_cpap_require1 = $_POST['type_cpap_require1'];
            $tatus = $_POST['tatus'];
            $date_receive = $_POST['date_receive'];
            $score_machine_use = $_POST['score_machine_use'];
            $score_oxygen = $_POST['score_oxygen'];



//นำตัวแปรส่งขึ้น DB   

            $sql = " INSERT INTO tb_form_patient 
            (
             date_require,
             name_patient,
             age, 
             phone, 
             type_cpap_require, 
             type_cpap_require1, 
             tatus, 
             date_receive, 
             score_machine_use,
             score_oxygen
             )
            VALUES
            (
             '$date_require',
             '$name_patient',
             '$age', 
             '$phone', 
             '$type_cpap_require', 
             '$type_cpap_require1', 
             '$tatus', 
             '$date_receive', 
             '$score_machine_use',
             '$score_oxygen'
             )
            ";

// เช็คแจ้ง การ Error   
            $result = mysqli_query($condb, $sql) or die ("Error in sql : $sql" . mysqli_error($condb));
            mysqli_close($condb);

//เช็คข้อมูลถูกส่งขึ้น DB
if($result){
    echo "<script type='text/javascript'>";
    echo "alert('INSERT SUCCESSFULLY'); ";
    echo "window.location = 'form_ADD_tb_patient.php';";
    echo  "</script>";
}else{ 
    echo 'Error !!';
}      



?>