<html>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<?php
//1. เชื่อมต่อ database:
include('condb.php');
//2. query ข้อมูลจากตาราง cpap_type_machine
$query = "SELECT * FROM  `tb_form_patient` ORDER BY score_oxygen DESC";
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($condb, $query) or die("ERROR");

//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
echo "<div class='container'>";
echo "<div class='row'>";
echo "<div class='col-md-8'>";
echo '<h4 align="center"> จัดลำดับอ๊อกซิเจนในเลือด </h4>';
echo "<table border='1' align='center' class='table table-hover'>";
echo "
  <tr  align='center' bgcolor='#eeeeee'>
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
//1. เชื่อมต่อ database:
include('condb.php');
//2. query ข้อมูลจากตาราง cpap_type_machine
$query = "SELECT * FROM  `tb_form_patient` ORDER BY score_machine_use DESC";
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($condb, $query) or die("ERROR");

//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
echo "<div class='container'>";
echo "<div class='row'>";
echo "<div class='col-md-8'>";
echo '<h4 align="center"> จัดลำดับคะแนนการใช้งานเครื่อง </h4>';
echo "<table border='1' align='center' class='table table-hover '>";
echo "
  <tr align='center' bgcolor='#CCCCCC' >
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

echo '<hr>';

?>

</div>

</form>
<button type="submit"><a href="form_ADD_tb_patient.php">เพิ่มข้อมูลคนใข้</a></button>
<button type="submit"><a href="l.php">ออกจากระบบ</a></button>

</div>
</div>
</div>



<!-- 5. close connection -->
<?php
mysqli_close($condb);
?>

</html>
