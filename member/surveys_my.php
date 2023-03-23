<!-- My Surveys -->
<!-- Surveys Main -->
<div class="surveys-main-body">
    <div class="surveys-main-body-left">
        <?php
        if (!isset($_SESSION['login'])) {
            header("location:./index.php?meow=survey");
        } else {
        ?>
            <div class="surveys-main-body-lists">
                <?php
                // $subjects = all('survey_subject');
                $subjects = free("SELECT * FROM `survey_subject` WHERE `user_id` = {$_SESSION['login']['id']} ORDER BY `start_time` DESC"); // HOT
                // SELECT * FROM `survey_subject` ORDER BY `top` DESC , `start_time` DESC; // TIME
                // startTime < NOW => Print
                // prr($subjects);
                foreach ($subjects as $subject) {

                ?>
                    <div class="surveys-main-body-list">
                        <p class="surveys-main-body-list-top"><?= $subject['top'] == 1 ? 'TOP' : '' ?><?= $subject['top'] == 0 && $subject['total'] >= 30 ? 'HOT' : ''; ?></p>
                        <div class="surveys-main-body-list-img"></div> <!-- 縮圖 -->
                        <h4 class="surveys-main-body-list-subject"><?= $subject['subject']; ?></h4>
                        <p class="surveys-main-body-list-total"><?= $subject['total'] !== 0 ? $subject['total'] . '/' : ''; ?></p>
                        <p class="surveys-main-body-list-time">
                            <!-- Reciprocal -->
                            <?= $subject['end_time'] > date("Y-m-d G:i:s") ? $subject['start_time'] : 'END'; ?>
                        </p>
                        <div class="surveys-main-body-list-btns">
                            <!-- <a class="surveys-main-body-list-btns-result" href="?meow=survey&surveys=survey_vote&subject_id=<?= $subject['id']; ?>">
                                Result
                            </a> -->
                            <a class="surveys-main-body-list-btns-edit" href="?meow=survey&surveys=surveys_edit&subject_id=<?= $subject['id']; ?>">
                                <img class="edit-img" src="./thumbnail/pen-to-square-solid.png" alt="">
                            </a>
                            <a href="./api/surveys_del.php?&subject_id=<?= $subject['id']; ?>">
                                <img class="del-img" src="./thumbnail/delete-left-solid.png" alt="">

                            </a>
                        </div>
                    </div>
                <?php
                }
                ?>
            </div>
        <?php
        }
        ?>
    </div>
    <div class="surveys-main-body-right">

    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script>
    $(".edit-img").mouseover(function() {
        // console.log($(this).attr("src",'./thumbnail/results-icon_hover.png'));
        $(this).attr("src", './thumbnail/pen-to-square-solid_hover.png');
    })

    $(".edit-img").mouseleave(function() {
        // console.log($(this).attr("src",'./thumbnail/results-icon_hover.png'));
        $(this).attr("src", './thumbnail/pen-to-square-solid.png');
    })

    $(".del-img").mouseover(function() {
        // console.log($(this).attr("src",'./thumbnail/results-icon_hover.png'));
        $(this).attr("src", './thumbnail/delete-left-solid_hover.png');
    })

    $(".del-img").mouseleave(function() {
        // console.log($(this).attr("src",'./thumbnail/results-icon_hover.png'));
        $(this).attr("src", './thumbnail/delete-left-solid.png');
    })
</script>