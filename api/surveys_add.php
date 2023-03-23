<h2>Add Surveys</h2>
<?php
include_once "../db/base.php";
include_once "../db/function.php";

if (!isset($_POST)) {
   header("location:../index.php?meow=survey&surveys=surveys_add");
} else {
    if (isset($_POST['subject'])) {
        $row['subject'] = $_POST['subject'];
        // $row['type'] = $_POST['type'];
        $row['start_time'] = $_POST['start_time'];
        $row['end_time'] = $_POST['end_time'];
        $row['user_id'] = $_POST['user_id'];
        $SurveySubject->save($row);
    }
    if (isset($_POST['opt'])) {
        $subject_id = $SurveySubject->find(['subject' => $_POST['subject']])['id'];
        foreach ($_POST['opt'] as $option) {
            if ($option !== '') {
                $tmp = ['subject_id' => $subject_id, 'opt' => $option];
                $SurveyOptions->save($tmp);
            }
        }
    }
}
prr($tmp);

header("location:../index.php?meow=survey&surveys=surveys_my");
?>