<!DOCTYPE html>
<html lang="en">
<head>
  
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <h1>เพิ่มข้อมูลคนใข้</h1>
  <form action="addform_potient.php" method="post">
    วันที่แจ้งความจำนงค์รับบริจาค
    <input type="date" name="date_require" required>
    <br>
    ชื่อ-นามสกุล
    <input type="text"  name="name_patient" placeholder="ชื่อ-นามสกุล" required>
    <br>
    อายุ
    <input  type="number" name="age" placeholder="อายุ" min="0" >
    <br>
    โทรศัพท์
    <input type="text" name="phone" placeholder="เบอร์โทรศัพท์" required>
    <br>
    <br>
    ประเภทเครื่องที่ต้องการ
    <select name="type_cpap_require">
          <option value="1">CPAP</option>
          <option value="2">Bipap</option>
          <option value="3">AutoPAP</option>
          <option value="3">อื่นๆ</option>
          <textarea name="type_cpap_require1" id="" placeholder="อื่นๆ กรุณากรอกประเภทเคื่องบริจาค"  cols="" rows=""></textarea>
    </select>
    <br>
    สถานะรับเครื่อง
    <br>
    <br>
    <input type="checkbox" name="tatus[]" value="not received" >ยังไม่ได้รับ <br>
    <input type="checkbox" name="tatus[]" value="received" >รับมอบแล้ว <br>
    <br>
    วันที่ได้รับเคื่อง
    <input type="date" name="date_receive" required>
    <br>
    คะแนน(ร้อยละการใช้เครื่อง CPAP)
    <input  type="number" name="score_machine_use" placeholder="1-100" min="1" max="100">
    <br>
    คะแนนอ๊อกซิเจนในเลือด(O2sat)
    <input  type="number" name="score_oxygen" placeholder="1-100" min="1" max="100">
    <br>
    
   <button type="submit">บันทึกข้อมูล</button>
   <button type="submit"><a href="Show_DESC.php">ข้อมูลการใช้งานคนใข้</a></button>
   <button type="submit"><a href="l.php">ออกจากระบบ</a></button>
   <br>
   
   <?php  
   include 'Show_tb_form_patient.php' ;
   include 'Show_tb_form_donor.php' ;
   ?>

    


  </form>
</body>
</html>