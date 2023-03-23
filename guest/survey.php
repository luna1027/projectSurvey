<!-- Survey -->
<div class="content surveys-content">
    <?php
    // if (isset($_GET['error'])) {
    //     echo "<div class='error'>{$_GET['error']}</div>";
    //     // echo $_GET['error'];
    // } else {
    ?>
    <div class="surveys-header">
        <!-- <h2>Survey</h2> -->
        <?php
        if (isset($_GET['surveys'])) {
            switch ($_GET['surveys']) {
                case 'surveys_my':
                    echo "<h2>My Surveys</h2>";
                    break;
                case 'surveys_add':
                    echo "<h2>Add Surveys</h2>";
                    break;
                case 'survey_vote':
                    echo "<h2>Vote</h2>";
                    break;
                case 'surveys_edit':
                    echo "<h2>Edit Survey</h2>";
                    break;
                case 'surveys_voted':
                    echo "<h2>Voted</h2>";
                    break;
                case 'surveys_unvoted':
                    echo "<h2>Unvoted</h2>";
                    break;
                case 'survey_result':
                    echo "<h2>Result</h2>";
                    break;

                default:
                    echo "<h2>Surveys</h2>";
                    break;
            }
        } else {
            echo "<h2>Survey</h2>";
        }
        ?>
        <ul class="surveys-nav">
            <?php
            if (isset($_SESSION['login'])) {
                $bolder = 'style="font-weight:bolder; font-size: 1.25rem;"';
                $_GET['surveys'] = $_GET['surveys'] ?? 'ALL';
            ?>
                <li><a href="?meow=survey" <?= $_GET['surveys'] == 'ALL' ? $bolder : '' ?>>ALL</a></li>
                <li><a href="?meow=survey&surveys=surveys_voted" <?= $_GET['surveys'] == 'surveys_voted' ? $bolder : '' ?>>Voted</a></li>
                <li><a href="?meow=survey&surveys=surveys_unvoted" <?= $_GET['surveys'] == 'surveys_unvoted' ? $bolder : '' ?>>Unvoted</a></li>
                <li><a href="?meow=survey&surveys=surveys_my" <?= $_GET['surveys'] == 'surveys_my' ? $bolder : '' ?>>My Surveys</a></li>
                <li><a href="?meow=survey&surveys=surveys_add" <?= $_GET['surveys'] == 'surveys_add' ? $bolder : '' ?>>Add Surveys</a></li>
            <?php
            }
            ?>
        </ul>
    </div>
    <div class="surveys-main">
        <?php

        $meow_surveys = $_GET['surveys'] ?? '';
        $surveys_files = "./member/" . $meow_surveys . ".php";
        // echo $surveys_files;
        if (file_exists($surveys_files)) {
            include_once "$surveys_files";
        } else {

            include_once "./guest/surveys_main.php";
        }
        ?>
    </div>
    <?php
    // }
    ?>
</div>