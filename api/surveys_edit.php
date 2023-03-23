<!-- Edit Surveys -->
<?php
include_once "../db/base.php";
include_once "../db/function.php";

if (!isset($_POST)) {
} else {
    $SurveySubject->save(['subject' => $_POST['subject'], 'id' => $_POST['subject_id']]);
    $originOpts = $SurveyOptions->all(['subject_id' => $_POST['subject_id']]);
    foreach ($originOpts as $value) {
        $originOptsId[] = $value['id'];
    }

    foreach ($_POST['opt_id'] as $idx => $opt_id) {
        $key = array_search($opt_id, $originOptsId);
        if ($_POST['opt'][$idx] !== "") {
            $SurveyOptions->save(['opt' => $_POST['opt'][$idx], 'id' => $opt_id]);
        }
        unset($originOptsId[$key]);
    }

    foreach ($originOptsId as $del) {
        $SurveyOptions->del($del);
    }

    if (isset($_POST['nopt'])) {
        foreach ($_POST['nopt'] as $nopt) {
            if ($nopt !== "") {
                $SurveyOptions->save(['subject_id' => $_POST['subject_id'], 'opt' => $nopt]);
            }
        }
    }
}

header("location:../index.php?meow=survey&surveys=surveys_my");

?>