<?php

 include('connect.php');

 $sql = "select * from student";
 $result = mysqli_query($con,$sql);
 $data2 = array();

while($row = mysqli_fetch_array($result))
{
    $data["id"] = $row["id"];
    $data["name"] = $row["name"];
    $data["surname"] = $row["surname"];
    $data["email"] = $row["email"];
    $data["password"] = $row["password"];

   array_push($data2,$data);
}

 echo json_encode($data2);
mysqli_close($con);
?>