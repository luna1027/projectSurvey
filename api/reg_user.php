<h2>Reg User</h2>
<?php
include_once "../db/base.php";
include_once "../db/function.php";

if (!isset($_POST)) {
    header("location:../index.php?meow=sign_in");
}else{
    $row = [];
    $row['acc'] = trim(strip_tags($_POST['acc']));
    $row['pw'] = trim(strip_tags($_POST['pw']));
    $row['name'] = trim(strip_tags($_POST['name']));
    $row['phone'] = trim(strip_tags($_POST['phone']));
    $row['email'] = trim(strip_tags($_POST['email']));
    $row['birthday'] = trim(strip_tags($_POST['birthday']));
    $Users->save($row);
}

$status = "Registered successfully, please log in again.";
header("location:../index.php?meow=sign_in&status=$status");

?>