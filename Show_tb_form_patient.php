<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<?php
//1. เชื่อมต่อ database:
include('condb.php');
//2. query ข้อมูลจากตาราง cpap_type_machine
$query = "SELECT * FROM  `tb_form_patient`";
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($condb, $query) or die("ERROR");

//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
echo "<div class='container'>";
echo "<div class='row'>";
echo "<div class='col-md-8'>";
echo '<h4 align="center"> ตารางคนใข้ </h4>';
echo "<table border='1' align='center' class='table table-hover'>";
echo "
  <tr align='center' bgcolor='#CCCCCC'>
    <td>หมายเลขคนใข้</td>
    <td>วันที่แจ้งความจำนงค์รับบริจาค</td>
    <td>ชื่อ-นามสกุล</td>
    <td>อายุ</td>
    <td>โทรศัพท์</td>
    <td>ประเภทเครื่องที่ต้องการ</td>
    <td>อื่นๆ</td>
    <td>สถานะรับเครื่อง</td>
    <td>วันที่ได้รับเคื่อง</td>
    <td>คะแนน(ร้อยละการใช้เครื่อง CPAP)</td>
    <td>คะแนนอ๊อกซิเจนในเลือด(O2sat)</td>
  </tr>";
while ($value = mysqli_fetch_assoc($result)) {
    echo "<tr>";
    echo "<td>" . $value["id_patient"] ."</td> ";
    echo "<td>" . $value["date_require"] ."</td> ";
    echo "<td>" . $value["name_patient"] ."</td> ";
    echo "<td>" . $value["age"] ."</td> ";
    echo "<td>" . $value["phone"] .  "</td> ";
    echo "<td>" . $value["type_cpap_require"] ."</td> ";
    echo "<td>" . $value["type_cpap_require1"] ."</td> ";
    echo "<td>" . $value["tatus"] ."</td> ";
    echo "<td>" . $value["date_receive"] ."</td> ";
    echo "<td>" . $value["score_machine_use"] ."</td> ";
    echo "<td>" . $value["score_oxygen"] ."</td> ";
    echo "</tr>";
}
echo "</table>";
//5. close connection
echo '<hr>';

?>

</div>

</form>
</div>
</div>
</div>





<?php
mysqli_close($condb);
?>
