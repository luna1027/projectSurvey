<!-- Vote -->
<?php
if (!isset($_SESSION['login'])) {
    header("location:./index.php?meow=survey");
} else {
    $subject = find('survey_subject', ['id' => $_GET['subject_id']]);
    // prr($subject);
    $options = all('survey_options', ['subject_id' => $_GET['subject_id']]);
    // prr($options);
?>
    <form class="surveys-form" action="./api/survey_vote.php" method="POST">
        <ul class="surveys-add-top vote">
            <li><?= $subject['subject'] ?></li>
        </ul>
        <ul class="vote-options">
            <?php
            foreach ($options as $option) {
            ?>
                <li class="vote-option">
                    <input type="radio" name="id" value="<?= $option['id'] ?>"><?= $option['opt']; ?>
                </li>
            <?php
            }
            ?>
        </ul>
        <div class="surveys-form-footer">
            <input type="hidden" name="user_id" value="<?= $_SESSION['login']['id']; ?>">
            <input class="" type="submit" value="Submit">
        </div>
    </form>
<?php
}
?>