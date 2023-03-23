<?php
include_once "../db/base.php";
include_once "../db/function.php";

if (!isset($_POST)) {
    echo "error";
} else {
    $table = $_POST['table'];
    $row = [];
    switch ($table) {
        case 'NewsHeart':
            $row = $$table->find(['news_id' => $_POST['id'], 'user_id' => $_SESSION['login']['id']]);
            $row['lv'] = $_POST['lv'];
            $row['news_id'] = $_POST['id'];
            $row['user_id'] = $_SESSION['login']['id'];
            $$table->save($row);
            echo 'success';
            break;
        case 'NewsMessage':
            if (isset($_POST['message'])) {
                $row['subject_id'] = $_POST['id'];
                $row['message'] = $_POST['message'];
                $row['op'] = $_SESSION['login']['id'];
                $$table->save($row);
                $messages = messageList($_POST['id']);
                echo json_encode($messages);
            } else {
                $messages = messageList($_POST['id']);
                echo json_encode($messages);
            }
            break;

        default:
            $opList = opList();
            echo json_encode($opList);
            break;
    }
    // prr($row);
}

function messageList($id)
{
    global $NewsMessage;
    return $NewsMessage->all(['subject_id' => $id]);
}

function opList()
{
    global $Users;
    return $Users->all();
}
