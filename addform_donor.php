<?php 
// เรียกการเชื่อมต่อข้อมูล
include 'condb.php';

echo '<pre>';
print_r($_POST);
echo '</pre>';


// [date_donor] => 2022-04-04
//     [name_donor] => eakaruck
//     [age] => 13
//     [type_cpap] => 1
//     [type_cpap1] => 123123
//     [brand_cpap] => 2
//     [brand_cpap1] => 123123
//     [accessories] => Array
//         (
//             [0] => bag
//             [1] => body
//             [2] => humidifier
//             [3] => wire
//             [4] => filter
//             [5] => Mask head gear
//             [6] => air pipe
//             [7] => body
//         )

//     [accessories1] => 123123
//     [tatus] => Array
//         (
//             [0] => transfer
//             [1] => instock

// ประกาศตัวแปรรับค่า
            $date_donor = $_POST['date_donor'];
            $name_donor = $_POST['name_donor'];
            $age = $_POST['age'];
            $type_cpap = $_POST['type_cpap'];
            $type_cpap1 = $_POST['type_cpap1'];
            $brand_cpap = $_POST['brand_cpap'];
            $brand_cpap1 = $_POST['brand_cpap1'];
            $accessories = $_POST['accessories'];
            $accessories1 = $_POST['accessories1'];
            $tatus = $_POST['tatus'];

// นำตัวแปรส่งขึ้น DB   

            $sql = " INSERT INTO tb_form_donator 
            (
             date_donor,
             name_donor,
             age, 
             type_cpap, 
             type_cpap1, 
             brand_cpap, 
             brand_cpap1, 
             accessories,
             accessories1, 
             tatus)
            VALUES
            (
            '$date_donor', 
            '$name_donor', 
            '$age', 
            '$type_cpap', 
            '$type_cpap1', 
            '$brand_cpap', 
            '$brand_cpap1', 
            '$accessories' , 
            '$accessories1', 
            '$tatus')
            ";

// เช็คแจ้ง การ Error   
            $result = mysqli_query($condb, $sql) or die ("Error in sql : $sql" . mysqli_error($condb));
            mysqli_close($condb);

//เช็คข้อมูลถูกส่งขึ้น DB
if($result){
    echo "<script type='text/javascript'>";
    echo "alert('INSERT SUCCESSFULLY'); ";
    echo "window.location = 'index.html';";
    echo  "</script>";
}else{ 
    echo 'Error !!';
}          



?>