<!-- Voted -->
<!-- Surveys Main -->
<div class="surveys-main-body">
    <div class="surveys-main-body-left">
        <!-- <div class="surveys-main-body-hot">

        </div> -->
        <div class="surveys-main-body-lists">
            <?php
            $userVoted = all('survey_users', ['user_id' => $_SESSION['login']['id']]);
            // prr($userVoted);
            if (!$userVoted) {
            ?>
                <div class="yet">Haven't voted yet</div>
                    <?php
                } else {

                    foreach ($userVoted as $key => $value) {
                        $voted_id[] = $value['subject_id'];
                    }
                    // prr($voted_id);
                    // $subjects = all('survey_subject');
                    $subjects = free("SELECT * FROM `survey_subject` ORDER BY `top` DESC , `total` DESC "); // HOT
                    // SELECT * FROM `survey_subject` ORDER BY `top` DESC , `start_time` DESC; // TIME
                    // startTime < NOW => Print
                    // prr($subjects);
                    foreach ($subjects as $subject) {
                        if (in_array($subject['id'], $voted_id)) {
                    ?>
                            <div class="surveys-main-body-list">
                                <p class="surveys-main-body-list-top"><?= $subject['top'] == 1 ? 'TOP' : '' ?></p>
                                <div class="surveys-main-body-list-img"><img src="./thumbnail/paw-solid.svg" alt=""></div> <!-- 縮圖 -->
                                <h4 class="surveys-main-body-list-subject"><?= $subject['subject']; ?></h4>
                                <p class="surveys-main-body-list-total"><?= $subject['total'] !== 0 ? $subject['total'] . '/' : ''; ?></p>
                                <p class="surveys-main-body-list-time">
                                    <!-- Reciprocal -->
                                    <?= $subject['end_time'] > date("Y-m-d G:i:s") ? $subject['start_time'] : 'END'; ?>
                                </p>
                                <div class="surveys-main-body-list-btns">
                                    <a class="surveys-main-body-list-btns-result" href="?meow=survey&surveys=survey_result&subject_id=<?= $subject['id']; ?>">
                                        <img class="result-img" src="./thumbnail/results-icon.png" alt="">
                                    </a>
                                </div>
                            </div>
                <?php
                        }
                    }
                }
                ?>
                </div>
        </div>
        <div class="surveys-main-body-right">

        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script>
        // $(".result-img").hover(function(e) {
        //     console.log($(this).attr("src",'./thumbnail/results-icon_hover.png'));
        //     // $(this).src().text("./thumbnail/results-icon_hover.png");
        // })

        $(".result-img").mouseover(function() {
            // console.log($(this).attr("src",'./thumbnail/results-icon_hover.png'));
            $(this).attr("src", './thumbnail/results-icon_hover.png');
        })

        $(".result-img").mouseleave(function() {
            // console.log($(this).attr("src",'./thumbnail/results-icon_hover.png'));
            $(this).attr("src", './thumbnail/results-icon.png');
        })
    </script>