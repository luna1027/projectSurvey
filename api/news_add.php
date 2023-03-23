<?php
include_once "../db/base.php";
include_once "../db/function.php";

if (!isset($_POST)) {
    header("location:../index.php?meow=news");
} else {
    $row = [];
    if (isset($_FILES['news_file'])) {
        // prr($_FILES);
        move_uploaded_file($_FILES['news_file']['tmp_name'], "../news/" . $_FILES['news_file']['name']);
        $row['img'] = $_FILES['news_file']['name'];
    }
    $row['img_content'] = $_POST['img_content'];
    $row['subject'] = $_POST['subject'];
    $row['type'] = $_POST['type'];
    $row['content'] = $_POST['content'];
    $row['user_id'] = $_SESSION['login']['id'];
    $News->save($row);
}

$NewsType->save(['id' => $_POST['type'], 'total' => $news_type['total'] + 1]);

header("location:../index.php?meow=news");
?>