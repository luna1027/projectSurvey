<?php
include_once "../db/base.php";
include_once "../db/function.php";


$user = $Users->find(['acc' => $_POST['acc'], 'pw' => $_POST['pw']]);
// prr($user);

$chk = false;
// foreach ($user as $user) {
if ($_POST['acc'] == $user['acc'] && $_POST['pw'] == $user['pw']) {
    $chk = true;
    $_SESSION['login'] = $user;
    setcookie('userID', $_SESSION['login']['id'], time() + 60 * 60 * 24, '/s1110419');
}
// }
if ($chk) {
    // $times = $_COOKIE['times'] + 1;
    // setcookie('times', $times, time() + (60 * 60 * 24 * 365));
    echo $_POST['acc'];
    echo $_POST['pw'];
} else {
    $error = "Invalid Username or Password.";
}

if (isset($error)) {
    header("location:../index.php?meow=sign_in&error=$error");
} else {
    header("location:../index.php");
}
?>