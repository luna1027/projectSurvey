<?php
include_once "../db/base.php";
include_once "../db/function.php";

if (!isset($_POST)) {
} else {
    $option = $SurveyOptions->find($_POST['id']);
    // prr($option);
    $subject = $SurveySubject->find($option['subject_id']);
    // prr($subject);

    $SurveySubject->save(['total' => $subject['total'] + 1, 'id' => $subject['id']]);
    $SurveyOptions->save(['vote' => $option['vote'] + 1, 'id' => $_POST['id']]);
    $SurveyUsers->save(['user_id' => $_SESSION['login']['id'], 'subject_id' => $subject['id'], 'option_id' => $_POST['id']]);
}
header("location:../index.php?meow=survey");
?>