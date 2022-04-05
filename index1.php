<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  
  <h1>รายนามผู้บริจาคเครื่อง CPAP</h1>
  <form action="addform_donor.php" method="post">
    วันที่บริจาค
    <input type="date" name="date_donor" required>
    <br>
    ชื่อ-นามสกุล
    <input type="text"  name="name_donor" placeholder="ชื่อ-นามสกุล" required>
    <br>
    อายุ
    <input  type="number" name="age" placeholder="อายุ" min="0" >
    <br>
    ประเภทเครื่องบริจาค
    <select name="type_cpap">
          <option value="">กรุณาเลือก</option>
          <option value="1">CPAP</option>
          <option value="2">Bipap</option>
          <option value="3">AutoPAP</option>
          <option value="4">อื่นๆ</option>
          <textarea name="type_cpap1"  placeholder="อื่นๆ กรุณากรอกประเภทเคื่องบริจาค"  cols="" rows=""></textarea>
    </select>
    <br>
    ยี่ห้อเครื่องบริจาค
    <select name="brand_cpap">
          <option value="">กรุณาเลือก</option>
          <option value="1">Phillips</option>
          <option value="2">Resmed</option>
          <option value="3">Weimann</option>
          <option value="4">Yuwell</option>
          <option value="5">อื่นๆ</option>
          <textarea name="brand_cpap1"  placeholder="อื่นๆ กรุณากรอกยี่ห้อเคื่องบริจาค"  cols="" rows=""></textarea>
    </select>
    <br>
    อุปกรณ์เสริม <br>
    <input type="checkbox" name="accessories[]" value="bag" >กระเป๋า <br>
    <input type="checkbox" name="accessories[]" value="body" >ตัวเครื่อง <br>
    <input type="checkbox" name="accessories[]" value="humidifier" >เครื่องทำความชื้น <br>
    <input type="checkbox" name="accessories[]" value="wire" >สายไฟ <br>
    <input type="checkbox" name="accessories[]" value="filter" >แผ่นกรอง <br>
    <input type="checkbox" name="accessories[]" value="Mask head gear" >Mask head gear<br>
    <input type="checkbox" name="accessories[]" value="air pipe" >ท่อส่งลม <br>
    <input type="checkbox" name="accessories[]" value="body" >อื่นๆ<br>
    <textarea name="accessories1"  placeholder="อื่นๆ กรุณากรอกอุปกรณ์เสริม"  cols="" rows=""></textarea>
    <br>
    สถานะของเครื่อง <br>
    <input type="checkbox" name="tatus[]" value="transfer" >ส่งมอบแล้ว <br>
    <input type="checkbox" name="tatus[]" value="instock" >ใน Stock<br>
    <button type="submit">บันทึกข้อมูล</button> 
    <BR>
    <BR>
    <button type="submit"><a href="f.php">สำหรับพนักงาน</a></button>
     

</form>
</body>

</html>

