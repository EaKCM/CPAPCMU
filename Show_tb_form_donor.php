<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<?php
//1. เชื่อมต่อ database:
include('condb.php');
//2. query ข้อมูลจากตาราง cpap_type_machine
$query = "SELECT * FROM  `tb_form_donator`";
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($condb, $query) or die("ERROR");

//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
echo "<div class='container'>";
echo "<div class='row'>";
echo "<div class='col-md-8'>";
echo '<h4 align="center"> ตารางผู้บริจาค </h4>';
echo "<table border='1' align='center' class='table table-hover'>";
echo "
  <tr align='center' bgcolor='#CCCCCC'>
    <td>หมายเลขผู้บริจาค</td>
    <td>วันที่บริจาค</td>
    <td>ชื่อ-นามสกุล</td>
    <td>อายุ</td>
    <td>ประเภทเครื่องบริจาค</td>
    <td>อื่นๆ</td>
    <td>ยี่ห้อเครื่องบริจาค</td>
    <td>อื่นๆ</td>
    <td>อุปกรณ์เสริม</td>
    <td>อื่นๆ</td>
    <td>สถานะ</td>

  </tr>";
while ($value = mysqli_fetch_assoc($result)) {
    echo "<tr>";
    echo "<td>" . $value["id_donator"] ."</td> ";
    echo "<td>" . $value["date_donor"] ."</td> ";
    echo "<td>" . $value["name_donor"] ."</td> ";
    echo "<td>" . $value["age"] ."</td> ";
    echo "<td>" . $value["type_cpap"] .  "</td> ";
    echo "<td>" . $value["type_cpap1"] ."</td> ";
    echo "<td>" . $value["brand_cpap"] ."</td> ";
    echo "<td>" . $value["brand_cpap1"] ."</td> ";
    echo "<td>" . $value["accessories"] ."</td> ";
    echo "<td>" . $value["accessories1"] ."</td> ";
    echo "<td>" . $value["tatus"] ."</td> ";
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
