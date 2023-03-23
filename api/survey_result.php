<?php
include_once "../db/base.php";
include_once "../db/function.php";

if (isset($_POST['id'])) {
    $resultOptions = $SurveyOptions->all(['subject_id' => $_POST['id']]);
    echo json_encode($resultOptions);
}
?>