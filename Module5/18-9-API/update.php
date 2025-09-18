<?php
 include('connect.php');

 $id = $_POST['id'];
 $n = $_POST['name'];
 $s = $_POST['surname'];
 $e = $_POST['email'];
 $p = $_POST['password'];


$Sql_Query = "UPDATE student SET name='$n' ,surname='$s',email='$e',password='$p' WHERE id = '$id'";

 if(mysqli_query($con,$Sql_Query))
{
 echo 'Record Updated Successfully';
}
else
{
 echo 'Something went wrong';
 }

 mysqli_close($con);
?>
