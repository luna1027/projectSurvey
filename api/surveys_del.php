<?php
include_once "../db/base.php";
include_once "../db/function.php";

$SurveySubject->del($_GET['subject_id']);
$SurveyOptions->del(['subject_id' => $_GET['subject_id']]);

// del('survey_subject', $_GET['subject_id']);
// del('survey_options', ['subject_id' => $_GET['subject_id']]);

header("location:../index.php?meow=survey&surveys=surveys_my");
?>